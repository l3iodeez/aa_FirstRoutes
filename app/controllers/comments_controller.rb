class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment
    else
      render(
        json: @comment.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render json: "Record deleted."
  end

  def index
    @comments = Comment.all
    render json: @comments
  end

  def show
    @comment = Comment.find(params[:id])
    render  json: @comment
  end

  def update
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment
    else
      render(
        json: @comment.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :commentable_id, :commentable_type)
  end
end
