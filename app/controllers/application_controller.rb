class ApplicationController < ActionController::Base
  before_action do
    Prosopite.scan
  end

  after_action do
    Prosopite.finish
  end

  include Pagy::Backend
end
