class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    set_article
  end

  def new
    @article = Article.new
  end

  def create
    created_article = Article.create(article_parameters)
    redirect_to article_path(created_article)
  end

  def edit
    set_article
  end

  def update
    set_article
    @article.update(article_parameters)
    redirect_to article_path(@article)
  end

  def destroy
    set_article
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_parameters
    params.require(:article).permit(:title, :content)
  end
end
