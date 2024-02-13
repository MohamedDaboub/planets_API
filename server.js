const express = require('express');
const sqlite3 = require('sqlite3');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
const port = 3001;

app.use(bodyParser.json());
app.use(cors());


const db = new sqlite3.Database('./database/planets.db', (err) => {
  if (err) {
    console.error('Error connecting to the database:', err.message);
  } else {
    console.log('Connected to the database');
  }
});

app.get('/', (req, res) => {
    res.redirect('/planets');
});

app.get('/planets', (req, res) => {
    db.all('SELECT * FROM planets', (err, rows) => {
        if (err) {
            console.error('Error fetching planets:', err.message);
            res.status(500).json({ error: 'Internal server error' });
            return;
        }
        res.json(rows); // Return the list of planets as JSON response
    }
    );
});
// Start the server
app.listen(port, () => {
  console.log(`Server is running on port http://localhost:${port}`);
});
