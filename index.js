import express from "express";
import bodyParser from "body-parser";
import pg from "pg";

const app = express();
const port = 3000;

const db = new pg.Client({
  user: "postgres",
  host: "localhost",
  database: "bookNotes",
  password: "sanjay584",
  port: 5432,
});
db.connect();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static("static"));

var data = [];

const addData = async () => {
    data = [];
    const result = await db.query("SELECT *, TO_CHAR(date, 'YYYY-MM-DD') AS date_only FROM books ORDER BY rating ASC, id ASC");
    result.rows.forEach((item) => {
        data.push(item);
    });
}

const findData = async (id) => {
    const result = await db.query(`SELECT *, TO_CHAR(date, 'YYYY-MM-DD') AS date_only FROM books WHERE id=$1 ORDER BY rating ASC, id ASC`, [id]);
    const foundData = result.rows[0];
    return foundData;
}

app.get("/", async (req, res) => {
    await addData();
    res.render("index.ejs", {data: data});
});

app.get("/book", async (req, res) => {
    const id = req.query.id;
    const foundData = await findData(id);
    res.render("book.ejs", {data: foundData});
});

app.listen(port, () => {
    console.log(`Server listening to port ${port}`);
})