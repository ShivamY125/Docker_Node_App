const express = require("express");

const dotenv = require("dotenv");

const app = express();
dotenv.config();

app.use(express.json());
const PORT = process.env.PORT || 8090;


app.get("/", (req, res) => {
    res.json({ message: "We have mounted the voulme to running container" });
  });

app.listen(PORT, ()=> {
    console.log(`Server is listneing to port: ${PORT} `);
});
