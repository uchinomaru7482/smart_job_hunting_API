module Api
  module V1
    class CompanysController < ApplicationController
      def index
        companys = current_user.companys
        render json: companys
      end
    
      def create
        company = current_user.companys.build(company_params)
    
        if company.save
          render json: { status: :created, company: company }
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
