class Calorie_calc

  def initialize(user)
    @user = user
  end

  def user
    @user
  end

  def basal_metabolic
    if self.user.sex == 1
       bm = (10 * self.user.weight) + (6.25 * self.user.height) - (5 * self.user.age) + 5
       puts "  "
       puts "【基礎代謝】お客様は１日何もしなくても『#{bm.floor}cal』消費します。"
       puts "  "
    else
       bm = (10 * self.user.weight) + (6.25 * self.user.height) - (5 * self.user.age) - 161
       puts "  "
       puts "【基礎代謝】お客様の１日何もしなくても『#{bm.floor}cal』消費します"
       puts "  "
    end 
    @bm = bm
  end

  def burn_cal

    if self.user.active == 1
      @burn_bm = @bm * 1.2
      puts "  "
      puts "【アクティブ度：低】1日の消費カロリーは『#{@burn_bm.floor}kcal』です。"
      puts "  "
    elsif  self.user.active == 2
      @burn_bm = @bm * 1.55
      puts "  "
      puts "【アクティブ度：中】1日の消費カロリーは『#{@burn_bm.floor}kcal』です。"
      puts "  "
    else
      @burn_bm = @bm * 1.75
      puts "  "
      puts "【アクティブ度：高】1日の消費カロリーは『#{@burn_bm.floor}kcal』です。"
      puts "  "
    end
    @aim_bm = @burn_bm
  end

  def aim_cal
     if self.user.judge == 1
      aim_bm = @aim_bm * 0.8
      puts "  "
      puts "【ダイエット向け】お客様の1日の目標摂取カロリーは『#{aim_bm.floor}kcal』です。"
      puts "  "
     elsif self.user.judge == 2
      aim_bm = @aim_bm * 1.2
      puts "  "
      puts "【増量】お客様の1日の目標摂取カロリーは『#{aim_bm.floor}kcal』です。"
      puts "  "
     else
      aim_bm = @aim_bm * 1
      puts "  "
      puts "【維持】お客様の1日の目標摂取カロリーは『#{aim_bm.floor}kcal』です。"
      puts "  "
     end
     $total_cal = aim_bm
  end
end