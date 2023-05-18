class BlogsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.create!(blog_params)
    if @blog.save
      redirect_to  blog_path(@blog.id)
    else
      render 'new'
    end
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def index
    @blogs = Blog.all
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to  blog_path(@blog.id)
    else
      render 'new'
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    if @blog.destroy
      redirect_to blogs_path
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:id, :user_id, :title, :sub_title,:subject, :blog_body, :photo)
  end

end
