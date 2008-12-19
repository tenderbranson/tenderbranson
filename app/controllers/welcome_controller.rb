class WelcomeController < ApplicationController
  def index
    render :text => "Hello<br />#{Time.now}"
  end

  def sleep
    sleep(params[:time] || 2)
    render :text => 'done'
  end
end
