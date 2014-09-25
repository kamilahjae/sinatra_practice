class Post
  # Access posts; files within views/posts
  # Attributes: title, url, filename, content

  # Read my list of post files
  # Create an array of post objects
  # with the attributes set
  # Post.all => [post, post] and each post obj has attributes
  attr_accessor :title, :url

  def initialize(array)
    @title = array[-1].split(".")[0] #title
    @url   = "/posts/#{@title}"

  end
  def self.all
    Dir.glob("views/posts/*").collect do |filepath|
      a = filepath.split
      new(a)
    end
  end
end
