#> spell:check/right
# 右手の本に書き込んでそうなとき
### This software is released under the MIT License, see LICENSE.
### Copyright © 2023 赤石愛

## 連携のためのスペルをストレージにセット
data modify storage spell: spell set from entity @s SelectedItem.tag.pages[0]
## 連携用のファンクションタグを呼び出す
function #spell:spells

## もしコマンドを実行できた場合は、spell: spellをリセットしておいてもらう
## spell: spellがremoveされていたら、プレイヤーの持っている本の内容を消す
execute unless data storage spell: spell run item modify entity @s weapon.mainhand spell:clear
