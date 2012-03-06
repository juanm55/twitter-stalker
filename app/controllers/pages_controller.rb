class PagesController < ApplicationController
  def home
    @user1 = params[:user1]? params[:user1] : 'dhh'
    @user2 = params[:user2]? params[:user2] : 'tenderlove'
    @user3 = params[:user3]? params[:user3] : 'krainboltgreene'
    
    respond_to do |format|
      format.html
      format.js
    end
  end
end
