class TweetsController < ApplicationController
    def create
        @tweet = current_user.tweets.build(tweet_params)
        if @tweet.save
          json_response(@tweet, :created)
        else
          json_response({ success: false, message: "Error while creating tweet", errors: @tweet.errors }, :unprocessable_entity)
        end
      end
      
      private
      
      def tweet_params
        params.require(:tweet).permit(:content)
      end

      # method to get a list of tweets
  before_action :set_user, only: :index

  def index
    @following_user_ids = @user.following.pluck(:id)
    @tweets = Tweet.where(user_id: @following_user_ids).order(created_at: :desc).includes(:user)

    json_response(@tweets)
  end
  
  private

  def set_user
    @user = User.find(params[:user_id])
  end

Also add below code in user.rb:

def as_json(options = {})
    super(options.merge({ except: [:auth_token, :created_at, :updated_at] }))
  end

    
end
