class Post
  # Access posts; files within views/posts
  # Attributes: title, url, filename, content

  # Read my list of post files
  # Create an array of post objects
  # with the attributes set
  # Post.all => [post, post] and each post obj has attributes
  def initialize(array)

  end
  def self.all
    Dir.glob("views/posts/*").each do |filepath|
      a = filepath.split
      new(a)
    end
  end
end
