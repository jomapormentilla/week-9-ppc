class PartiesController < ApplicationController
    def index
        @parties = Party.all
    end

    def new
        @party = Party.new
        @party.party_supplies.build.build_supply
        @party.party_supplies.build.build_supply
    end

    def create
        byebug
        @party = Party.new(party_params)
        if @party.save 
            redirect_to party_path(@party)
        else
            render :new
        end
    end

    def show
        @party = Party.find(params[:id])
    end
    
    private
    
    def party_params
        params.require(:party).permit(:date, :budget, :name, supply_ids: [], party_supplies_attributes: [ :quantity, supply_attributes: [ :name ] ])
    end
end
