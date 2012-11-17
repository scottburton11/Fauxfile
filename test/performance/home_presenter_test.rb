require 'test_helper'
require 'rails/performance_test_help'

class HomePresenterTest < ActionDispatch::PerformanceTest
  # Refer to the documentation for all available options
  # self.profile_options = { :runs => 5, :metrics => [:wall_time, :memory]
  #                          :output => 'tmp/performance', :formats => [:flat] }

  def setup
    100.times { Fabricate :author }

    Author.all.each do |author|
      rand(20).times { Fabricate :post, :author => author }
    end
    @presenter = HomePresenter.new
  end


  def test_home_presenter_top_authors
    @presenter.top_authors
  end

  def test_home_presenter_longest_posts
    @presenter.longest_posts
  end
end
