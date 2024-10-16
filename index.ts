import express from "express";
import cors from "cors";
import {createerror, createmaprf, updateurlrecord} from "./db/Create";
import {fetchedUrls, fetchedUrlsRe} from "./db/Fetch";
import bodyParser from "body-parser";

const app = express();
app.use(cors({origin:"*"}));
app.use(bodyParser.json());

app.post("/api/record", async (req, res) => {
    const data = req.body;
    console.log(data);
    console.log(data);
    const lastdata = await createmaprf(data);
    if (lastdata) {
        res.send({ status:true});
    } else {
        res.sendStatus(403);
    }
});

app.post("/api/error", async (req, res) => {
    const data = req.body;

    console.log(data);
    console.log(data);
    const lastdata = await createerror(data);
    if (lastdata) {
        res.send({ status:true});
    } else {
        res.sendStatus(403);
    }
});

app.post("/api/update", async (req, res) => {
    const data = req.body;

    console.log(data);
    console.log(data);
    const lastdata = await updateurlrecord(data.id);
    if (lastdata) {
        res.send({ status:true});
    } else {
        res.sendStatus(403);
    }
});

app.get("/api/geturl", async (req, res) => {
    const lastdata = await fetchedUrls();
    if (lastdata) {
        res.send({data:lastdata, status:true});
    } else {
        res.sendStatus(403);
    }
});


app.get("/api/geturlre", async (req, res) => {
    const lastdata = await fetchedUrlsRe();
    if (lastdata) {
        res.send({data:lastdata, status:true});
    } else {
        res.sendStatus(403);
    }
});



app.listen(3005, () => {
    console.log("app is running in port num ", 3005);
});
