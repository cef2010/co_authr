require 'rails_helper'

RSpec.describe PublicationsController, type: :controller do

  let(:user) { FactoryGirl.create(:user) }
  before(:each) do
    sign_in user
  end

  describe "GET #new" do
    it "returns http success" do
      get :new, user_id: user.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "creates a pub" do
      pub_params = {user_id: user.id,  publication: { title: "Do good in school"} }
      post :create, pub_params
      expect(Publication.count).to eq(1)
    end

    it "renders new template on error" do
      pub_params = {user_id: user.id, publication: { title: nil} }
      post :create, pub_params
      expect(response).to render_template('new')
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      pub_params = {user_id: user.id, title: "Do good in school"}
      pub = Publication.create(pub_params)
      edit_params = {user_id: user.id, id: pub.id}
      get :edit, edit_params
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT #update" do
    it "updates a pub" do
      pub_params = {user_id: user.id, title: "Do good in school"}
      pub = Publication.create(pub_params)
      update_params = { user_id: user.id, id: pub.id, publication: {title: 'BUNNY'}}
      put :update, update_params
      pub = pub.reload
      expect(pub.title).to eq('BUNNY')
    end

    it "renders edit on error" do
      pub_params = {user_id: user.id, title: "Do good in school"}
      pub = Publication.create(pub_params)
      update_params = { user_id: user.id, id: pub.id, publication: {title: nil}}
      put :update, update_params
      pub = pub.reload
      expect(response).to render_template('edit')
    end
  end

end
