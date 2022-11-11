class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    @bookmark.save
    redirect_to lists_path
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
