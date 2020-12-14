Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'

  # root '/grahiql'

  post '/graphql', to: 'graphql#execute'
end
