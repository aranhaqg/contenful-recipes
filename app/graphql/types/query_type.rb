module Types
  class QueryType < Types::BaseObject
    field :list_recipes, [Types::RecipeType], null: true, description: "List all recipes"

    field :recipe, Types::RecipeType, null: true, description: "Detail a recipe" do
      argument :id, String, required: true
    end

    def list_recipes()
      Recipe.all.load
    end

    def recipe(id:)
      Recipe.find(id)
    end
  end
end
