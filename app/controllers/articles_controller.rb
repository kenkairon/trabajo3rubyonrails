class ArticlesController < ApplicationController
  def index
     @articles = Articulo.all
  end  

  def new
    @articles = Articulo.new
  end

  def create
     @articles = Articulo.new(contact_params)
    @articles.save
    if @articles
      redirect_to root_path
    end
  end

   def contact_params
     params.require(:articulo).permit(:titulo,:contenido,:publicado) 
   end
end
