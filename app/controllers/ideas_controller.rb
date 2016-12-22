class IdeasController < ApplicationController
  
  def new
  	@idea = Idea.new
  end
  def create
  	@idea = Idea.new(idea_params)

  	if @idea.save
  		redirect_to :back
  	else
  		flash[:errors] = "Please put in an idea before submitting"
  		redirect_to :back
  	end
  end

  def show
  	@idea = Idea.find(params[:id])
  	@users = Like.select(:user_id).where(idea_id: params[:id]).uniq
  end
  def like
  	@like = Like.new(user_id: session[:user_id], idea_id: params[:id])
  	@like.save
  	redirect_to :back
  end
  def delete
  	Idea.find(params[:id]).destroy
  	redirect_to :back
  end

  private
  def idea_params
  	params.require(:idea).permit(:idea, :user_id)
  end
end
