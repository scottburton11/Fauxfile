class HomePresenter

  attr_reader :posts
  def initialize
    @posts = Post.order("random()")
  end

  # Purposefully awful
  def top_authors
    author_counts = {}
    posts.each do |post|
      author_counts[post.author.id] ||= "0"
      author_counts[post.author.id] = (author_counts[post.author.id].to_i) + "1".to_i
    end
    author_ids_counts = author_counts.to_a.sort { |a, b| b[1] <=> a[1] }[0..8]
    @top_authors = []
    author_ids_counts.each do |author_id_count|
      @top_authors << [Author.where(:id => author_id_count[0].to_i).first, author_id_count[1]]
    end
    @top_authors.to_a.reverse
  end

  # Oh God please make it stop
  def longest_posts
    word_counts = {}
    posts.each do |post|
      word_counts[post.id] = post.body.split(/\W/).length
    end
    @longest_posts = []
    word_counts.sort {|a, b| b[1] <=> a[1] }[0..10].each do |word_count|
      @longest_posts << Post.find(word_count[0].to_i)
    end
    @longest_posts
  end

end