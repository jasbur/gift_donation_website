class ChildrenController < ApplicationController
before_filter :authenticate, :except => [:donation_request, :update_donor]

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "admin" && password == "Pfeltats13"
    end
  end
  
  def index
  end

  def new
  end
  
  def create
    child = Child.new
    
    child.name = params[:name]
    child.wish_gift = params[:wish_gift]
    child.age = params[:age]
    child.shoe_size = params[:shoe_size]
    child.pant_size = params[:pant_size]
    child.shirt_size = params[:shirt_size]
    
    if child.save
      @save_result = true
      redirect_to :action => :index
    else
      @save_result = false
    end
  end
    
  def show
    @child = Child.find_by_id(params[:id])
    @donor = Donor.find_by_id(@child.donor_id)
  end
  
  def donation_request
    @child = Child.find_by_id(params[:id])
  end

  def edit
    @child = Child.find_by_id(params[:id])
  end
  
  def update
  end

  def delete_child_record
    child = Child.find_by_id(params[:id])
    
    child.destroy
    
    redirect_to :action => :index 
  end

  def update_child
    child = Child.find_by_id(params[:child_id])
        
    child.update_attribute(:name, params[:name])
    child.update_attribute(:age, params[:age])
    child.update_attribute(:wish_gift, params[:wish_gift])
    child.update_attribute(:shoe_size, params[:shoe_size])
    child.update_attribute(:pant_size, params[:pant_size])
    child.update_attribute(:shirt_size, params[:shirt_size])
    
    redirect_to :action => :search, :id => ""
  end

  def update_donor
    @everything_worked = false
    donor = Donor.new
    child = Child.find_by_id(params[:child_id])
    
    donor.first_name = params[:first_name]
    donor.last_name = params[:last_name]
    donor.email = params[:email]
    donor.phone = params[:phone]
    donor.street_address  = params[:street_address]
    donor.city = params[:city]
    donor.zip_code = params[:zip_code]
    donor.child_id = child.id
    
    if donor.save
      if child.update_attribute(:donor_id, donor.id)
        @everything_worked = true
      end
    end
    
  end

  def search
    query = params[:query]
        
    if query == ''
      @children = Child.find(:all)
      @children.sort! { |a,b| a.name.downcase <=> b.name.downcase }
    else
      @children = Child.where(['name like ?', "%#{query}%"]).all
      @children.sort! { |a,b| a.name.downcase <=> b.name.downcase }
    end
  end

end
