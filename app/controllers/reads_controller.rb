class ReadsController < ApplicationController

  def index
    @top_links = Read.top_links
  end
end
