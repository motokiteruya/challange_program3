require "./character.rb"
require "./brave.rb"
require "./monster.rb"

brave = Brave.new(name: "勇者", hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: "スライム", hp: 210, offense: 140, defense: 80)

puts "#{monster.name}が現れた！"

loop do
  #勇者の攻撃
  brave.attack_monster(monster)
  #モンスターの攻撃（モンスターのHPが０より大きい時）
  monster.attack_brave(brave) if monster.hp > 0
  #HP表示（残り）
  puts <<-TEXT
*=*=*=*=*=*=*=*=*=*=
"【#{brave.name}】HP: #{brave.hp}"
"【#{monster.name}】HP: #{monster.hp}"
*=*=*=*=*=*=*=*=*=*=*
      TEXT
  #ループ終了
  break if brave.hp == 0 || monster.hp == 0
end

if brave.hp == 0
  puts "#{brave.name}は死んだ"
else
  puts "#{monster.name}をやっつけた！！"
end