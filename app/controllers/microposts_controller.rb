class MicropostsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy
  caches_page :index,:correct_user,:create
  def index
  end
  def create
    @micropost = current_user.microposts.build(params[:micropost])
    expire_page :action => :create
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @micropost.destroy
    redirect_to root_url
  end
  def correct_user
      @micropost = current_user.microposts.find_by_id(params[:id])
      rescue
        redirect_to root_url
  end
  private
    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end 
    end
end