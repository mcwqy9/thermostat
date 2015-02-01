class TemperatureReadingsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
  end

  def create
    render text: "the spice is flowing"
  end
end
