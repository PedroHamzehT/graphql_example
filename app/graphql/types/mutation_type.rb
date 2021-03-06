module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :create_movie, mutation: Mutations::CreateMovie
  end
end
