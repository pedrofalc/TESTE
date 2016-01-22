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

ActiveRecord::Schema.define(version: 20160119015710) do

  create_table "alunos", force: :cascade do |t|
    t.string   "nome"
    t.string   "telefone"
    t.integer  "matricula"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "alunos_and_processos", force: :cascade do |t|
    t.integer "alunos_id"
    t.integer "processos_id"
  end

  add_index "alunos_and_processos", ["alunos_id"], name: "index_alunos_and_processos_on_alunos_id"
  add_index "alunos_and_processos", ["processos_id"], name: "index_alunos_and_processos_on_processos_id"

  create_table "processos", force: :cascade do |t|
    t.string   "nome"
    t.date     "inicio"
    t.date     "final"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "owner"
  end

  create_table "professors", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "professors", ["email"], name: "index_professors_on_email", unique: true
  add_index "professors", ["reset_password_token"], name: "index_professors_on_reset_password_token", unique: true

  create_table "professors_and_processos", force: :cascade do |t|
    t.integer "professors_id"
    t.integer "processos_id"
  end

  add_index "professors_and_processos", ["processos_id"], name: "index_professors_and_processos_on_processos_id"
  add_index "professors_and_processos", ["professors_id"], name: "index_professors_and_processos_on_professors_id"

end
