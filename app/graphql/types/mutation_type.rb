Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createMovie, Types::MovieType do
    argument :title, !types.String
    argument :description, !types.String
    argument :rating, !types.String

    resolve -> (obj, args, ctx) {
      Movie.create(
        title: args[:title],
        description: args[:description],
        rating: args[:rating]
      )
    }
  end
end
