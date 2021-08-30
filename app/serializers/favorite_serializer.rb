class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :movie

  belongs_to :user
  belongs_to :movie
  
end
