var express = require('express');
var app = express();
var db = require('./db');

var UserController = require('./user/UserController');
app.use('/users', UserController);
app.get('/', function (req, res) {
  res.render('index', {});
});

module.exports = app;
