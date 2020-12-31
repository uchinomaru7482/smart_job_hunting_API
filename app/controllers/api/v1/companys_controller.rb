module Api
  module V1
    class CompanysController < ApplicationController
      def index
        companys = Company.all
        render json: companys
      end
    
      def create
        company = Company.new(company_params)
    
        if company.save
          render json: company
        else
          render json: company.errors
        end
      end
    
      def update
      end
    
      def delete
      end
    
      private
    
      def company_params
        params.require(:company).permit(:name, :progress, :motivation, :remarks)
      end
    end
  end
end
