#!/bin/bash

shopt -s extglob

read -p "Enter first name:" name
pattern="^[A-Z][a-z]{3,}$"
if [[ $name =~ $pattern ]]
then
	echo "Name is valid "
else
	echo "Please enter valid name"
fi
