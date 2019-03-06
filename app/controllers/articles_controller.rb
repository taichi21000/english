class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path, success: '保存に成功しました'
    else
      flash.now[:danger] = "保存に失敗しました"
      render :new
    end
  end

  def show
    @article = Article.find_by(id:params[:id])
  end

  def edit
    @article = Article.find_by(id: params[:id])
  end

  def update
    @article = Article.find_by(id: params[:id])
    if @article.update_attributes(article_params)
      redirect_to articles_path, success: '保存に成功しました'
    else
      flash.now[:danger] = "保存に失敗しました"
      render 'edit'
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :url, :articlecover, :description)
  end

end
