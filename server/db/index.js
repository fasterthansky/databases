var mysql = require('mysql');

// Create a database connection and export it from this file.
// You will need to connect with the user "root", no password,
// and to the database "chat".

module.exports = {
  connection: mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'chat'
  })
};
// con.connect ((err) => {
//   if (err) {
//     throw err;
//   } else {
//     console.log('We are Connected');
//     con.query(sql, (err, result) => {
//       if (err) {
//         throw err;
//       } else {
//         console.log('Result: ' + result);
//       }
//     })
//   }
// });
