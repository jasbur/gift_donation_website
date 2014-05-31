class DonorsController < ApplicationController
before_filter :authenticate
  
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "admin" && password == "Pfeltats13"
    end
  end 
 
  def index
    @donors = Donor.find(:all)
  end
  
  def show
    @donor = Donor.find_by_id(params[:id])
  end
  
  def mark_as_contacted
    donor = Donor.find_by_id(params[:id])
    
    donor.update_attribute(:contacted, params[:contacted])
    
    redirect_to :action => "index"
  end
  
end
