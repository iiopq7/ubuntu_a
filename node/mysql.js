var mysql = require('mysql')
const env = require("dotenv").config({ path : "../.env" })

var connection = mysql.createConnection({
	host : process.env.host,
	user : process.env.user,
	password : process.env.password,
	database : process.env.database
})

connection.connect(function(err) {
 if(!err) {
  console.log(process.env.host, "Database is connected...\n\n")
 } else {
   console.log("Error connecting database...\n\n")
 }
})
