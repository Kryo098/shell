#!/bin/bash // シバン　bash 実行の宣言

echo "Hello World"

# パスを通すとはファイル名を指定するだけでmow.shを実行するという意味

# source コマンドで実行した場合、実行したシェルから起動する。
# スクリプト内でcdコマンドを行なっていれば、スクリプト実行後、ディレクトリを移動された状態になる

# シェル変数
set

# 指定した変数の設定を表示
set | grep hoge

# 変数に値を設定 空白は入れない
hoge="hogehoge"
foo="foooo!"
# 変数の定義を削除
unset hoge

# 変数の出力
echo foo
echo '$foo' # '' シングルでは出力されない
echo "$foo"
echo ${foo}

# 制御構造
# if
if [ 1 -ge 2 ]
  then
  echo "AAA"
  else
  echo "BBB"
fi

# case
x=BBB
case $x in
      AAA)
        echo "AAA"
        ;;
      BBB)
        echo "BBB"
        ;;
      CCC)
        echo "CCC"
        ;;
      *)
        ;;
esac

# for
for i in `fo 10 15`
do
    echo $i
done

#########