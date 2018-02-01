class HomeController < ApplicationController
  def index
    @user = current_user

    if @user.interests.where(searchable: true).any?
      @numberOfFeeds = @user.interests.where(searchable: true).count
      if @numberOfFeeds === 5
        @feed5 = GoogleCustomSearchApi.search(@user.interests.where(searchable: true).fifth.interest_name)
        @feed4 = GoogleCustomSearchApi.search(@user.interests.where(searchable: true).fourth.interest_name)
        @feed3 = GoogleCustomSearchApi.search(@user.interests.where(searchable: true).third.interest_name)
        @feed2 = GoogleCustomSearchApi.search(@user.interests.where(searchable: true).second.interest_name)
        @feed1 = GoogleCustomSearchApi.search(@user.interests.where(searchable: true).first.interest_name)
      elsif @numberOfFeeds === 4
        @feed4 = GoogleCustomSearchApi.search(@user.interests.where(searchable: true).fourth.interest_name)
        @feed3 = GoogleCustomSearchApi.search(@user.interests.where(searchable: true).third.interest_name)
        @feed2 = GoogleCustomSearchApi.search(@user.interests.where(searchable: true).second.interest_name)
        @feed1 = GoogleCustomSearchApi.search(@user.interests.where(searchable: true).first.interest_name)
      elsif @numberOfFeeds === 3
        @feed3 = GoogleCustomSearchApi.search(@user.interests.where(searchable: true).third.interest_name)
        @feed2 = GoogleCustomSearchApi.search(@user.interests.where(searchable: true).second.interest_name)
        @feed1 = GoogleCustomSearchApi.search(@user.interests.where(searchable: true).first.interest_name)
      elsif @numberOfFeeds === 2
        @feed2 = GoogleCustomSearchApi.search(@user.interests.where(searchable: true).second.interest_name)
        @feed1 = GoogleCustomSearchApi.search(@user.interests.where(searchable: true).first.interest_name)
      else
        @feed1 = GoogleCustomSearchApi.search(@user.interests.where(searchable: true).first.interest_name)
      render :index
    end
    else
    render :index
  end
end
end


# def update
#   @product = Product.find(params[:id])
#   if @product.update(product_params)
#     redirect_to products_path
#   else
#     render :edit
#   end
# end
