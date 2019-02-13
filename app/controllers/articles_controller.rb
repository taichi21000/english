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

  private
  def article_params
    params.require(:article).permit(:title, :url, :articlecover)
  end

end
