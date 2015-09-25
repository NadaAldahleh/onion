class ProfilesController < ApplicationController

  def edit
    @profile = Profile.find params[:id]
  end

  def show
    @profile = Profile.find params[:id]
  end

  def update
    @profile = Profile.find params[:id]
    if @profile.update(profile_params)
      redirect_to(@profile)
    else
      render "edit"
    end
  end

  private
    def profile_params
      params.require(:profile).permit(:name, :location, :company)
    end
end


