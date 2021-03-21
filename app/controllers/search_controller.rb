class SearchController < ApplicationController
    before_action :authenticate_user!
 
    def index
    end

    def results
        @donor = Donor.where('name LIKE ?', "%#{params[:q]}%")
    end
end
