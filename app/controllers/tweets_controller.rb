class TweetsController < ActionController::Base

	def index
		@tweets = Tweet.all
	end

	def new
		@tweet = Tweet.new
	end

	def create
		@tweet = Tweet.new(tweet_params)
		respond_to do |format|
			if @tweet.save
      	format.html { redirect_to tweets_path, notice: 'Created Tweet Succesfully' }
      else
      	format.html { render action: "new" }
      end
    end
	end

	private

	def set_tweet
		@tweet = Tweet.find_by_id(params[:id])
	end

	def tweet_params
		params.require(:tweet).permit(:id, :subject, :comment, :user_id, :created_at, :updated_at)
	end
end

