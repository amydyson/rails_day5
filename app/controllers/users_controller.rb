class UsersController < ApplicationController


# def call_array
#   @user_array
# end
  def create
    @f_name = params[:f_name]
    cookies[:f_name] = @f_name

    @street = params[:street]
    cookies[:street] = @street

    @city = params[:city]
    cookies[:city] = @city

    @state = params[:state]
    cookies[:state] = @state

    @zip = params[:zip]
    cookies[:zip] = @zip

    @country = params[:country]
    cookies[:country] = @country

    @email = params[:email]
    cookies[:email] = @email

    @user_id = params[:user_id]
    cookies[:user_id] = @user_id

    @password = params[:password]
    cookies[:password] = @password

    @user = User.new(@user_id, @password, @f_name, @street, @city, @state, @zip, @country, @email)
    # session[:user] = @user.to_yaml

    @user_array = ["amy", "matt"]
    @pass_array = ["Jstreet", "PJMask"]
    # @user_array = [{"user_id" => "Matt", "password" => "matt"}, {"user_id" => "Amy", "password" => "amy"}]
    # # @user_array.push(@user)

   if !(@user_array.include?(@user_id))
     flash.now[:notice] = "Your credentials are valid"
     render "welcome.html.erb"
   else
     flash.now[:alert] = "This user id is already taken"
     render "register.html.erb"
   end

    # #
    # render "confirmation.html.erb"

  # model_year = params[:model_year]
  # @car = Car.new(make, model_year)
  # session[:car] = @car.to_yaml

  end

  def logout
    flash.now[:alert] = "You are now logout"
  end

  def confirmation
  YAML.load(session[:car])
  end

  def userslist

  end

  def check
    @user_array = ["amy", "matt"]
    @pass_array = ["Jstreet", "PJMask"]
    # @user_array = [{"user_id" => "Matt", "password" => "matt"}, {"user_id" => "Amy", "password" => "amy"}]
    # # @user_array.push(@user)
 # && @pass_array.include?(@password))
 # render "welcome.html.erb"
# fail

@user_id = params[:user_id]

@password = params[:password]

   if @user_array.include?(@user_id)
     flash.now[:notice] = "Your credentials are valid"
     render "welcome.html.erb"
   else
     flash.now[:alert] = "Login failed, please try again, also whomp whomp"
     render "login.html.erb"
   end

  end

  def welcome
  end
end
