class UsersController < ApplicationController
	before_action :authenticate_user!

	def index
		@users = User.all
		@size = Tweet.count
		@userc = current_user
		@follower_tweets = Tweet.where(created_at: (Time.now - 1.day)..Time.now).order('created_at DESC')
		@tweets = @follower_tweets.paginate(page: params[:page], per_page: 8)
		respond_to do |format|
      format.html
      format.xml  { render xml: @users}
      format.json { render json: @users}
			format.js
    end
	end

	def show
		@users = User.all
		@user = User.find(params[:id])
		@userc = current_user
		@follower_list = @user.followers.ids
		@follower_list.push(@user.id)
		@follower_tweets = Tweet.order('created_at DESC').where(user_id: @follower_list)
		@tweets = @follower_tweets.paginate(page: params[:page], per_page: 8)
		@tweet = @user.tweets.build
		@follower_num = @user.followers_num
		respond_to do |format|
      format.html
      format.xml  { render xml: @user}
      format.json { render json: @user}
			format.js
    		end
		
	end

	def follow
		@user = User.find(params[:id])
		@userc = current_user
		@userc.followers << @user
		@fnum = @user.followers_num
		@fnum += 1
		@user.followers_num = @fnum
		@user.save
		respond_to do |format|
			format.html { redirect_to user_path(@user), notice: 'Follow Successful' }
			format.json { render json: @user }
		end
	end
		
	def unfollow
		@user = User.find(params[:id])
		@userc = current_user
		@userc.followers.delete(@user)
		@unum = @user.followers_num
		@unum -= 1
		@user.followers_num = @unum
		@user.save
		respond_to do |format|
			format.html { redirect_to user_path(@user), notice: 'Unfollow Successful' }
			format.json { render json: @user }
		end
	end
end
