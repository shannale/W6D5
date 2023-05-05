class CatsController < ApplicationController

    def index 
        @cats = Cat.all 
    end

    def show 
        @cat = Cat.find(params[:id])
    end

    def new
        @cat = Cat.new
        render :new
    end

    def create
        @cat = Cat.new(cat_params)
        if @cat.save 
            redirect_to cats_url
        else  
            @errors = @cat.errors.full_messages
            render :new
        end
    end

    def edit 
        @cat = Cat.find(params[:id])
        render :edit
    end

    def update 
        @cat = Cat.find(params[:id])
        if @cat.update(cat_params)
            redirect_to cat_url(@cat) 
        else 
            @errors = @cat.errors.full_messages
            render :edit 
        end 
    end


    private 
    
    def cat_params
        params.require(:cats).permit(:birth_date, :color, :name, :sex, :description)
    end
end
