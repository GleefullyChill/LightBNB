const properties = require('./json/properties.json');
const users = require('./json/users.json');
const { Pool } = require('pg');

const pool = new Pool({
  user: 'officer',
  password: '',
  host: 'localhost',
  database: 'lightbnb'
});

/// Users

/**
 * Get a single user from the database given their email.
 * @param {String} email The email of the user.
 * @return {Promise<{}>} A promise to the user.
 */

const getUserWithEmail = (email) => {
  return pool
    .query(`
      SELECT *
      FROM users
      WHERE email = $1
      `, [email])
    .then((result) => result.rows[0])
    .catch((err) => err.message);
};
exports.getUserWithEmail = getUserWithEmail;

/**
 * Get a single user from the database given their id.
 * @param {string} id The id of the user.
 * @return {Promise<{}>} A promise to the user.
 */

const getUserWithId = (id) => {

  return pool
    .query(`
      SELECT *
      FROM users
      WHERE id = $1
      `, [id])
    .then((result) => result.rows[0])
    .catch((err) => err.message);
};
exports.getUserWithId = getUserWithId;


/**
 * Add a new user to the database.
 * @param {{name: string, password: string, email: string}} user
 * @return {Promise<{}>} A promise to the user.
 */

const addUser = (user) => {
  const name = user.name;
  const email = user.email;
  const password = user.password;
  return pool
    .query(`
      INSERT INTO users (name, email, password)
      VALUES ($1, $2, $3)
      RETURNING *
      `, [name, email, password])
    .then((result) => result.rows)
    .catch((err) => err.message);
};
exports.addUser = addUser;


/// Reservations

/**
 * Get all reservations for a single user.
 * @param {string} guest_id The id of the user.
 * @return {Promise<[{}]>} A promise to the reservations.
 */
const getAllReservations = function(guest_id, limit = 10) {
  
  return pool
    .query(`
      SELECT *
      FROM reservations
      WHERE guest_id = $1
      LIMIT $2
    `, [guest_id, limit])
    .then((result) => result.rows)
    .catch((err) => err.message);
}
exports.getAllReservations = getAllReservations;

/// Properties

/**
 * Get all properties.
 * @param {{}} options An object containing query options.
 * @param {*} limit The number of results to return.
 * @return {Promise<[{}]>}  A promise to the properties.
 */
const getAllProperties = (options, limit = 10) => {
  const queryParams = [];
  let queryString = `SELECT properties.*, AVG(rating) as average_rating, cost_per_night
  FROM properties
  JOIN property_reviews ON property_id = properties.id
  `;
  if (options.city) {
    queryParams.push(`%${options.city}%`);
    queryString += `WHERE city LIKE $${queryParams.length} `;
    if (options.minimum_price_per_night || options.maximum_price_per_night) {
      queryString += ` AND `;
    }
  }
  if (options.owner_id) {
    queryParams.push(options.owner_id);
    queryString += `WHERE owner_id = $${queryParams.length} `;
  }
  if (options.minimum_price_per_night) {
    if (!options.city || !options.owner_id) {
      queryString += `WHERE `;
    }
    queryParams.push(options.minimum_price_per_night * 100);
    queryString += `cost_per_night >= $${queryParams.length} `;
    if (options.maximum_price_per_night) {
      queryString += ` AND `;
    }
  }
  if (options.maximum_price_per_night) {
    if (!options.minimum_price_per_night || !options.city || !options.owner_id) {
      queryString += `WHERE `;
    }
    queryParams.push(options.maximum_price_per_night * 100);
    queryString += `cost_per_night <=  $${queryParams.length} `;
  }
  queryString += `
  GROUP BY properties.id
  `;
  if (options.minimum_rating) {
    queryParams.push(options.minimum_rating);
    queryString += `HAVING AVG(rating) >= $${queryParams.length} `;
  }
  queryParams.push(limit);
  queryString += `
  ORDER BY cost_per_night
  LIMIT $${queryParams.length};
  `;
  
  return pool
    .query(queryString, queryParams)
    .then((result) => {
      return result.rows})
    .catch((err) => err.message);
};
exports.getAllProperties = getAllProperties;


/**
 * Add a property to the database
 * @param {{}} property An object containing all of the property details.
 * @return {Promise<{}>} A promise to the property.
 */
const addProperty = function(property) {
  const owner_id = property.owner_id;
  const title = property.title;
  let description = property.description;
  if (!description) {
    description = '';
  }
  const thumbnail_photo_url = property.thumbnail_photo_url;
  const cover_photo_url = property.cover_photo_url;
  const street = property.street;
  const city = property.city;
  const province = property.province;
  const post_code = property.post_code;
  const country = property.country;
  const parking_spaces = Number(property.parking_spaces);
  const number_of_bathrooms = Number(property.number_of_bathrooms);
  const number_of_bedrooms= Number(property.number_of_bedrooms);
  const cost_per_night = Number(property.cost_per_night);

  return pool
    .query(`
      INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code)
      VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14)
      RETURNING *
      `, [owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code])
    .then((result) => {
      console.log(result.rows)
      return result.rows
      })
    .catch((err) => err.message);
}


exports.addProperty = addProperty;
