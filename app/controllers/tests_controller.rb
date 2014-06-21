class TestsController < ApplicationController
  def html
  end
  
  def submit_html
    @test = params[:test]
  end
  
  def form_tag
  end
  
  def submit_form_tag
    @test = params[:test]
  end
end
