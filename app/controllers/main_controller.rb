class MainController < ApplicationController
  
  def index
    # render('about')
  end

  def about
    @created_by = "Ajdin"
    @id = params['id']
    @page = params[:page]
    # render('index')
  end

  def hello
    redirect_to(action: 'index')
  end

end

# Now let's examine how to read those params inside a controller