require "./calc"
require "./menu"
require "./pfc"
require "./user"

puts "_________________________"
puts " "
puts " "
puts "     Calorie__Maker      "
puts " "
puts "_________________________"
puts " "

while true
puts "【1】男性【2】女性 半角数字を選択ください 例： 2"
sex = gets.to_i
  if sex != 1
    if sex != 2
      redo
    end
  end
  break
end

puts "身長を半角数字整数cmで入力してください 例: 175"
height = gets.to_i

puts "体重を半角数字整数kgで入力してください 例: 63"
weight = gets.to_i

puts "年齢を半角数字で入力してください 例：27"
age = gets.to_i

while true
  puts "あなたの1日の活動量を半角数字で入力してください\n【1】座り仕事が多く1日の運動は階段を上がったりする程度\n【2】立ち仕事や重労働が多く、比較的1日中動き回っている\n【3】立ち仕事や重労働が多く、それに加えジムでのトレーニングや運動をしている"
  active = gets.to_i
  if active != 1
    if active != 2
      if active != 3
        redo
      end
    end
  end
  break
end

while true
puts "【1】痩せたい【2】太りたい【3】維持したい 半角数字で選択してください 例： 1"
judge = gets.to_i
if judge != 1
  if judge != 2
    if judge != 3
      redo
    end
  end
end
break
end

user=User.new(sex,height,weight,age,judge,active)


menu = Menu.new(user)
menu.show_judge

cal = Calorie_calc.new(user)
cal.basal_metabolic
cal.burn_cal
cal.aim_cal

pfc = Pfc_balance.new(user)
pfc.protain
pfc.fat
pfc.carb
pfc.show

Menu.close