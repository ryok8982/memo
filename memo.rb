require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i
array = []

if memo_type == 1
  puts "拡張子を除いたファイルを入力してください。"
  file_name = gets.chomp + ".csv"
  puts "メモしたい内容を記入してください。"
  puts "完了したら　Ctrl + D を押します。"
  
  array << $stdin.read
  
  CSV.open(file_name, "w") do |csv|
        csv << array
    end
    
elsif memo_type == 2
    puts "既存のメモの拡張子を除いたファイル名を入力してください"
    file_name = gets.chomp + ".csv"
    puts "追記したい内容を記入してください"
    puts "完了したらCtrl + Dをおします"
    
    array << $stdin.read
    
    CSV.open(file_name, "a") do |csv|
        csv << array
    end
    
else
    puts "1か2を押してください。"
end