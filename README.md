# PetTown Backend

## Description

This is the backend for the PetTown app.  In here you will find the models and controllers for the frontend.

## Installation Instructions

Fork and clone this repository and then run bundle install to install all of the gems.  Then run bundle exec rake db:migrate to create the migrations.  Finally run bundle exec rake db:seed to plant seed data.  To start the server, run bundle exec rake server.

## Architecture and Models

There are two models.  They are comment and pet.  A pet has many comments and a comment belongs to one pet.  In the ApplicationController you will find a list of routues for CRUD requests.

## Link to Front End

https://github.com/wowjimmyparrish/my_app_frontend_phase_3.git

