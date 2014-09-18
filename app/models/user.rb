class User < ActiveRecord::Base

has_many :questions
has_many :answers, through: :questions
has_many :votes

has_secure_password

validates :name, presence: true
validates :password, presence: true
validates_uniqueness_of :email

private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
