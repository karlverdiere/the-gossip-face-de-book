class UsersController < ApplicationController
  def deco
     session[:user] = nil
     redirect_to '/users/deconnection'
   end
   def deconnection

   end

   def new
     @users = User.new
   end

   def create
     @user_params = params[:user]
     User.create(name: @user_params[:name], email: @user_params[:email], password: @user_params[:password])
     redirect_to '/users/login'
   end

   def index
     @all_user = User.all
   end

   def home
   end

   def login
   end

   def check
     @current_user = User.where(name: params[:name], email: params[:email], password: params[:password])
     if @current_user.where(name: params[:name], email: params[:email], password: params[:password]).exists?
       puts "Welcome back bro"
       flash[:info] = "Bienvenue #{@current_user} !"
       session[:user] = @current_user
       redirect_to "/users/home"
     else
       puts " Only members here, get out or register now ! "
       redirect_to "/users/login"
     end
   end

 end
