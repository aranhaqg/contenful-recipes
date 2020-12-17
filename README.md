# Marley Spoon Recipes Graphql API
[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop-hq/rubocop) 
[![Build Status](https://travis-ci.com/aranhaqg/marley-spoon-recipes.svg?branch=main)](https://travis-ci.com/aranhaqg/marley-spoon-recipes) 
[![SourceLevel](https://app.sourcelevel.io/github/aranhaqg/-/marley-spoon-recipes.svg)](https://app.sourcelevel.io/github/aranhaqg/-/marley-spoon-recipes) 
[![Maintainability](https://api.codeclimate.com/v1/badges/0f46ce2dd832c2015eb5/maintainability)](https://codeclimate.com/github/aranhaqg/marley-spoon-recipes/maintainability)

This is a GraphQL API that retrieves Marley Spoon Recipes from Contentful.

This app uses:

* Ruby version 2.5.7
* Rails 6.0.3
* GraphQL 1.11.6
* Contenful Model 1.3.0
* Docker

For more details check [Gemfile](Gemfile).

This app is watched by SourceLevel, Code Climate and Travis.

## Contentful Models
### Recipe

The [Recipe](/app/models/recipe.rb) contentful model is composed by the following properties:

* id: Integer
* title: String
* photo_url: String
* description: String
* chef: Chef contentful model
* tags: array of Tag contentful model

### Chef
The [Chef](/app/models/chef.rb) contentful model is composed by the following properties:

* recipes: array of Recipe contentful model
* name: String

### Tag
The [Tag](/app/models/tag.rb) contentful model is composed by the following properties:

* recipes: array of Recipe contentful model
* name: String

## How to tun the app
To run this project you need to have Docker and Docker Compose installed. After that just run on your terminal:

```
docker-compose up
```
And then visit localhost:300/graphiql

## Running the tests

```
docker-compose run web bundle exec rspec
```
## Future Improvements

* Add pagination do the list of recipes.
* Add a Web UI to the app.
* Improve security with Rack Attack to protect from bad clients. Can be used to prevent brute-force passwords attacks, scrapers and throttling requests from IP addresses for example.
* Scan code to look for security vulnerabilities with Brakeman. 
