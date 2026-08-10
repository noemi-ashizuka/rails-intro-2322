class PagesController < ApplicationController
  def about
    # by default this renders the view called about.html.erb inside the pages folder
  end

  def contact

    @members = ["doug", "noemi", "sasha", "sylvain", "scooter"]
    
    if params[:member] # it's either a string or nil
      @members = @members.select { |member| member.start_with?(params[:member].downcase) }
    end

    # http://localhost:3000/contact?member=doug
    # the query is stored into the params hash {"member"=>"doug"}
  end

  def home
  end
end
