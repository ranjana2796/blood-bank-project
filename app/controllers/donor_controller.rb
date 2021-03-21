class DonorController < ApplicationController
    before_action :authenticate_user!     

    def show
        @donor=Donor.find(params[:id])
    end    

    def index
        @donor= Donor.paginate(page: params[:page], per_page:4 )
    end 
    
    
    def new
        @donor=Donor.new

    
    end


    def create
        @donor=Donor.new(params.require(:donor).permit(:name,:bloodgroup,:dateofbirth,:location,:contact,:email,:bloodbank_id))
        
        if @donor.save
            # flash[:notice]="New Donor is added successfully!!"
            redirect_to donor_index_path, notice: "New Donor is added successfully!!"

        else
            redirect_to new_donor_path
        end  
        # save those details
    end    

    

    def edit
        #create the form with details
        @donor=Donor.find(params[:id])
    end

    
    def update
        @donor=Donor.find(params[:id])
        @donor.update(params.require(:donor).permit(:name,:bloodgroup,:dateofbirth,:location,:contact,:email,:bloodbank_id))
        @donor.save
        redirect_to donor_path
        #save the new details 
    end


    def destroy
        @donor=Donor.find(params[:id])
        @donor.destroy
        redirect_to donor_index_path

    end    

end
