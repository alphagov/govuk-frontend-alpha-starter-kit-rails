class PageController < ApplicationController
  def index
  end

  def page
    # If a matching page template exists in `app/views/page` it will be rendered
    # For a a new page at '/page/start' create `start.html.erb` in the above dir
    params[:id]
  end
end
