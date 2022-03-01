class WeaponsController < ApplicationController
    before_action :set_weapon, only: [:show, :edit, :update, :destroy]
    before_action :authorize_weapon
    def index
      @weapons = Weapon.all
    end

    def show
      
    end

    def new 
      @weapon = Weapon.new
    end

    def create
      @weapon = Weapon.new(params.require(:weapon).permit(:name))
      if @weapon.save 
        redirect_to weapons_path
      else
        render :new
      end
    end

    def edit
      
    end

    def update
        if @weapon.update(params.require(:weapon).permit(:name))
            redirect_to weapons_path
        else
            render :edit
        end
    end

    def destroy
      if @weapon.destroy
        redirect_to weapons_path
      end
    end

    private 
    def authorize_weapon
      authorize Weapon
    end
    
    def set_weapon
        @weapon = Weapon.find(params[:id])
    end
end
