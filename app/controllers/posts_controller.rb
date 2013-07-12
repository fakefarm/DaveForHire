class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params[:id])
  end

  def edit
  end

  def delete
  end

  def update
  end

  def show
    @post = Post.find(params[:id])
  end
end
