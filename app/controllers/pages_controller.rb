class PagesController < ApplicationController

  before_filter :latest_post

  def index
    @page_title = "Dave Woodall | Part-time Technical Co-founder for hire"

  end
  def services;end
  def blog; end
  def sitemap; end

  def latest_post
    @newest_post = Blogpost.last ||= ""
  end
end
