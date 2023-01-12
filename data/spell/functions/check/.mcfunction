#> spell:check/
# 本を操作したかどうかチェックする
### This software is released under the MIT License, see LICENSE.
### Copyright © 2023 赤石愛

## 右手に本がなくて、左手に本がある場合は、その本をチェック
execute unless data entity @s SelectedItem{id:"minecraft:writable_book"} if data entity @s Inventory[{Slot:-106b,id:"minecraft:writable_book"}] run function spell:check/left
## 右手に本があって本に何か書き込んだ時
execute if data entity @s Inventory[{id:"minecraft:writable_book"}] run function spell:check/right

## 本の利用スコアをリセット
scoreboard players reset @s TrySpellBook

## トリガー再有効化
advancement revoke @s only spell:check
