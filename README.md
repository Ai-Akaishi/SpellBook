# Spell Book

This Datapack allows you to execute the command corresponding to a spell written in a book.  
本に呪文を書き込むことで呪文と対応するコマンドを実行させられるデータパック  

## 動作確認済みバージョン / Verified minecraft versions

- 1.19.3

## 使い方 / How To Use

### 呪文の登録 / Register Callback

```json
呪文に対応するファンクションの登録  
Registration of a function to be called as a spell  
  
> spell/tags/functions/spells.json  
{  
    "values": [  
        "your_datapack:function_you_want_to_run"  
    ]  
}  
```
  
```nim
呼び出されたファンクションの区別  
Check to see if your function was called.  
  
> your_datapack/functions/function_you_want_to_run.mcfunction  
execute if data storage spell: {spell:"your spell"} run function your_datapack:function_to_be_performed_as_the_spell
```

呪文が実行できた時は、呼び出された呪文名をリセットすることで、使用した本もリセットされます。  
When a spell can be performed, resetting the invoked spell name also resets the book used.

```nim
呼び出された呪文のリセット  
Reset the called spell  
> your_datapack/functions/function_you_want_to_run.mcfunction  
data remove storage spell: spell  
<続けて好きなコマンドを書く / write favorite commands here.>
```

### 呪文の詠唱 / How to spell

本と羽ペンの１ページ目に対応する呪文だけを書いて完了する。
Write only the corresponding spell on the first page of the Book-and-Quill and click Complete.

## 連絡はこちら/Contact

<https://twitter.com/AiAkaishi>

## ライセンス/LICENSE

These codes are released under the MIT License, see LICENSE.
