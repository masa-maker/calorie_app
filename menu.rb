class Menu
  def initialize(user)
    @user = user
  end

  def user
    @user
  end

  def show_judge
    if self.user.sex == 1
      sex ="男性"
    else
      sex ="女性"
    end

    if self.user.judge == 1
      judge = "ダイエット"
    elsif self.user.judge == 2
      judge = "増量"
    else
      judge = "維持"
    end

    if self.user.active == 1
      active = "低"
    elsif self.user.active == 2
      active ="中"
    else
      active = "高"
    end

    puts "初めまして、私はダイエットコンシェルジュです。"
    puts "お客様の情報：【性別】#{sex} 【身長】 #{self.user.height}cm 【体重】 #{self.user.weight}kg 【年齢】 #{self.user.age}歳 【ご希望】 #{judge} 【アクティブ度】 #{active}でカロリー計算を行います。"
    puts "       "
  end

  def self.close
    puts "ご利用いただき、ありがとうございました！"
  end
end