class MagneticsController < ApplicationController
  def index
    @magnetics=Magnetic.all 
  end


  def new
  	@magnetic=Magnetic.new 
  end

  def create
  	@magnetic= Magnetic.new(magnetic_params)
  	 if @magnetic.save
        redirect_to magnetics_path, notice: "The resume #{@magnetic.name} has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @magnetic = Magnetic.find(params[:id])
    @magnetic.destroy
    redirect_to magnetics_path, notice: "The project #{@magnetic.name} has been deleted."
  end

  private
	  def magnetic_params
	    params.require(:magnetic).permit(:name, :attachment)
	  end


end




