class Api::V1::ReadsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    render json: Read.top_links
  end

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
