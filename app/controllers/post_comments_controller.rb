class PostCommentsController < ApplicationController
  def create
    post_image=PostImage.find(params[:post_image_id])
    comment=current_user.post_comments.new(post_comment_parms)
    comment.post_image_id=post_image.id
    redirect_to post_image_path(post_image)
  
  end



end
