# Marley Spoon Recipes Graphql API
[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop-hq/rubocop) [![Build Status](https://travis-ci.com/aranhaqg/marley-spoon-recipes.svg?branch=main)](https://travis-ci.com/aranhaqg/marley-spoon-recipes) [![SourceLevel](https://app.sourcelevel.io/github/aranhaqg/marley-spoon-recipes.svg)](https://app.sourcelevel.io/github/aranhaqg/marley-spoon-recipes)

This is a GraphQL API that retrieves Marley Spoon Recipes from Contentful.

This app uses:

* Ruby version 2.5.7
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
