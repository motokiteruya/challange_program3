class Monster < Character
  # モンスターの攻撃
  def attack_brave(brave)
    puts "#{@name}の攻撃"
    damage = @offense - brave.defense / 2
    brave.hp -= damage
    brave.hp = 0 if brave.hp < 0
    puts "#{brave.name}に#{damage}のダメージを与えた！"
  end
end