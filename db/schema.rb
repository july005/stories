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

ActiveRecord::Schema.define(version: 20151231154555) do

  create_table "stories", force: :cascade do |t|
    t.string   "char_name"
    t.integer  "char_age"
    t.boolean  "char_glasses"
    t.string   "char_haircolor"
    t.string   "char_friend_name"
    t.text     "char_friend_why"
    t.string   "char_activity"
    t.text     "char_activity_whylove"
    t.boolean  "char_activity_everdifficult"
    t.text     "char_activity_whydifficult"
    t.string   "char_feelings"
    t.string   "char_action_from_feeling"
    t.string   "char_result_from_action"
    t.string   "char_learn_from_action"
    t.string   "char_action_from_learn"
    t.string   "story_title"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
