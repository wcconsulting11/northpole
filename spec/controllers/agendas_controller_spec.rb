require 'rails_helper'
RSpec.describe AgendasController, type: :controller do
    describe 'agendas#index action' do
        it "should successfully show the page" do
            get :index
            expect(response).to have_http_status(:success)
        end
    end
    describe "agendas#new action" do
        it "should successfully show the new form" do
            get :new
            expect(response).to have_http_status(:success)
        end
    end
    
    describe "agenda#create action" do
    it "should successfully create a new agenda in our database" do
    post :create, params: { agenda: { place: "santas workshop"}}
    expect(response).to redirect_to root_path
    
    agenda = Agenda.last
    expect(agenda.place).to eq("santas workshop")
    end
end
    

end 