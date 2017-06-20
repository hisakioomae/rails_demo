class PostController < ApplicationController
  def index
  end
  def new

  end

  def create
    @coment = Coment.new(content: params[:content])
    @coment.save
    redirect_to("/post/index")
  end
end
