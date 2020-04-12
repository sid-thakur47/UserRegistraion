#!/bin/bash

shopt -s extglob

function verifyInfo() {
	info=$1
	pattern="^[A-Z][a-z]{3,}$"
		if [[ $info =~ $pattern ]]
		then
			echo "Name is valid"
		else
			echo "Please enter valid name"
		fi
}

read -p "Enter first name:" name
verifyInfo $name
read -p "Enter last name:" lastName
verifyInfo $lastName