class PagesController < ApplicationController
  def home
    @user1 = (params[:user1] and Twitter.user?(params[:user1]))? params[:user1] : 'dhh'
    @user2 = (params[:user2] and Twitter.user?(params[:user2]))? params[:user2] : 'tenderlove'
    @user3 = (params[:user3] and Twitter.user?(params[:user3]))? params[:user3] : 'krainboltgreene'
    
    tweet_count = 2
    
    tweets = Twitter.user_timeline(@user1, :count => tweet_count) + Twitter.user_timeline(@user2, :count => tweet_count) + Twitter.user_timeline(@user3, :count => tweet_count)
    @tweets = tweets.sort_by{|t| t.created_at}.reverse
    
    respond_to do |format|
      format.html
      format.js
    end
  end
end
