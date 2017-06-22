class PostController < ApplicationController
  def index
    @coments = Coment.all.order(created_at: :desc)
  end

  def new
    @coment = Coment.new
  end

  def show
    @coment = Coment.find_by(id: params[:id])

  end

  def create
    @coment = Coment.new(content: params[:content])
    if @coment.save
    redirect_to("/post/index")
  else
    render("/post/new")
  end
  end

  def edit

  end

  def destroy
    @coment = Coment.find_by(id: params[:id])
    @coment.destroy
    redirect_to("/post/index")
  end
end
