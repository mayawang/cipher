class EncodingsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  # prevent from calling sth outside the app.

  def index

  end

  def new
  end

  def show
    # params ={'message'=> 'hello world', "shift" => "s"}
    @message = Caesar.encode(params[:shift], params[:message])
  end
end
