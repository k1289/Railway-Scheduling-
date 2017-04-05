class Comment < Neo4j::Rails::Model
  property :author, :type => String
  property :email, :type => String
  property :content, :type => String

end
