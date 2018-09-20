# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180710054055) do

  create_table "centers", force: :cascade do |t|
    t.string   "jigu"
    t.string   "code"
    t.string   "event"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "infos", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.integer  "section"
    t.integer  "hit"
    t.string   "event"
    t.string   "region1"
    t.string   "region2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jigus", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "junguks", force: :cascade do |t|
    t.string   "region1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "refcenters", force: :cascade do |t|
    t.string   "club_n"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "smalljs", force: :cascade do |t|
    t.string   "name"
    t.integer  "junguk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
