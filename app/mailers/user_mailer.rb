class UserMailer < ApplicationMailer
  def order_placed_email(user, order)
    @user = user
    @order = order
    @url = 'http://localhost:3000/'
    mail(to: @user.email, subject: "Jungle-order: #{@order.id}")
  end 
end
