class HairTypesController < ApplicationController

    def index
        hair_types = HairType.all
        render json: hair_types, only: [:id, :name], include: {hair_type_products: {only: [:id, :name]}}
    end

end
