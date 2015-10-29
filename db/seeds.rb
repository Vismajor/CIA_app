# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Country.delete_all
Country.create!(name: 'Hungary', size: 35653, population: 9919128, language: 'Hungarian') 
Country.create!(name: 'United Kingdom', size: 93278, population: 63742977, language: 'English') 
Country.create!(name: 'Italy', size: 113521, population: 61680122, language: 'Italian') 

City.delete_all
City.create!(name: 'Budapest', population: 1978000) 