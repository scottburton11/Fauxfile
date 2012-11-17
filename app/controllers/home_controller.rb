class HomeController < ApplicationController
  def index
    @presenter = HomePresenter.new
  end
end
