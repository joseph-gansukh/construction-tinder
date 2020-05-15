class MaterialsController < ApplicationController
    def index
        materials = Material.all
        render json: materials
    end

    def create
        material = Material.create(material_params)
        render json: material
    end
        
    private
    def material_params
      params.require(:material).permit(:name, :qty, :location_id)
    end
end
