# frozen_string_literal: true

require 'rails_helper'

describe 'list recipes GraphQL query' do
  subject(:recipes_query_response) do
    VCR.use_cassette('list-recipes') do
      MarleySpoonRecipesSchema.execute(
        query,
        variables: nil,
        context: {}
      )
    end
  end

  let(:response) { recipes_query_response.dig('data', 'listRecipes') }
  let(:expected_recipe_ids) do
    %w[4dT8tcb6ukGSIg2YyuGEOm 5jy9hcMeEgQ4maKGqIOYW6 2E8bc3VcJmA8OgmQsageas 437eO3ORCME46i02SeCW46]
  end
  let(:expected_chef_names) do
    [nil, nil, 'Mark Zucchiniberg ', 'Jony Chives']
  end
  let(:received_recipe_ids) { response.map { |node| node['id'] } }
  let(:received_chef_names) { response.map { |node| node['chef']&.dig('name') } }
  let(:query) do
    <<-GRAPHQL
    {
      listRecipes {
        id
        title
        photo
        description
        chef { name }
        tags { name }
      }
    }
    GRAPHQL
  end

  it { expect(received_recipe_ids).to eq expected_recipe_ids }
  it { expect(received_chef_names).to eq expected_chef_names }
end
