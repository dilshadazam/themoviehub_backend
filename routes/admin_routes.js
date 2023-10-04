import express from "express";
import { addmovie } from "../controllers/public/post/addmoviedata.js";
import { fetchMovielist } from "../controllers/public/get/fetchmovielist.js";
const router = express.Router();
router.post("/addmovie", addmovie);
router.get("/movielist", fetchMovielist);
export default router;
