class PictureMailer < ApplicationMailer
  def picture_mail(picture)
    @picture = picture
    mail to: "kimitaro0415@gmail.com", subject: "投稿確認のメール"
  end
end
