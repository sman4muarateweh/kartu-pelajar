<?php
error_reporting(E_ALL ^ E_NOTICE);
session_start();
if(isset($_SESSION['Username'])){
    header("location: home");
}
$getLang = trim(filter_var(htmlentities($_GET['lang']),FILTER_SANITIZE_STRING));
if (!empty($getLang)) {
$_SESSION['language'] = $getLang;
}
error_reporting(E_NOTICE ^ E_ALL);
if (is_file('home.php')){
    $path = "";
}elseif (is_file('../home.php')){
    $path =  "../";
}elseif (is_file('../../home.php')){
    $path =  "../../";
}
include_once $path."langs/set_lang.php";
?>
<html dir="<? echo lang('html_dir'); ?>">
<head>
    <title>kartu pelajar</title>
    <meta charset="UTF-8">
    <meta name="author" content="loliconazter">
    <?php include "includes/head_imports_main.php";?>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  	<title>SMAN 4 Muara Teweh kartu pelajar digital</title>
</head>
    <body>
<br>
        <div align="center" class="login_signup_box">
          <img src="imgs/badge/smafourmute.png" style="width: 48%;" />
        <h3 align="center"><? echo lang('welcome'); ?> </h3>
        <p align="center" style="color: #999; margin-bottom: 0%;"><? echo lang('hakei_main_string'); ?>.</p>
            <div>
                <div align="center" style="width: 100%;">
                    <br><h4><? echo lang('login_now'); ?></h4>
                    <p><input type="text" name="login_username" id="un" class="login_signup_textfield" placeholder="<? echo lang('email_or_username'); ?>"/></p>
                    <p><input type="password" name="login_password" id="pd" class="login_signup_textfield" placeholder="<? echo lang('password'); ?>"/></p>


                    <button type="submit" class="login_signup_btn1" id="loginFunCode"><? echo lang('login'); ?></button>
                    <p id="login_wait" style="margin: -2px;"></p>
                </div>
                <div style="width: 100%;text-align: center;">


                </div>
            </div>
        </div>
        <div style="background: #fff; border-radius: 3px; max-width: 800px; padding: 10px; margin:auto;margin-top: 15px;color: #7b7b7b;" align="center">
            <? echo lang('dont_have_an_account'); ?> <a href="signup" class="login_signup_btn1"><? echo lang('signup'); ?></a>.<hr style="margin: 8px;">
            <p><? echo lang('lang_a_note'); ?></p>
            &bull;<a href="?lang=Indonesian"><? echo lang('id_login'); ?> </a>&bull;<a href="?lang=English"><? echo lang('en_login'); ?> (beta)</a>&bull;<a href="?lang=Japanese"><? echo lang('jp_login'); ?> (alpha)</a>&bull;

        </div>
<div>
  <br>
</div>
<script type="text/javascript">
function loginUser(){
var username = document.getElementById("un").value;
var password = document.getElementById("pd").value;
$.ajax({
type:'POST',
url:'includes/login_signup_codes.php',
data:{'req':'login_code','un':username,'pd':password},
beforeSend:function(){
$('.login_signup_btn1').hide();
$('#login_wait').html("<? echo lang('loading'); ?>...");
},
success:function(data){
$('#login_wait').html(data);
if (data == "Welcome...") {
    $('#login_wait').html("<p class='alertGreen'><? echo lang('welcome'); ?>..</p>");
    setTimeout(' window.location.href = "home"; ',2000);
}else{
    $('.login_signup_btn1').show();
}
},
error:function(err){
alert(err);
}
});
}
$('#loginFunCode').click(function(){
loginUser();
});
$(".login_signup_textfield").keypress( function (e) {
    if (e.keyCode == 13) {
        loginUser();
    }
});
</script>
</body>
<?php include("includes/footer.php");?>
</html>
