#![feature(proc_macro_hygiene, decl_macro)]
#[macro_use] extern crate rocket;
use rocket::{Request, Response};
use rocket::fairing::{AdHoc, Fairing};
use rocket::http::Status;
use rocket::response::Redirect;
use rocket::State;
use std::sync::atomic::{AtomicUsize, Ordering};
use std::sync::Arc;
struct Database;
impl Database {
    fn update_online_status(&self, myid: i32) {
        println!(": {}", myid);
    }
}

#[get("/")]
fn index() -> &'static str {
    ""
}
fn main() {
    rocket::ignite()
        .attach(AdHoc::on_response(|req, res| {
            println!("{:?}", req);
        }))
        .manage(Database)
        .mount("/", routes![index, logout])
        .launch();
}
