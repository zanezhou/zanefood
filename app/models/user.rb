class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def admin?
    self.role == "admin"
  end

  def show_name
   "#{self.email} (#{self.role_name})"
  end

  def role_name
    return "Admin" if admin?
    return "User"
  end
end
