class WelcomeController < ApplicationController
  def index
    render :text => "Hello<br />#{Time.now}"
  end
end
