require 'test_helper'

#問い合わせ内容をメール送信する
class InquiryMailerTest < ActionMailer::Preview
  def inquiry
     inquiry = Inquiry.new(name: "sender", message: "問い合わせメッセージ")

     InquiryMailer.send_mail(inquiry)
   end
end
