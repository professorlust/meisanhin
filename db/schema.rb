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

ActiveRecord::Schema.define(version: 20180204121609) do

  create_table "hokkaido_reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "content"
    t.integer  "user_id"
    t.integer  "hokkaido_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "evaluation"
    t.index ["hokkaido_id"], name: "index_hokkaido_reviews_on_hokkaido_id", using: :btree
    t.index ["user_id"], name: "index_hokkaido_reviews_on_user_id", using: :btree
  end

  create_table "hokkaidos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "content"
    t.string   "title"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kantou_reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "content"
    t.string   "evaluation"
    t.integer  "user_id"
    t.integer  "kantou_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kantou_id"], name: "index_kantou_reviews_on_kantou_id", using: :btree
    t.index ["user_id"], name: "index_kantou_reviews_on_user_id", using: :btree
  end

  create_table "kantous", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "content"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "koushinetsu_reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "content"
    t.string   "evaluation"
    t.integer  "user_id"
    t.integer  "koushinetsu_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["koushinetsu_id"], name: "index_koushinetsu_reviews_on_koushinetsu_id", using: :btree
    t.index ["user_id"], name: "index_koushinetsu_reviews_on_user_id", using: :btree
  end

  create_table "koushinetsus", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "content"
    t.string   "title"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "touhoku_reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "content"
    t.string   "evaluation"
    t.integer  "user_id"
    t.integer  "touhoku_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["touhoku_id"], name: "index_touhoku_reviews_on_touhoku_id", using: :btree
    t.index ["user_id"], name: "index_touhoku_reviews_on_user_id", using: :btree
  end

  create_table "touhokus", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "content"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "age"
    t.string   "introduction"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "hokkaido_reviews", "hokkaidos"
  add_foreign_key "hokkaido_reviews", "users"
  add_foreign_key "kantou_reviews", "kantous"
  add_foreign_key "kantou_reviews", "users"
  add_foreign_key "koushinetsu_reviews", "koushinetsus"
  add_foreign_key "koushinetsu_reviews", "users"
  add_foreign_key "touhoku_reviews", "touhokus"
  add_foreign_key "touhoku_reviews", "users"
end
