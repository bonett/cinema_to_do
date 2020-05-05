module Api
    module V1
        class PeopleController < ApplicationController
            before_action :find_person, only: [:show, :update, :destroy]

            def index
                @person = Person.all
                render_person
            end
        
            def create
                @person = Person.new(permit_params)
                if @person.valid?
                    @person.save!
                    render_person(:created)
                else
                    render json: { errors: @person.errors.messages }, status: :unprocessable_entity
                end
            end
        
            def show
                render_person
            end
        
            def update
                if @person.update(permit_params)
                    render_person
                else 
                    render json: { errors: @person.errors.messages }, status: :unprocessable_entity
                end
            end
        
            def destroy
                @person.destroy
                render json: {}
            end

            private

            def permit_params
                params.require(:person).permit(:name, :last_name)
            end

            def find_person
                @person = Person.find(params[:id])
            end

            def render_person(status = 200)
                render json: @person, status: status
            end
        end
    end
end