# Marley Spoon Recipes Graphql API
[![Maintainability](https://api.codeclimate.com/v1/badges/0f46ce2dd832c2015eb5/maintainability)](https://codeclimate.com/github/aranhaqg/marley-spoon-recipes/maintainability) [![Build Status](https://travis-ci.com/aranhaqg/marley-spoon-recipes.svg?branch=main)](https://travis-ci.com/aranhaqg/marley-spoon-recipes)

This is a GraphQL API that retrieves Marley Spoon Recipes from Contentful.

This app uses:

* Ruby version 2.7.1
* Rails 6.0.3
* GraphQL 1.11.6
* Contenful Model 1.3.0

For more details check [Gemfile](Gemfile).

This app is watched by Code Climate and Travis.

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
