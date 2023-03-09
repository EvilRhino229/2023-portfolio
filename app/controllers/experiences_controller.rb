class ExperiencesController < ApplicationController
    before_action :authenticate_user!, except: [:show, :index]
    
    def index
      @experiences = Experience.all
    end
  
    def show
      @experience = Experience.find(params[:id])
    end
  
    def new
      @experience = Experience.new
    end
  
    def create
      @experience = Experience.new(
                    expname: params[:expname],
                    title: params[:title],
                    description: params[:description],
                    years: params[:years],
                    user_id: current_user.id
                    )
      if @experience.save
        flash[:success] = "Experience added!"
        redirect_to "/experiences/#{@experience.id}"
      else
        flash[:error] = "Oops."
        render 'new'
      end
    end
  
    def edit
      @experience = Experience.find(params[:id])
    end
  
    def show
      @experience = Experience.find(params[:id])
    end
  
    def update
      @experience = Experience.find(params[:id])
      if @experience.update(
                    expname: params[:expname],
                    title: params[:title],
                    description: params[:description],
                    years: params[:years],
        )
        flash[:notice] = "Experience edited"
        redirect_to "/experiences/#{@experience.id}"
      else
        flash[:error] = "That didn't work."
        render 'edit'
      end
    end
  
  
    def destroy
      @experience = Experience.find(params[:id])
      @experience.destroy
      flash[:danger] = "Experience removed"
      redirect_to "/experiences/"
    end
  end
  