#!/bin/bash

# Function to generate a random password
generate_password() {
    local length=$1
    tr -dc 'A-Za-z0-9_@#$%&*' < /dev/urandom | head -c "$length"
    echo
}

# Set the desired password length
PASSWORD_LENGTH=12
echo "Generated Password: $(generate_password $PASSWORD_LENGTH)"
