class StudiesController < ApplicationController
    before_action :authenticate_user!, except: [:show, :index]
    def index
      @studies = Study.all
    end
  
    def show
      @study = Study.find(params[:id])
    end
  
    def new
      @study = Study.new
    end
  
    def create
      @study = Study.new(
                    name: params[:name],
                    location: params[:location],
                    major: params[:major],
                    type: params[:type],
                    start: params[:start],
                    end: params[:end],
                    gpa: params[:gpa],
                    user_id: current_user.id
                    )
      if @study.save
        flash[:success] = "Study added!"
        redirect_to "/studies/#{@study.id}"
      else
        flash[:error] = "Error(s) encountered. See below"
        render 'new'
      end
    end
  
    def show
      @study = Study.find(params[:id])
    end
  
    def edit
      @study = Study.find(params[:id])
    end
  
    def update
      @study = Study.find(params[:id])
      if @study.update(
                acaname: params[:acaname],
                location: params[:location],
                focus: params[:focus],
                degree: params[:degree],
                startdate: params[:startdate],
                enddate: params[:enddate],
                description: params[:description],
        )
        flash[:notice] = "Study edited"
        redirect_to "/studies/#{@study.id}"
      else
        flash[:error] = "That didn't work."
        render 'edit'
      end
    end
  
    def destroy
      @study = Study.find(params[:id])
      @study.destroy
      flash[:danger] = "Study removed"
      redirect_to "/studies/"
    end
  end
  