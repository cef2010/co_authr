class User < ActiveRecord::Base
  has_many :publications
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  def self.by_last_name(current_user)
    # find a way to grab current_user, rspec deoesn't like log_in for models
    users = self.where.not(id: current_user.id)
    users.order(:last_name)
  end

end
