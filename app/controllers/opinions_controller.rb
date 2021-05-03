class OpinionsController < ApplicationController
  before_action :require_user

  def index
    @opinion = Opinion.new
    @opinions = Opinion.order_by_most_recent
    @not_follow = current_user.who_to_follow
  end

  def create
    @opinion = current_user.opinions.build(opinion_params)
    if @opinion.save
      flash[:notice] = 'Opinion was created successfully'
      redirect_to root_path
    else
      flash.now[:alert] = 'Something went wrong...'
    end
  end

  def edit
    @opinion = Opinion.find_by_id!(params[:id])
    @opinion
  end

  def update
    @opinion = Opinion.find_by_id!(params[:id])

    if @opinion.update(opinion_params)
      redirect_to opinions_path, notice: 'Your Opinion has been edited.'
    else
      redirect_to opinions_path, alert: "Can't complete this action."
    end
  end

  def destroy
    @opinion = Opinion.find_by_id!(opinion_params[:opinion_id])
    @opinion.destroy
    redirect_to root_path, alert: 'Opinion deleted'
  end

  private

  def opinion_params
    params.require(:opinion).permit(:opinion_id, :text)
  end
end
