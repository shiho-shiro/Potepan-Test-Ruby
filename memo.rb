require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1
	puts "拡張子を除いたファイルを入力してください"
	file_n = gets.chomp
    CSV.open("#{file_n}.csv","w") do |new_f|
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dをおしてください"
    memo = gets.chomp
    new_f << ["#{memo}"]

end
elsif memo_type == 2
    puts "既存のメモを編集します"
    puts "拡張子を除いた編集したいファイルを入力してください"
    file_e = gets.chomp
    CSV.open("#{file_e}.csv","a") do |re_f|
    puts "編集したい内容を記入してください"
    puts "完了したらCtrl + Dをおしてください"
    memo = gets.chomp
    re_f << ["#{memo}"]
end
end