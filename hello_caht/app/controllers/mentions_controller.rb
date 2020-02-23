class MentionsController < ApplicationController
  def new
    @mention = Mention.new
  end

  def create
    @mention = Mention.create(mention_params)
    if @mention.save
      redirect_to mentions_path, notice: "作成しました"
    else
      render :new
    end
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
      redirect_to mentions_path, notice: "更新しました"
    else
      render :edit
    end
  end

  def destroy
    @mention = Mention.find(params[:id])
    @mention.destroy
    redirect_to mentions_path, notice: "削除しました"
  end

  private

  def mention_params
    params.require(:mention).permit(:content)
  end
end
