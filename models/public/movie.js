import Sequelize from "sequelize";
import sequelize from "../../utilities/database.js";
const Movie = sequelize.define("movie", {
  id: {
    type: Sequelize.INTEGER,
    autoIncrement: true,
    allowNull: false,
    primaryKey: true,
  },
  moviename: {
    type: Sequelize.STRING,
    allowNull: true,
  },
  rating: {
    type: Sequelize.INTEGER,
    allowNull: true,
  },
  releasedate: {
    type: Sequelize.STRING,
    allowNull: true,
  },
});

export default Movie;
