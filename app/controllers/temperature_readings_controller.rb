class TemperatureReadingsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
  end

  def create
    TemperatureReading.create!(temperature_reading_params)
    render text: "the spice is flowing"
  end

  private

  def temperature_reading_params
    params.require(:temperature_reading).permit(:station_name,
                                                :station_id,
                                                :time,
                                                :reading,
                                               )
  end
end
