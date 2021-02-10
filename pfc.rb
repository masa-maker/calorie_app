class Pfc_balance
  def initialize(user)
    @user = user
  end

  def user
    @user
  end

  def protain
    @pro_g = self.user.weight * 2
    @pro_cal = @pro_g * 4
  end

  def fat
    @fat_cal = $total_cal * 0.25
    @fat_g = @fat_cal / 9
  end

  def carb
    @carb_cal = $total_cal - @fat_cal - @pro_cal
    @carb_g = @carb_cal / 4
  end

  def show
    puts "総摂取カロリーのPFCバランス"
    puts "【P:#{@pro_g.floor}g】 【F:#{@fat_g.floor}g】 【C:#{@carb_g.floor}g】"
  end
end