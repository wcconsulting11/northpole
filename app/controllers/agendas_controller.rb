class AgendasController < ApplicationController
 def index
    @agendas = Agenda.all
 end

 def new
   @agenda = Agenda.new
 end

 def create
   Agenda.create(agenda_params)
   redirect_to root_path
 end

 private

 def agenda_params
   params.require(:agenda).permit(:place, :location, :date)
 end

end
