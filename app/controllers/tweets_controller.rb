class TweetsController < ApplicationController
  before_action :set_tweet, only:[:show,:edit, :update,:destroy]
  
  def index
    @tweets = Tweet.all
  end

  def new
    if params[:name]
      @tweet = Tweet.new(tweet_params)
    else
      @tweet = Tweet.new
    end
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to tweets_path, notice:"Tweetを投稿しました"
    else
      render 'new'
    end
  end

  def confirm
    @tweet = Tweet.new(tweet_params)
    render 'new' if @tweet.invalid?
  end
  
  def show
  end

  def edit
  end
  
  def update
    if @tweet.update(tweet_params)
      redirect_to tweets_path, notice:"Tweetを編集しました"
    else
      render 'edit'
    end
  end

  def destroy
    @tweet.destroy
    redirect_to tweets_path, notice: "Tweetを削除しました"
  end
  
  private
  
  def tweet_params
    params.require(:tweet).permit(:content)
  end
  
  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

end
