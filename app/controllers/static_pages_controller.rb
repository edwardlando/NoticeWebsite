class StaticPagesController < ApplicationController
  layout "no_footer", :except => "home"

  def home
  end

  def about
  end

  def press
  end

  def terms
  end

  def privacy
  end

  def jobs
  end

  def contact
  end

  def download
  end
end
