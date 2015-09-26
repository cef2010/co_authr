require 'rails_helper'

RSpec.describe User, type: :model do

  let!(:user) { FactoryGirl.create(:user) }
  let!(:user1) { FactoryGirl.create(:user, first_name: 'User1', last_name: 'Z') }
  let!(:user2) { FactoryGirl.create(:user, first_name: 'User2', last_name: 'X') }
  let!(:user3) { FactoryGirl.create(:user, first_name: 'User3', last_name: 'Y') }

  describe 'attributes' do
    it { should respond_to :first_name }
    it { should respond_to :last_name }
    it { should respond_to :email }
    it { should respond_to :password }
    it { should respond_to :password_confirmation }
    it { should respond_to :turn_ons }
    it { should respond_to :turn_offs }
    it { should respond_to :university }
    it { should respond_to :dept }
    it { should respond_to :matches }
    it { should respond_to :about_me }
  end

  describe 'model methods' do

    it 'sorts users, and excludes current_user' do

      user_array = User.by_last_name(user)
      expect(user_array[0]).to eq(user2)
      expect(user_array[1]).to eq(user3)
      expect(user_array[2]).to eq(user1)
      expect(user_array).not_to include(user)
    end
  end
end
