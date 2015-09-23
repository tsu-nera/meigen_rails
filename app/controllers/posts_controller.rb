# coding: utf-8
class PostsController < ApplicationController
  # 投稿一覧
  def index
    # Postテーブルからすべて検索
    @posts = Post.all
  end

  # 新規投稿作成
  def create
    @post = Post.new
    @post.content = params[:post][:content]
    @post.author =  params[:post][:author]
    @post.save
    
    # 投稿一覧へリダイレクト
    redirect_to "/posts"
  end

  def show
    @post = Post.find(params[:id])
  end
end
