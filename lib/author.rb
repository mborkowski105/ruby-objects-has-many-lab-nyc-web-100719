require 'pry'

class Author
  attr_reader :name
  
  def initialize(name)
    @name = name 
  end
  
  def add_post(post)
    post.author = self
  end
  
  def posts
    Posts.all.select do |post|
      post.author 
    end
  end
  
  def add_post_by_title(name)
    post = Post.new(name)
    self.add_post(post)
  end
  
  def self.post_count 
    return Post.all.count
  end
end