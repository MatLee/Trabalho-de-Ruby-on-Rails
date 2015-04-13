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

ActiveRecord::Schema.define(version: 20150409231550) do

  create_table "alunos", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "telefone"
    t.float    "renda"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplinas", force: :cascade do |t|
    t.string   "nome"
    t.integer  "periodo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nota", force: :cascade do |t|
    t.integer  "aluno_id"
    t.integer  "disciplina_id"
    t.float    "p1"
    t.float    "p2"
    t.float    "p3"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "nota", ["aluno_id"], name: "index_nota_on_aluno_id"
  add_index "nota", ["disciplina_id"], name: "index_nota_on_disciplina_id"

  create_table "notas", force: :cascade do |t|
    t.integer  "aluno_id"
    t.integer  "disciplina_id"
    t.float    "p1"
    t.float    "p2"
    t.float    "p3"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "notas", ["aluno_id"], name: "index_notas_on_aluno_id"
  add_index "notas", ["disciplina_id"], name: "index_notas_on_disciplina_id"

end
