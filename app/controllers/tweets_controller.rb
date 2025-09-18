class TweetsController < ApplicationController



  def index
   @tweets = Tweet.all
  end

 def new
    @tweet = Tweet.new
 end
  
 def create
    tweet = Tweet.new(tweet_params)
    if tweet.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
 end
     def show
        @tweet = Tweet.find(params[:id])
        @comments = @tweet.comments
        @comment = Comment.new
     end

   def kokkie
     @tweet = Tweet.new 
   end  

   def chokolate
     @tweet = Tweet.new 
   end  

   def cake
     @tweet = Tweet.new
   end

   def potetotip
     @tweet = Tweet.new
   end

  
    def appulpai
     @tweet = Tweet.new
   end

    
   def imomoti
     @tweet = Tweet.new
   end

   def kanure
     @tweet = Tweet.new
   end

   def kurakka
     @tweet = Tweet.new
   end

   def makaron
     @tweet = Tweet.new
   end

   def nattu
     @tweet = Tweet.new
   end

   def okaki
     @tweet = Tweet.new
   end

   def poteto
     @tweet = Tweet.new
   end

   def purettueru
     @tweet = Tweet.new
   end

   def senbei
     @tweet = Tweet.new
   end

   def zeri
     @tweet = Tweet.new
   end

   def wagasi
     @tweet = Tweet.new
   end


   def edit
    @tweet = Tweet.find(params[:id])
  end

def update
    tweet = Tweet.find(params[:id])
    if tweet.update(tweet_params)
      redirect_to :action => "index", :id => tweet.id
    else
      redirect_to :action => "new"
    end
  end


     
 def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to action: :index
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :time, :comment)
  end
  
def like
    tweet = Tweet.find(params[:id])
    like = tweet.likes.find_by(user: current_user)

    if like
      # すでにいいねしていたら解除
      like.destroy
    else
      # いいねする
      tweet.likes.create(user: current_user)
    end

    redirect_back(fallback_location: root_path)
  end
  

end

