import Movie from "../../../models/public/movie.js";
export const addmovie = async (req, res, next) => {
  const { moviename, rating, releasedate } = req.body;
  try {
    const data = await Movie.create({
      moviename,
      rating,
      releasedate,
    });
    res.status(201).json({
      message: `${moviename}, movie Added successful`,
    });
  } catch (err) {
    if (!err.statusCode) {
      err.statusCode = 500;
    }
    next(err);
  }
};
