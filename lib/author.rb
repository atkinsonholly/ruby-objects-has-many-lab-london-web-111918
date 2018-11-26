class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def new(name)
    author = Author.new(name)
    author.name = name
    author
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post_new = Post.new(title)
    @posts << post_new
    post_new.author = self
  end

  def self.post_count #not working
    Post.all.length
  end

end
