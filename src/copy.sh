#!/usr/bin/expect -f

set password "1234"

spawn ssh hvayon@10.10.0.2 mkdir -p /usr/local/bin
expect "password:"
send "$password\r"
expect eof

spawn scp src/cat/s21_cat src/grep/s21_grep hvayon@10.10.0.2:/usr/local/bin
expect "password:"
send "$password\r"
expect eof 

spawn ssh hvayon@10.10.0.2 ls -lah /usr/local/bin
expect "password:"
send "$password\r"
expect eof 

