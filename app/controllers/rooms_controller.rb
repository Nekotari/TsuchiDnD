class RoomsController < ApplicationController
  before_action :set_room, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:show]

  def index
    @rooms = current_user.rooms
  end

  def new
    @room = current_user.rooms.build
  end

  def create
    @room = current_user.rooms.build[room_params]
    if @room.save
      redirect_to listing_room_path(@room), notice: "The property is saved!"
    else
      render :new, notice: "Something went wrong"
    end
  end

  def show

  end

  def listing
  end

  def pricing
  end

  def description
  end

  def location
  end

  def update
    if @room.update(room_params)
      flash[:notice] = "The property is saved!"
    else
      flash[:notice] = "Something went wrong"
    end
    redirect_back(fallback_location: request.referer)
  end

  private
  def room_params
    params.require(:room).permit(:property_type, :country, :city, :detailed_address, :description, :price)
  end
  def set_room
    @room = Room.find(params[:id])
  end
end