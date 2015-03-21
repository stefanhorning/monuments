class UsersController < ApplicationController
  before_filter :authenticate_user! 
  before_action :load_user, only: :create
  load_and_authorize_resource

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def update
    if params[:user][:password].blank?
      [:password, :password_confirmation].collect{ |p| params[:user].delete(p) }
    end
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  def load_user
    # CanCan fix for extra params
    @user = User.new(user_params)
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :role)
  end
end
