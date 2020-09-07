class PostsController < ApplicationController

  def index
    @posts = Post.all.order(id: "DESC")
  end
  def create
    post = Post.create(content: params[:content], checked: false)
    render json:{ post: post }
  end
<<<<<<< HEAD

=======
>>>>>>> a1d2b189f31260bf333bea445ec3e123b3b49d18
  def checked
    post = Post.find(params[:id])
    if post.checked then
      post.update(checked: false)
    else
      post.update(checked: true)
    end
<<<<<<< HEAD

    item = Post.find(params[:id])
    render json:{ post: item }
=======
    item = Post.find(params[:id])
    render json: { post: item }
>>>>>>> a1d2b189f31260bf333bea445ec3e123b3b49d18
  end
<<<<<<< HEAD
=======
  def checked
    post = Post.find(params[:id])
    if post.checked then
      post.update(checked: false)
    else
      post.update(checked: true)
    end
    item = Post.find(params[:id])
    render json: { post: item }
  end
>>>>>>> a1d2b189f31260bf333bea445ec3e123b3b49d18

end