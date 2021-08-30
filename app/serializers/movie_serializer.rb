class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :movie_overview, :poster_url

  has_many :users, throught: :favorites 
  has_many :favorites, through: :favorites
end
