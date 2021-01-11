class TweetsController < ApplicationController
    
    before_action :move_to_index, except: :index
    
    def index
        @tweets = Tweet.includes(:user).order("created_at DESC")   
    end
    
    def new
    end
    
    def create
        Tweet.create(text: tweet_params[:text], user_id: current_user.id)
    end
    
    def destroy
        tweet = Tweet.find(params[:id])
        if tweet.user.id == current_user.id
            tweet.destroy
        end
    end
    
    def show
        @tweet = Tweet.find(params[id])
    end
    
    private
    def tweet_params
        params.permit(:text,)
    end
    
    def move_to_index
        redirect_to action: :index unless user_signed_in? 
    end
end