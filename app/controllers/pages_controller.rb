class PagesController < ApplicationController

  before_filter :latest_post

  def index;end
  def services;end
  def blog; end
  def sitemap; end

  def latest_post
    @newest_post = Blogpost.last ||= ""
  end
end
