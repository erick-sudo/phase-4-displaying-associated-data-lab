class ItemsController < ApplicationController
    def index
        render json: Item.all, include: {user: { except: [:updated_at, :created_at] } }, except: [:updated_at, :created_at, :user_id]
    end
end
