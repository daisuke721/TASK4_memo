require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.chomp

if memo_type == "1"
    puts "拡張子を除いたファイルを入力してください"

    file_name = gets.chomp

    puts "メモした内容を記入してください"
    puts "完了したら Ctrl + D をおします"

    memo_text = STDIN.read

    CSV.open("#{file_name}.csv","w") do |csv|
        csv << ["#{memo_text}"]
    end

else memo_type == "2"
    puts "編集するファイル名を入力してください"
    file_name = gets.chomp

    puts "編集するメモ内容を入力してください"
    puts "完了したら Ctrl + D をおします"

    memo_text = STDIN.read

    CSV.open("#{file_name}.csv","a") do |csv|
        csv << ["#{memo_text}"]
    end
end
