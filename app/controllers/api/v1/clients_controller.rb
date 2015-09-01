class Api::V1::ClientsController < ApplicationController
    
    before_action :authenticate_user!
    
    def show
        client = Client.where(show_params).first
        if client == nil
            render nothing: true, status: :service_unavailable
        else
            if client[:user_id] == current_user[:id]
                render nothing: true, status: :ok
            else
                render nothing: true, status: :unauthorized
            end
        end
    end
    
    def create
        client = Client.new(create_params)
        client[:user_id] = current_user[:id]
        client.save!
        render json: client.as_json(only: [:name, :description]), status: :ok
    end
    
    def show_params
        params.permit(:id)
    end
    
    def create_params
        params.permit(:name, :description)
    end
end
