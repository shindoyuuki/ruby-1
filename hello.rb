require "csv" # csvファイル読み込み

puts "1(新規でメモを作成) 2(既存のメモを編集する)"
memo_type = gets.to_s 

if memo_type == "1"
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets
  f = File.open("#{file_name}.csv", "w") # w'で書き込みの命令を行っています
  
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dを押してください"
  memo_message = STDIN.read
  f.puts ("#{memo_message}") 
  
else memo_type = "2"
  puts "編集したいファイル名(拡張子を除いた)を入力してください"
  file_name = gets
  f = File.open("#{file_name}.csv", "a") #aで追加の、命令
  
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + D押してください"
  memo_message = STDIN.read
  f.puts ("#{memo_message}")
  
end


# 参考サイト→ https://uxmilk.jp/19202 #

# getsメソッドは、ユーザーがキーボードで入力した値を文字列として取得するメソッドです。返り値はユーザーが入力した値の文字列オブジェクトになります。#

# gets.chompなどのようにして、改行文字を削っておく#

#getsメソッドは、キーボードからの入力文字を、1行しか取得できませんでした。しかし、readlinesメソッドを使用すれば、複数行のキーボードからの入力文字を取得できます。
#redalinesは、複数行の文字列を、1行ごとの配列として取得します。配列の要素は、1行分の文字列です。注意点として、getsと違い、改行を入力しても、キーボードからの入力は終了しないということです。
#代わりに、キーボードからの入力を終了するには、「Ctrl+D（あるいはCTRL+Z）」を入力します。 


#ファイルを丸ごと読み取りたい場合は、readを使う。
#readに引数として読み取るバイト数を指定すると、指定されたバイト数分を標準入力から読み取る。
#バイト数が未指定の場合、EOFまでの読み取った値を文字列で返す。

