class TitleListsController < ApplicationController
#  before_action :authenticate

  def index
    @title_list = TitleList.all
  end

  def new
    @title_list = current_user.created_title_lists.build
  end

  def create
    @title_list = current_user.created_title_lists.build(title_list_params)
    if @title_list.save
      redirect_to @title_list, notice: '新しく登録しました'
    else
      render :new
    end
  end
end
