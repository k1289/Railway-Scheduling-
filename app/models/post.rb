class Post < Neo4j::Rails::Model
  has_n(:comments).to(Comment)
  property :title, :type => String
  property :description, :type => String
  property :content, :type => String
  property :published_at, :type => Date
end
