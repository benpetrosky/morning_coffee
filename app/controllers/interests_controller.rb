class InterestsController  < ApplicationController
  def new
    @user = current_user

    @interest = @user.interests.new

    render :new
  end

  def index
    @interests = current_user.interests.all

  end
  def update

    @interest = current_user.interests.find(params[:id])


    @interest.update(interest_params)
    redirect_to root_path

  end

  def create
    @user = current_user
    @interest = @user.interests.new(interest_params)
    if @interest.save
    redirect_to user_interests_path
    else
    render :new
    end
  end
  def destroy
    @user = current_user
  @interest = current_user.interests.find(params[:id])
  @interest.destroy
  redirect_to root_path
end


private
  def interest_params
    params.require(:interest).permit(:interest_name, :searchable)
  end
end
