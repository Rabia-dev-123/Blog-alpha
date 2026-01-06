class UsersController < ApplicationController

   def new 
    @user = User.new
   end
   def create 
      

    @user = User.new(user_param)
   
     @user.save()
flash[:notice] = "Welcome to Alpha Blog. #{@user.username}, you have sucessfully sign up"
redirect_to articles_path

   end 
   def edit 
      @user = User.find(params[:id])
   end 
def update
          @user = User.find(params[:id])
              if User.update(user_param)
               flash[:notice] = "Your account information was successfully updated"
redirect_to articles_path
              else 
               render "edit"
              end

end
private
def user_param 
   params.require(:user).permit(:username , :email , :password)
end 
end