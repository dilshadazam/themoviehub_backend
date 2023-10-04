import Movie from "../../../models/public/movie.js";
export const fetchMovielist = async (req, res, next) => {
  try {
    const data = await Movie.findAll({});
    if (data.length === 0) {
      const error = new Error(`Data not found!`);
      error.statusCode = 404;
      return next(error);
    }
    res.status(200).json({
      data,
    });
  } catch (err) {
    if (!err.statusCode) {
      err.statusCode = 500;
    }
    next(err);
  }
};
