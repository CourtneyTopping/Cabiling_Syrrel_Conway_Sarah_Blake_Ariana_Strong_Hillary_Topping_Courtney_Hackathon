const express = require('express');
const path = require('path'); //path lets us navigate the file system/folders
const hbs = require('hbs');

//require the sql connection file
const sql = require('./utils/sql');

//heroku assigns a port when it deploys via the process (environment variables - coming)
//locally this will run at port 3000, remotely it will run wherever heroku tells it to

const port = process.env.PORT || 3000;

const app = express();

//serve up static assets (js css etc.)
app.use(express.static('public'));

// tell express to use the handlbars engine to render data
app.set('view engine', 'hbs');

//tell express to use the views folder to find its templates
app.set('views', __dirname + '/views');


// //a forward slash is the home route (same as index.html)
// app.get('/', (req, res) => {
//   console.log('at the home route')
//   //res.sendFile(path.join(__dirname + '/views/index.html'));

//   res.render('home', {message: "hi there!", anothermessage: "this is easy!"});
//   //this builds localhost:3000/views/index.html
// })


app.get('/' , (req, res) => {
  //try to get data from the database
  sql.getConnection((err, connection) => {
    //handle errors first
    if (err) {
      //if we try to connect and it breaks, code will stop here
      return console.log(err.message);
    }

    //it works, go and get the data
    let query = `SELECT * FROM tbl_promo`;

    sql.query(query, (err, rows) => {
      //release the connection because we're done with it
      connection.release();

      if (err) {return console.log(err.message)}

      console.log(rows);

      res.render('home', rows[0])
    })
  })
})

app.listen(port, () => {
  console.log(`Server running at ${port}`);   
});
