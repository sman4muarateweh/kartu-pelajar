#![feature(proc_macro_hygiene, decl_macro)]
#[macro_use] extern crate rocket;

use rocket::{Request, Response};
use rocket::http::Status;
use rocket::response::Redirect;
use rocket::State;
use rocket_contrib::templates::Template;
use rocket_contrib::json::Json;
use std::sync::Arc;
use std::sync::Mutex;

// Define a struct for the database or session management UwU
struct Database;

impl Database {
    // Fetch user setup from the database >_<
    fn fetch_user_setup(&self, user_id: i32) -> i32 {
        // Mocked database query, replace with actual database interaction
        50 // Example value
    }

    // Update user setup in the database XD
    fn update_user_setup(&self, user_id: i32, setup: i32) {
        // Mocked database update, replace with actual database interaction
        println!("Updated user {} with setup {}", user_id, setup);
    }
}

// Define a struct for user session state >_<
// Holds session data like username and user_id
struct UserSession {
    username: Option<String>,
    user_id: Option<i32>,
}

// Route handler for the index page OwO
#[get("/")]
fn index(session: State<UserSession>, db: State<Database>) -> Template {
    // Check if user is logged in by verifying session >_<
    if session.username.is_none() {
        // Redirect to login page if not logged in XD
        return Template::render("redirect", json!({ "url": "/login" }));
    }

    // Fetch user setup from database UwU
    let user_id = session.user_id.unwrap();
    let a_setup = db.fetch_user_setup(user_id);

    // Check if account setup is incomplete OoO
    if a_setup != 100 {
        // Render page with account setup requirement T_<
        return Template::render("index", json!({ "requires_setup": true }));
    }

    // Update user setup if needed XD
    if a_setup == 100 {
        db.update_user_setup(user_id, a_setup);
    }

    // Render main page content if setup is complete OwO
    Template::render("index", json!({ "requires_setup": false }))
}

// Route handler for the logout page T_<
// Clears session data and redirects to the login page
#[get("/logout")]
fn logout() -> Redirect {
    // Redirect to the login page >_<
    Redirect::to("/login")
}

// Main function to launch the Rocket server UwU
fn main() {
    rocket::ignite()
        .manage(UserSession {
            username: None,
            user_id: None,
        })
        .manage(Database)
        .mount("/", routes![index, logout])
        .attach(Template::fairing())
        .launch(); // Start the Rocket server XD
}
