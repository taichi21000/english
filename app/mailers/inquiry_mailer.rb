class InquiryMailer < ApplicationMailer
    #システム管理者にメールを送信

    def send_mail(inquiry)
      @inquiry = inquiry
      mail(
        from: 'system@example.com',
        to:   'express_english_contact@gmail.com',
        subject: 'お問い合わせ通知'
      )
    end
end
