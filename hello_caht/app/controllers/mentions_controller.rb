class MentionsController < ApplicationController
  def new
    @mention = Mention.new
  end

  def create
    @mention = Mention.create(mention_params)
  end

  def index
    @mentions = Mention.all
  end

  def edit
  end

  def destroy
  end

  private

  def mention_params
    params.require(:mention).permit(:content)
  end
end
