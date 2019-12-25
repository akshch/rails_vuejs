class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: { status: :ok , message: 'Success' }
    else
      render json: { json: user.error, status: :unprocessable_entity }
    end
  end


  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
       render json: { status: :ok , message: 'Success' }
    else
       render json: { json: user.error, status: :unprocessable_entity }
    end
  end

   private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :phone, :address)
   end
end