class Category
  include DataMapper::Resource

  property :id, Serial
  property :created_at, DateTime
  property :updated_at, DateTime
  property :name, String, length: 255
  property :slug, Slug
  property :year, Integer

  has n, :posts

  def to_s
    name
  end
end