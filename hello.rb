require "csv"
puts "1(新規でメモを作成)または2(メモを追加する)を選んでください"        
memo_type = gets.chomp                          

if memo_type == "1"
  puts "拡張子を除いたファイル名を入力してください"
  file_name = gets.chomp                        
  puts "メモしたい内容を入力してください。入力が終わったらenterを押してください。"
  memo_text = gets.chomp  
  # 下のcsvは決まった文#
CSV.open("#{file_name}.csv", 'w') do |test|
  test << ["#{memo_text}"]
end
elsif memo_type == "2"
  puts "追記したいファイル名を入力してください"
  file_name = gets.chomp 
  puts "追加したい内容を入力してください。入力が終わったらenterを押してください。"
  add_memo = gets.chomp 
  # 下のcsvは決まった文#
  CSV.open("#{file_name}.csv", 'a') do |test|
  test << ["#{add_memo}"]
end 
else
  puts "エラー"
end


# 参考サイト→ https://uxmilk.jp/19202 #

# getsメソッドは、ユーザーがキーボードで入力した値を文字列として取得するメソッドです。返り値はユーザーが入力した値の文字列オブジェクトになります。#
# gets.chompなどのようにして、改行文字を削っておきましょう。 ???#