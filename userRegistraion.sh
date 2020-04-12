#!/bin/bash

shopt -s extglob


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

function verifyEmail() {
	read -p "Enter Email Address:" emailAdd
		emailPattern=^"[A-Za-z0-9]{4,}([+|_|-])?([A-Za-z0-9])?@[a-z]{1,10}.[a-z]{3}.([a-z]{2})?$"
		if [[ $emailAdd =~ $emailPattern ]]
		then
			echo"Email is valid"
		else
			echo "Please enter valid email id"
		fi
}

read -p "Enter first name:" name
verifyInfo $name
read -p "Enter last name:" lastName
verifyInfo $lastName
verifyEmail

