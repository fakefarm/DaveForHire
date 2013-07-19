class BlogpostsController < ApplicationController

  before_filter :latest_post

  def index
    @blogposts = Blogpost.all.sort.reverse[1..-1]
    @page_title = "Technical Co-founder for hire."
    respond_to do |format|
      format.html
      format.json { render json: @blogposts }
    end
  end



  def show
    @blogpost = Blogpost.find_by_slug!(params[:id])
    @page_title       = @blogpost.title
    @page_description = @blogpost.description
    respond_to do |format|
      format.html
      format.json { render json: @blogpost }
    end
  end



  def new
    @blogpost = Blogpost.new

    respond_to do |format|
      format.html
      format.json { render json: @blogpost }
    end
  end


  def edit
    @blogpost = Blogpost.find_by_slug!(params[:id])
  end



  def create
    @blogpost = Blogpost.new(params[:blogpost])

    respond_to do |format|
      if @blogpost.save
        format.html { redirect_to @blogpost, notice: 'Blogpost was successfully created.' }
        format.json { render json: @blogpost, status: :created, location: @blogpost }
      else
        format.html { render action: "new" }
        format.json { render json: @blogpost.errors, status: :unprocessable_entity }
      end
    end
  end



  def update
    @blogpost = Blogpost.find_by_slug!(params[:id])

    respond_to do |format|
      if @blogpost.update_attributes(params[:blogpost])
        format.html { redirect_to @blogpost, notice: 'Blogpost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blogpost.errors, status: :unprocessable_entity }
      end
    end
  end



  def destroy
    @blogpost = Blogpost.find_by_slug!(params[:id])
    @blogpost.destroy

    respond_to do |format|
      format.html { redirect_to blogposts_url }
      format.json { head :no_content }
    end
  end

  def latest_post
    @newest_post = Blogpost.last
  end

end
