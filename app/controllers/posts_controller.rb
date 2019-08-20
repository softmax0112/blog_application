class PostsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @posts = Post.includes(:user).order("created_at DESC").page(params[:page]).per(4)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(title: post_params[:title], body: post_params[:body], user_id: current_user.id)
    @quote = Quote.where( 'id >= ?', rand(Quote.first.id..Quote.last.id) ).first
  end

  def edit
    @post = Post.find(params["id"])
  end

  def update
    post = Post.find(params["id"])
    if post.user_id == current_user.id
      post.title = params["posts"]["title"]
      post.body = params["posts"]["body"]
      post.save
      redirect_to "/"
    end
  end

  def destroy
    post = Post.find(params["id"])
    if post.user_id == current_user.id
      post.destroy
      redirect_to "/"
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
