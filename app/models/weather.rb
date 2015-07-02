class Weather
  attr_reader :zip_code
  attr_reader :location

  def initialize(zip_code = "34102")
     @zip_code = zip_code
     @location ||= get_pretty_local_weather
  end

  private

  def api_call
    @w_api ||= Wunderground.new(ENV["WUG_CREDS"])
  end

  def local_weather
    api_call.conditions_for(@zip_code)
  end

  def get_pretty_local_weather
    local_weather["current_observation"]
  end

end
