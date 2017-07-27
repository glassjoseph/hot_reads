class Api::V1::ReadsController < ApplicationController

  def create
    read = Read.new(read_params)
    if read.save
      render json: {status: 201}
    else
      render json: {status: 400}
    end
  end


  def read_params
    params.permit(:url)
  end

end
