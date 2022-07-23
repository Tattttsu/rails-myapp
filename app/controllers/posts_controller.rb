class PostsController < ApplicationController
  def index
    @posts = Post.all
    render layout: "_index"
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "スケジュールを登録しました。"
      redirect_to "/posts"
    else
      flash.now[:danger] = "登録に失敗しました。"
      render "new"
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "スケジュールを更新しました。"
      redirect_to "/posts"
    else
      flash.now[:danger] = "更新に失敗しました。"
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to "/posts"
  end

private
  def post_params
    params.require(:post).permit(:title, :start_day, :end_day, :allday, :memo)
  end
end
