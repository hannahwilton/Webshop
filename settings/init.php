<?php
require "classes/classDB.php";

define("CONFIG_LIVE", "1"); // 0: Test enviroment || 1: Live enviroment

if(CONFIG_LIVE == 0){
    $DB_SERVER = "localhost";
    $DB_NAME = "books";
    $DB_USER = "root";
    $DB_PASS = "";
}else{
    $DB_SERVER = "mysql50.unoeuro.com";
    $DB_NAME = "hannahwilton_dk_db";
    $DB_USER = "hannahwilton_dk";
    $DB_PASS = "xga3hdwGkr2zAtD54FpR";
}

$db = new db($DB_SERVER, $DB_NAME, $DB_USER, $DB_PASS);