class HeroesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index 
        heroes = Hero.all 
        render json: heroes , status: :ok 
    end 

    def show 
        hero = Hero.find(params[:id])
        render json: hero, serializer: HeroWithPowersSerializer
    end 

    private 
    def render_not_found_response
        render json: { error: "Hero not found" }, status: :not_found
      end
end
