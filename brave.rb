#勇者の攻撃
class Brave < character
  def attack_monster(monster)
    
    monster_damage = @offense - monster.defense/2

    puts <<~TEXT
    #{@name}の攻撃！
    #{monster.name}に#{monster_damage}のダメージを与えた！
    TEXT
    #モンスターのHPは受けたダメージ分減る、HPが０になると終了する
    if monster.hp > monster_damage
       monster.hp -= monster_damage
    else
       monster.hp = 0
    end
  end
end
