class Author 
  attr_accessor :title
  
  @@post_count = 0
  
   def initialize(title)
    @title = title
    @posts = []
  end
  
   def add_post(post)
    @posts << post
    post.author = self
     @@post_count +=1
  end
  
   def posts
    @posts
  end
  
  def add_post_by_title(title)
      title = Post.new(title)
      @posts << title
      post.author = self
      @@post_count +=1
  end
  
  def self.post_count
   @@post_count
  end
    
end