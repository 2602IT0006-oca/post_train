class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user)  # ← N+1問題が発生する書き方
  end
endw