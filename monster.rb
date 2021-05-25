class Monster < Character
  # モンスターの攻撃
  def attack_brave(brave)
    brave_damage = @offense - brave.defense/2
    puts <<~TEXT
    #{@name}の攻撃！
    #{brave.name}は#{brave_damage}のダメージを受けた！
    TEXT
    # ゆうしゃのHPはダメージ受けた分減る、HPが０になると終了する
    if brave.hp > brave_damage
       brave.hp -= brave_damage
    else
       brave.hp = 0
    end
  end
end