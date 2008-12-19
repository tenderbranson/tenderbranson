class WelcomeController < ApplicationController
  def index
    render :text => "Hello<br />#{Time.now}"
  end

  def wait
    sleep(params[:t] ? params[:t].to_i : 2)
    render :text => 'done'
  end
end
