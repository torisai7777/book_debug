class BookCommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @book = Book.find(params[:book_id])
    @comment = current_user.book_comments.new(comment_params)
    @comment.book_id = params[:book_id]

    if @comment.save
      @comment_new = BookComment.new
    end
    
  end

  def destroy


    @comment = BookComment.find(params[:id])
    @book=Book.find(params[:book_id])
    @comment.destroy



  end

  private
  def comment_params
    params.require(:book_comment).permit(:comment,:book_id)
  end
end
