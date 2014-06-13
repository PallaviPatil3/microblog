class TweetsController < ApplicationController
	def create
		@user = User.find(params[:user_id])
		@tweet = @user.tweets.create(tweet_params)
		respond_to do |format|
			if @tweet.save
				format.html
				format.json 
				format.js 
			else
				format.html { redirect_to user_path(@user), alert: 'New tweet cannot be blank or exceed 140 characters'}
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
			end
		end
	end
	
	def destroy
		@user = User.find(params[:user_id])
		@tweet = @user.tweets.find(params[:id])
		@tweet.destroy
		respond_to do |format|
			format.html { redirect_to user_path(@user), notice: 'Tweet was successfully deleted' }
			format.json
		end
	end

	private
	def tweet_params
		params.require(:tweet).permit(:body)
	end
end
