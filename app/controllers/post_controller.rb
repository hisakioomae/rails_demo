class PostController < ApplicationController
  before_action :authenticate_user

  def index
    @coments = Coment.all.order(created_at: :desc)
  end

  def new
    @coment = Coment.new
  end

  def show
    @coment = Coment.find_by(id: params[:id])
    @user = @coment.user

  end

  def create
    @coment = Coment.new(content: params[:content], user_id: @current_user.id)
    if @coment.save
    redirect_to("/post/index")
    flash[:notice] = "コメントをを投稿しました"
  else
    render("/post/new")
  end
  end

  def edit
    @coment = Coment.find_by(id: params[:id])

  end

  def update
    @coment = Coment.find_by(id: params[:id])
    @coment.content = params[:content]
    if @coment.save
      redirect_to("/post/index")
      flash[:notice] = "コメント内容を編集しました"
    else
      render("post/edit")
    end

  end

  def destroy
    @coment = Coment.find_by(id: params[:id])
    @coment.destroy
    redirect_to("/post/index")
    flash[:notice] = "コメントを削除しました"
  end
end
