class PublicationsController < ApplicationController
  before_action :find_user
  def new
    @publication = Publication.new
  end

  def create
    @publication = Publication.new(publication_params)
    if @publication.save
      redirect_to user_path(current_user.id)
    else
      render :new
    end
  end

  def edit
    @publication = Publication.find(params[:id])
  end

  def update
    @publication = Publication.find(params[:id])
    if @publication.update(publication_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  private
  def publication_params
    params.require(:publication).permit(:title, :abstract, :author_list, :link_to_pub)
  end

  def find_user
    @user = current_user
  end
end
