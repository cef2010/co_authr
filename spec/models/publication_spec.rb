require 'rails_helper'

RSpec.describe Publication, type: :model do
  it { should respond_to :title }
  it { should respond_to :abstract }
  it { should respond_to :author_list }
  it { should respond_to :link_to_pub }
end
