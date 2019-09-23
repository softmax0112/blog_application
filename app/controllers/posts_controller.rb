class PostsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    # binding.pry
    # @posts = Post.where(params["genres"])
    genre_array = []
    params[:genrelist].each do | di1,di2 |
      
      # チェックボックスにチェックがついている場合
      if di2 == "1"
        genre_array << di1
        # DBのtitleカラムにタイトルを格納し保存
        # @get_game.save
      end
    end 
    @posts = Post.where(genres: genre_array).order("created_at DESC").page(params[:page]).per(10)

    # binding.pry
    # @posts = Post.includes(:user).order("created_at DESC").page(params[:page]).per(10)
    # @posts = Post.find_by(params["genres"])
    # binding.pry

    respond_to do |format|
      format.html
      format.csv { send_data @posts.generate_csv, filename: "posts-#{Time.zone.now.strftime('%Y%m%d%S')}.csv" } # --- ②
    end
  end

  def show
  end

  def new
    # binding.pry
    @post = Post.new
    @deck = Deck.where(user_id: current_user)
  end

  def create
    binding.pry
    Post.create(title: post_params[:title], body: post_params[:body], user_id: current_user.id, deck_id: post_params[:deck_id])
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

  def import
    current_user.posts.import(params[:file])
    redirect_to posts_url, notice: "タスクを追加しました"
  end

  def rankup
    post = Post.find(params["id"])
    if post.user_id == current_user.id
      post.rank += 1
      post.save
      redirect_to "/"
    end
  end

  def rankdown
    post = Post.find(params["id"])
    if post.user_id == current_user.id
      post.rank -= 1
      post.save
      redirect_to "/"
    end
  end

  def test
    # binding.pry
    @test = Post.new
  end

  def search
    # binding.pry
    # @posts = Post.where(title: genre_array).order("created_at DESC").page(params[:page]).per(10)
    # @posts = Post.where("title like or body like '%人%'").order("created_at DESC").page(params[:page]).per(10)
    @posts = Post.ransack(title_or_body_cont: params[:keyword]).result.order("created_at DESC").page(params[:page]).per(10)
  end


  private
  def post_params
    params.require(:post).permit(:title, :body, :mode, :checkbox, :deck_id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
