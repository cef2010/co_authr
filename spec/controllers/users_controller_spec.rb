require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let(:user) { FactoryGirl.create(:user) }
  before(:each) do
    sign_in user
  end
  # current_user

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, { id: user.id }
      expect(response).to have_http_status(:success)
    end
    it "shows another user page" do
      user2 = FactoryGirl.create(:user)
      get :show, { id: user2.id }
      expect(response).to have_http_status(:success)
    end
  end


end
