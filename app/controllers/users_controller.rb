class UsersController < ApplicationController
  def show
    # @nickname = current_user.nickname
    # @posts = current_user.posts.order("created_at DESC").page(params[:page]).per(4)
    # @decks = Deck.all
    @decks = Deck.where(user_id: current_user.id)
    
    decks_count = Deck.where(user_id: current_user.id).count

    @decks.each.with_index(1) do |aaa, i|
      all_posts_count = Post.where(deck_id: i).count
      cleared_posts_count = Post.where(deck_id: i).where(rank: 10).count
      @answer_valuenow = (cleared_posts_count.to_f / all_posts_count.to_f * 100).round 
      binding.pry
      gon.answer_valuenow = @answer_valuenow
      @decks.push(@answer_valuenow)
    end
    binding.pry
    # all_posts_count = Post.where(deck_id: 1).count
    # cleared_posts_count = Post.where(deck_id: 1).where(rank: 10).count
    # @answer_valuenow = (cleared_posts_count.to_f / all_posts_count.to_f * 100).round
    # binding.pry
    # @user = User.find(params[:id])
    # all_questions_count = Post.count
    # #全問題数の格納
    # answers_count = Torf.where(user_id: current_user.id).count
    # #ユーザーごとの解答数の格納
    # @answer_valuenow = answers_count.to_f / all_questions_count.to_f * 100
    # #進捗率の格納
    # collect_answers_count = Torf.where(user_id: current_user.id).where(answer_log: true).count
    # #ユーザーごとの正解した問題数の格納
    #正答率の格納
    # gon.answer_valuenow = @answer_valuenow
    #jsに渡すためgonを利用
  end
end
