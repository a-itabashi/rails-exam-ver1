class TweetsController < ApplicationController
  before_action :set_tweet, only:[:edit, :destroy]
  
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
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

  def edit
  end

  def destroy
  end
  
  private
  
  def tweet_params
    params.require(:tweet).permit(:content)
  end
  
  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

end
