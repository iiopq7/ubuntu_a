const express = require('express')
const morgan = require('morgan')
const fs = require('fs')
const path = require('path')
const mongoClient = require('mongodb').MongoClient
const app = express()
app.set('port', process.env.PORT || 3000)
app.use(morgan('dev'))

var db;
var databaseUrl = 'mongodb+srv://admin:1234@cluster0.uuhh20y.mongodb.net'

app.get('/', (req, res) => {
  res.send('Web Server Started~!!')
});

app.get('/things', (req, res) => {
  mongoClient.connect(databaseUrl, function(err, database){
    if(err != null){
      res.json({'count':0})
    }else{
      db = database.db('test')
      db.collection('things').find({}).toArray(function(err, result){
        if(err) throw err
        console.log('result : ')
        console.log(result)
        res.json(JSON.stringify(result))
      })
    }
  })
});

app.listen(app.get('port'), () =>{
  console.log('3000 Port : 서버 실행 중')
});
