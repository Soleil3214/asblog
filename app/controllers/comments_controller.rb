class CommentsController < ApplicationController
  def create


=begin
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])

    ueno@apie.jp
=end



def create
@post = Post.find(params[:post_id])
@comment = @post.comments.create(params[:comment].permit(:commenter, :body))
redirect_to post_path(@post)
end

=begin
@post = Post.find(post_id_params)
@comment = @post.comments.create(params[:comment])
=end
  end




  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
end
