const db = require("../data/config");

//Get OR Find Request

function find() {
  return db("schemes");
}

//Get OR Find Request By ID

function findById(id) {
  return db("schemes").where({ id }).first();
}

//Get Steps Or findSteps By Id

function findSteps(id) {
  return db("schemes")
    .join("steps")
    .select(
      "schemes.id as schemesId",
      "schemes.schemes_name",
      "steps.step_number",
      "steps.steps_number",
      "steps.instructions"
    )
    .where({ schemesId: id });
}

//Add(scheme)

function add(scheme) {
  return db("schemes").insert(scheme);
}

//Update(scheme)

function update(changes, id) {
  console.log("update");
  return db("schemes").where({ id }).update(changes);
}

//Delete (scheme)

function remove(id) {
  return db("schemes").where("id", id).del();
}

module.exports = {
  find,
  findById,
  findSteps,
  add,
  remove,
};
