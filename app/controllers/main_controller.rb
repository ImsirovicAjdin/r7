class MainController < ApplicationController
  
  def index
    # render('about')
  end

  def about
    # render('index')
  end

  def hello
    redirect_to(action: 'index')
  end

end
