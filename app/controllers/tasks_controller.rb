class TasksController < ApplicationController
  def index
    @page = params[:page].to_i
    @tasks = ['Fold laundry', 'Sweep porch', 'Wash dishes', 'Mow lawn']
  end

  def new
  end

  def edit
  end
end

# A migration is a set of database instructions written in Ruby
# They "migrate" the db from 1 state to another, essentially, they describe the database changes.
# Instructions for moving "up" to a new state
# Instructions for moving "down" to a previous state
# BENEFITS
# Keep database schema with application code
# Executable and repeatable
# Allows sharing of schema changes
# Allows writing Ruby instead of SQL
# Able to access code in the Rails project
# Use the command line to generate migrations
  # rails generate migration MigrationName
# The migration code is a Ruby class with two methods: up and down
# Change method is a shorthand, contains the same code as the up method would, and Rails knows to do the opposite when it's migrating down
# Migration helper methods:
  # create_table
  # drop_table
  # rename_table
  # add_column
  # remove_column
  # rename_column

# An alternative way to generate a migration is to generate a model:
  # rails generate model ModelName columns
  # for example,
    # rails generate model Task name:string description:text position:integer completed:boolean

# Try out: rails generate migration DoNothingYet

# OTHER USEFUL MIGRATION COMMANDS

# Run Migrations
  # rails db:migrate:status
  # rails db:migrate VERION=0
  # rails db:migrate VERSION=20221231235959
