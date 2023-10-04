import path from "path";
// import fs from "fs";
import cluster from "cluster";
import os from "os";
import express from "express";
// import multer from "multer";
import sequelize from "./utilities/database.js";
import helmet from "helmet";
import compression from "compression";
import cors from "cors";

//All error controllers imported here
import { corsError } from "./middleware/error-handlers/cors-error.js";
import { centralError } from "./middleware/error-handlers/central-errror.js";
//All routes imported here
import admin_routes from "./routes/admin_routes.js";
const cpu = os.cpus().length;
const port = process.env.PORT || 3300;

const app = express();

//Handle cors error
app.use(corsError);
app.use(cors());
app.options("*", cors());
app.use(function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Methods", "GET,PUT,POST,DELETE");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, X-Callback-Type, Content-Type, Accept"
  );
  res.header("Cache-Control", "no-cache");
  if ("OPTIONS" == req.method) {
    res.send(200);
  } else {
    next();
  }
});

if (cluster.isMaster) {
  console.log(`Master  ${process.pid} is running`);
  for (let i = 0; i < cpu; i++) {
    cluster.fork();
  }
  console.log(cpu);
  cluster.on("exit", (worker, code, signal) => {
    console.log(`worker ${worker.process.pid} died`);
  });
} else {
  app.use(express.urlencoded({ extended: false }));
  app.use(express.json());

  app.use("/admin", admin_routes);
  app.use(helmet());
  app.use(compression());

  //Central error handler here
  app.use(centralError);

  // Sync with database
  sequelize
    .sync()
    .then(() => {
      app.listen(port);
      console.log(`✔️  Server listening on port: ${port} ✔️ `);
    })
    .catch((err) => {
      console.log(err);
    });
}
