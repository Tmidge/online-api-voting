# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# create_table "candidates", force: :cascade do |t|
#   t.string   "name"
#   t.string   "party"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "voters", force: :cascade do |t|
#   t.string   "name"
#   t.string   "party"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "votes", force: :cascade do |t|
#   t.integer  "voter_id"
#   t.integer  "candidate_id"
#   t.datetime "created_at",   null: false
#   t.datetime "updated_at",   null: false
# end

Candidate.create(name:"Bob",party:"R")
Candidate.create(name:"Bill",party:"D")

Voter.create(name:"Jill",party:"R")
Voter.create(name:"Don",party:"D")

Vote.create(voter_id:1,candidate_id:1)
Vote.create(voter_id:2,candidate_id:2)
