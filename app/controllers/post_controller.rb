class PostController < ApplicationController
  def index
    @coments = Coment.all.order(created_at: :desc)
  end
  def new
    @coment = Coment.new

  end

  def create
    @coment = Coment.new(content: params[:content])
    @coment.save
    redirect_to("/post/index")
  end
end
