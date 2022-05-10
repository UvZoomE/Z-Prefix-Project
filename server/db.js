const Pool = require("pg").Pool;

const pool = new Pool({
  host: "localhost",
  user: "postgres",
  password: "docker",
  port: 5432,
  database: "blog"
});

module.exports = pool;
