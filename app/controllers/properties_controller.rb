class PropertiesController < ApplicationController

  def index
    @properties = Property.all
  end

  def create
    @property = current_user.properties.build(property_params)
  end
end
