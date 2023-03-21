class UsersController < ApplicationController
    def show
        render json: User.find(params[:id]), except: [:updated_at, :created_at], include: { items: { except: [:updated_at, :created_at, :user_id] } }
    end
end
