class ReservationsController < ApplicationController
  before_action :authenticate_user!

  def create
    room = Room.find(params[:room_id])

    if current_user == room.user
      flash[:alert] = "You can not book your own property!"
    else
      check_in = Date.parse(reservation_params[:check_in])
      check_out =Date.parse(reservation_params[:check_out])
      days = (check_out - check_in).to_i + 1

      @reservation = current_user.reservations.build(reservation_params)
      @reservation.room = room
      @reservation.price = room.price
      @reservation.billing = room.price * days
      @reservation.save

      flash[:notice] = "Booked Successfully!"
    end
    redirect_to room
  end

  def guests_reservations
    @guests_reservations = current_user.reservations.order(check_in: :asc)
  end

  private

  def reservation_params
    params.require(:reservation).permit(:check_in, :check_out)
  end

end