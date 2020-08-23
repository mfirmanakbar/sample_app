class ApplicationController < ActionController::Base
  def hello
    render html: "hello, hi"
  end
end
