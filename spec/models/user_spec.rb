require 'rails_helper'

RSpec.describe User, type: :model do
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
