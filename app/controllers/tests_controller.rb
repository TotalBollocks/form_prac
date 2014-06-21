class TestsController < ApplicationController
  def html
  end
  
  def submit_html
    @test = params[:test]
  end
end
