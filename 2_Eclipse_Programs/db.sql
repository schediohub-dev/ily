create database if not exists test;
use test;
create table stu(id int, name varchar(50));
create table users(name varchar(50), password varchar(50), email varchar(50), country varchar(50));
create table student(id int primary key, name varchar(50), phone varchar(15));
create table members(username varchar(50) primary key, password varchar(50));
create table emp(empid int, empname varchar(50), dept varchar(50), mobile varchar(15), salary double);
