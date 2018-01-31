class HomeController < ApplicationController
  def index
    @user = current_user
    @feedItems = GoogleCustomSearchApi.search(@user.interests.where(searchable: true).first.interest_name)
    render :index
  end
end
