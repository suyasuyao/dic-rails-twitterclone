class MentionsController < ApplicationController
  before_action :set_mention, only: [:edit, :update, :destroy]

  def new
    @mention = Mention.new
  end

  def confirm
    @mention = Mention.new(mention_params)
  end

  def create
    @mention = Mention.create(mention_params)
    if params[:back]
      render :new
    else
      if @mention.save
        redirect_to mentions_path, notice: "作成しました"
      else
        render :new
      end
    end
  end

  def index
    @mentions = Mention.all
  end

  def edit
  end

  def update
    if @mention.update(mention_params)
      redirect_to mentions_path, notice: "更新しました"
    else
      render :edit
    end
  end

  def destroy
    @mention.destroy
    redirect_to mentions_path, notice: "削除しました"
  end

  private

  def mention_params
    params.require(:mention).permit(:content)
  end

  def set_mention
    @mention = Mention.find(params[:id])
  end
end
