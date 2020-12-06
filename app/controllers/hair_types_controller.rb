class HairTypesController < ApplicationController

    def index
        hair_types = HairType.all
        render json: hair_types, only: [:id, :name, :img_url]
    end

    def show 
        # limit = (params[:limit] || 10).to_i
        # page = (params[:page] || 0).to_i
        # products = hair_type.products.all.map {|pr| pr } 
        # chunks = products.each_slice(limit).to_a
        # newHairType = chunks[page]
        hair_type = HairType.find(params[:id])

        render json: hair_type, only: [:id, :name, :img_url], include: {products: {only: [:id, :name, :img_url, :description]}}
        # render json: newHairType
    end

end
