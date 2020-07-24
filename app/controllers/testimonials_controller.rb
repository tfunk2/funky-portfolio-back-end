class TestimonialsController < ApplicationController
    def index
        @testimonials = Testimonial.all
        render json: @testimonials
    end

    def show
        @testimonial = Testimonial.find(params[:id])
        render json: @testimonial
    end

    def create
        @new_testimonial = Testimonial.create(params[:name], params[:comment])
        render json: @new_testimonial
    end
    
    def update
        found_testimonial = Testimonial.find(params[:id])
        @updated_testimonial = found_testimonial.update(params[:name], params[:comment])
        render json: @updated_testimonial
    end
    
    def destroy
        found_testimonial = Testimonial.find(params[:id])
        @deleted_testimonial = found_testimonial.destroy
        render json: @deleted_testimonial
    end
end
