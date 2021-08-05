class CommentsController < ApplicationController
   def new
     @comment = Comment.new
   end

  def create
    comment = Comment.new
    comment.user_id = current_user.id
    comment.topic_id = params[:comment][:topic_id]
    comment.body = params[:comment][:body]

    if comment.save
      redirect_to topics_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end
end
