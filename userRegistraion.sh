#!/bin/bash

shopt -s extglob

function verifyEmail() {
	read -p "Enter Email Address:" emailAdd
		emailPattern="^[A-Za-z0-9]{4,}([+|_|-])?([A-Za-z0-9])?@[a-z]{5}.[a-z]{3}.([a-z]{2})?$"
		if [[ $emailAdd =~ $emailPattern ]]
		then
			echo"Email is valid"
		else
			echo "Please enter valid email id"
		fi
}

function verifyInfo() {
	info=$1
	pattern="^[A-Z][a-z]{3,}$"
		if [[ $info =~ $pattern ]]
		then
			echo "Name is in valid format"
		else
			echo "Please enter valid name"
		fi
}

function verifyMobileNo() {
	read -p "Enter your mobile number:" mobileNumber
	numberPattern="^[0-9]{2}[ ][0-9]{10}$"
		if [[ $mobileNumber =~ $numberPattern ]]
		then
			echo "Mobile no is valid"
		else
			echo "Please enter valid mobile number"
		fi
}
function verifyPassword() {

read -p "Enter your password:" password
	passPattern="(?=.*[A-Z])(?=.*\d)(?=.*[#$^+=!*()@%&])[a-z].{8,}$"
		if [[ $password =~ $passPattern ]]
		then
			echo "Password is valid"
		else
			echo "please provide valid passoword"
		fi

}

read -p "Enter first name:" name
verifyInfo $name
read -p "Enter last name:" lastName
verifyInfo $lastName
verifyEmail
verifyMobileNo
verifyPassword

