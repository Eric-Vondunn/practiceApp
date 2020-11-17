const express = require("express");
const app = express();

app.get("/", function (req, res) {
  var sql = require("mssql");

  // config for your database
  var config = {
    user: "",
    password: "Milk40!!",
    server: "localhost3000",
    database: "bank_app_db",
  };

  // connect to your database
  sql.connect(config, function (err) {
    if (err) console.log(err);

    // create Request object
    var request = new sql.Request();

    // query to the database and get the records
    request.query("select * from transaction_data", function (err, recordset) {
      if (err) console.log(err);

      // send records as a response
      res.send(recordset);
    });
  });
});

var server = app.listen(5000, function () {
  console.log("Server is running..");
});
