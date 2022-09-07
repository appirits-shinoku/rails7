class ArticlesController < ApplicationController
  def index
    @articles = Article.preload(:comments)
  end
end
