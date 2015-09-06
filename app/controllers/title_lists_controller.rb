class TitleListsController < ApplicationController
  before_action :authenticate

  def index
    @title_list = TitleList.all
  end

  def new
      @keyword = params[:keyword]
      unless @keyword.nil?
        res = Amazon::Ecs.item_search(
          "",
          :title => @keyword,
          :sort => 'titlerank',
          :tag_sort => 'Name',
          :browse_node => '2250738051'
        )

         @asins = []
         res.items.each{|item| @asins << item.get('ASIN')}
         @items = Amazon::Ecs.item_lookup(@asins.join(','),:response_group => 'Large').items
      end
   #@title_list = current_user.created_title_lists.build
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
