Q1--------------------------------------------

names = ["田中", "佐藤", "佐々木", "高橋","斎藤"]
puts names

Q2--------------------------------------------

array1 = %w(dog cat fish)
array2 = %w(bird bat tiger) 
array = array1 + array2
puts array

Q3--------------------------------------------

numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]
puts numbers.count(3)

Q4--------------------------------------------

sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]
puts sports.compact

Q5--------------------------------------------
b = []
puts b.empty?


a = [1,2,3,4]
puts a.empty?

Q6 --------------------------------------------
mapメソッド(別名collectメソッド)は、
ブロックの戻り値を集めた新しい配列を作る時に使われるメソッドs。

numbers1 = [1, 2, 3, 4, 5]

numbers2 = numbers1.map do |i|
   i * 10 
end

puts numbers2

Q7--------------------------------------------
array = ["1", "2", "3", "4", "5"]
puts array.to_a

8--------------------------------------------
programming_languages = %w(ruby php python javascript)

コードを追加
upper_case_programming_languages = %w(ruby php python javascript).map do |upper_case_programming_language|
    upper_case_programming_language.upcase
end

以下は変更しないで下さい
puts programming_languages
puts upper_case_programming_languages

9--------------------------------------------
names = ["田中", "佐藤", "佐々木", "高橋"]
index = 1
names.each do |name|
    puts "会員No.#{index} #{name}さん"
    index += 1
end

10-------------------------------------------- 
foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)
foods = %w(いか たこ  しゃけ ぎり 軍艦 丼)
if foods.include?("うに")
    p "好物です"
else
    p "まあまあです"
end


11--------------------------------------------
sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]
sports2 = sports.flatten
sports3 = sports2.uniq

index = 1
sports3.each do |sport|
    puts "No#{index} #{sport}"
    index += 1
end

12--------------------------------------------
data = { user: {name: "satou", age: 33} }
data2 = data.values
date3 = data2[0]
date4 = date3.values

p date4[0]

13--------------------------------------------

Q13. 次の user_data に，update_data の内容を反映させ，
user_data の内容を書き換え，出力して下さい。

user_data = { name: "神里", age: 31, address: "埼玉" }
update_data = { age: 32, address: "沖縄" }

p user_data.merge(update_data)

14--------------------------------------------
次の配列から全てのキーを取り出した配列を作成し，出力して下さい。
data = {
name: "satou", 
age: 33, 
address: "saitama", 
hobby: "soccer", 
email: "hoge@fuga.com"
}
p data.keys

15--------------------------------------------   
age というキーが含まれている場合は OK ，
含まれていない場合は NG という文字列が出力されるコードを書いて下さい。
data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
data2 = { name: "yamada", hobby: "baseball", role: "normal" }

if data1.include?(:age)
  p "OK"
end

if data2.include?(:age)
  p "OK"
else
  p "NG"  
end

p data1 && data2.include?(:age)
16--------------------------------------------
Q16. 次の配列の各要素について，
「私の名前は〜です。年齢は〜歳です。」と表示して下さい。
users = [
  { name: "satou", age: 22 },
  { name: "yamada", age: 12 },
  { name: "takahashi", age: 32 },
  { name: "nakamura", age: 41 }
]
users.each do |user|
    p "私の名前は#{user[:name]}です。年齢は#{user[:age]}歳です。"
end

17-------------------------------------------- !!!!!!

Q17. 次の Userクラス 内にコードを追加し，
期待する出力結果になるようにして下さい。
class User
    attr_accessor :name,:age,:gender,:admin

    def initialize(name:,age:,gender:,admin:)
       @name = name
       @age = age
       @gender = gender
       @admin = admin
    end
    
    def info
      p "名前：#{@name}"
      p "年齢：#{@age}"
      p "性別：#{@gender}"
      if @admin =  true 
        p "管理者権限：有り"  
      else
        p "管理者権限：無し"  
      end
    end
    
end
    
    user1 = User.new(name: "神里", age: 32, gender: "男", admin: true)
    user2 = User.new(name: "あじー", age: 32, gender: "男", admin: false)
    
    user1.info
    puts "-------------"
    user2.info
    


期待する出力結果

名前：神里
年齢：32
性別：男
管理者権限：有り
-------------
名前：あじー
年齢：32
性別：男
管理者権限：無し

18-------------------------------------------- 
Q18. 年齢を用いた場合分けを利用して，
期待する出力結果になるようなUserクラスを作成して下さい。
# コードを追加
class User
    def initialize(name:,age:)
      @name = name
      @age = age
    end
    
    def introduce
      if @age >= 30
        "こんにちは，#{@name}と申します。宜しくお願いいたします。" 
      else
        "はいさいまいど〜，#{@name}です！！！"
      end
    end
end

user1 = User.new(name: "あじー", age: 32)
user2 = User.new(name: "ゆたぼん", age: 10)

puts user1.introduce
puts user2.introduce

期待する出力結果
こんにちは，あじーと申します。宜しくお願いいたします。
はいさいまいど〜，ゆたぼんです！！！

19-------------------------------------------- 
Q19. 次のコードはエラーが出ます。
期待する出力結果となるようにコードを修正して下さい。
class Item

  def initialize(name:)
    @name = name
  end 

  def name
    @name
  end

end

book = Item.new(name: "ゼロ秒思考")
puts book.name

期待する出力結果
ゼロ秒思考

20-----------------------------------------------------------------------------------------
Q20. 次の仕様を満たした上で，期待する出力結果になるようにコードを追加して下さい。
年齢区分は，幼児(0〜5歳)，子供(6〜12歳)，成人(13〜64歳)，シニア(65〜120歳)
の4パターンとします。（この範囲外の年齢については対処しなくてOKです）
class User
   attr_accessor :name,:age

   def initialize(name:,age:)
      @name = name
      @age = age
   end   
end

class Zoo
    attr_accessor :entry_fee

    def initialize(**params)
 
      @entry_fee = params[:entry_fee]
    end

    def info_entry_fee(user)
      age = user.age
      case age
      when 0..5 
        price = @entry_fee[:infant]
      when 6..12 
        price = @entry_fee[:children]
      when 13..64 
        price = @entry_fee[:adult]
      else
        price = @entry_fee[:senior]
      end
      p  "#{user.name}さんの入場料金は #{price} 円です。"
    end
end

zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

users = [
  User.new(name: "たま", age: 3),
  User.new(name: "ゆたぼん", age: 10),
  User.new(name: "あじー", age: 32),
  User.new(name: "ぎん", age: 108)
]

users.each do |user|
  zoo.info_entry_fee(user)
end
期待する出力結果

たまさんの入場料金は 0 円です。
ゆたぼんさんの入場料金は 400 円です。
あじーさんの入場料金は 800 円です。
ぎんさんの入場料金は 500 円です。


# fin.
# fin2.
# fin3.










  






