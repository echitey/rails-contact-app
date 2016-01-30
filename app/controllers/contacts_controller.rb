class ContactsController < ApplicationController
  before_action :find_contact, only: [:edit,:show,:update,:delete]

  def index
    #TO SERVE THE CONTACTS LIST
    @contacts = Contact.all
  end

  def new
    #TO SERVE A NEW CONTACT CREATION FORM
    @contact = Contact.new
  end

  def edit
    #TO SERVE A CONTACT EDITION FORM
  end

  def show
    #TO SERVE A CONTACT EDITION FORM
  end

  def create
    #TO CREATE A CONTACT FROM THE NEW CONTACT FORM DATA
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to @contact
    else
      render 'new'
    end
  end

  def update
    #TO UPDATE AN EXISTING CONTACT FROM THE EDIT CONTACT FORM
    if @contact.update(contact_params)
      redirect_to @contact
    else
      render 'edit'
    end
  end

  def destroy
    #TO DELETE AN EXISTING CONTACT
    @contact.destroy
    redirect_to contacts_path
  end

  private
  def contact_params
    #WHITELIST THE CONTACT PARAMS
    params.require(:contact).permit(:firstname, :lastname, :phone, :email)
  end

  def find_contact
    @contact = Contact.find(params[:id])
  end

end
