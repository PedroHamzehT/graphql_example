class Mutations::CreateMovie < Mutations::BaseMutation
  argument :user_id, ID, required: true
  argument :title, String, required: true
  argument :year, Integer, required: true
  argument :genre, String, required: true

  field :movie, Types::MovieType
  field :errors, [String], null: false

  def resolve(user_id:, title:, year:, genre:)
    movie = Movie.new(user_id:, title:, year:, genre:)

    if movie.save
      { movie:, errors: [] }
    else
      { movie: nil, errors: movie.errors.full_messages }
    end
  end
end
