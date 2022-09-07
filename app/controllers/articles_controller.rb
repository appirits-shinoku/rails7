class ArticlesController < ApplicationController
  def index
    @articles = Article.eager_load(:comments)
  end
end
