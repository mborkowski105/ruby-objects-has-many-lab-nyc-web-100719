class Post
  attr_reader :title, :author
  
  @@all = []
  
  def initialize(title)
    @title = title
    @author = nil
    @@all << self
  end
  
  def self.all 
    return @@all
  end

  def author=(author)
    @author = author
  end
  
  def add_post(post)
    post.author = self
  end
  
  def author_name
    if (self.author)
      return self.author.name
    end 
  end
  
  def posts 
    Posts.all.select do |post|
      post.author
    end
  end
end