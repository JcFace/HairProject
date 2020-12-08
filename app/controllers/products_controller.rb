class ProductsController < ApplicationController

    def index
        products = Product.all
        render json: products, only: [:id, :name, :description]
    end

    def create
        # debugger
        # products = Product.all
        product = Product.create(name: params[:name], img_url: params[:image], description: params[:description], hair_type_id: params[:hair_type_id])
        render json: product
    end
    
    def update
        # byebug
        product = Product.find(params[:id])
        product.update(description: params[:description])
        render json: product
    end

    def destroy
        product = Product.find(params[:id])
        product.delete
        render json: {alert: 'Product has been deleted'}
    end
    
end
