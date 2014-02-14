class PastesController < ApplicationController
  def index
    @pastes = Paste.all
  end

  def show
    @paste = Paste.find(params[:id])
  end

  def new
    @paste = Paste.new
  end

  def edit
  end

  def create
    @paste = Paste.new(paste_params)

    if @paste.save
      flash[:success] = "Your paste has been added"
      redirect_to @paste
    else
      flash.now[:danger] = "There was an error submitting your form"
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private
    def paste_params
      params.require(:paste).permit(:content)
    end
end
