class MentionsController < ApplicationController
  def new
    @mention = Mention.new
  end

  def create
    @mention = Mention.create(mention_params)
    redirect_to mentions_path
  end

  def index
    @mentions = Mention.all
  end

  def edit
    @mention = Mention.find(params[:id])
  end

  def update
    @mention = Mention.find(params[:id])
    if @mention.update(mention_params)
      redirect_to mentions_path
    else
      render :edit
    end
  end

  def destroy
    @mention = Mention.find(params[:id])
    @mention.destroy
    redirect_to mentions_path
  end

  private

  def mention_params
    params.require(:mention).permit(:content)
  end
end
