class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :edit, :update,:destroy] #runs this method, set_article, before the methods show, edit and destroy

  def show
  end
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new    
  end

  def edit
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was created sucessfully."
      # redirect_to articles_path
      # redirect_to article_path(@article)
      redirect_to @article
    else
      render 'new', status: 422
    end
  end

  def update
    if @article.update(article_params)
      flash[:notice] = "Article was updated successfully"
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private # anything below is private, only the controller can see

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title,:description)
  end
end