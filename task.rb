p "Вывести индексы массива в том порядке, 
в котором соответствующие им элементы образуют возрастающую последовательность."
puts "Начальный массив:" 
p array=[-1,-6,4,7,8,2] 
puts "Новый массив:" 
p (0...array.size).to_a.sort_by{|v| array[v]}

p "Найти все индексы, по которым располагается максимальный элемент."
puts "Начальный массив:" 
p array=[-1,-6,4,7,8,2] 
puts "Новый массив:" 
p (0...array.size).find_all{|x| array[x]==array.max}

p "В численном массиве найти сумму отрицательных элементов."
puts "Начальный массив:" 
p array=[-1,-6,4,7,8,2] 
puts "Новый массив:" 
p array.inject(0){ |res,elem| elem < 0? res + elem : res}

p "Поменять первый и последний столбец массива местами."
puts "Начальный массив:" 
p array=[[-1,-6],[4,7],[8,2]] 
array= array.transpose
array[-1],array[0]=array[0],array[-1]
puts "Новый массив:" 
p array.transpose

p "Упорядочить строки,
если они не отсортированы и перемешать, если они отсортированы."
puts "Начальный массив:" 
p array=[[-1,2,3],[5,-2,-8],[9,2,-7]]
puts "Новый массив:" 
p new_array = array.each{|x| if x==x.sort then x.sort_by!{rand} else x.sort! end}

p "Найти произведение положительных элементов."
puts "Начальный массив:" 
p array = [[-2,6,9], [5,-2,1], [-1,5,7]]
puts "Результат" 
p array.flatten.select{|v| v>0}.inject{|v, sum| v*sum}

p "Найти произведение положительных элементов."
puts "Начальный массив:" 
p array = [[-2,6,9], [5,-2,1], [-1,5,7]]
k = 5
puts "Результат" 
p array.flatten.inject(0){|x,s| s+=(0<s)&(s>k)? s:0}


p "Дан массив слов. Необходимо подсчитать, сколько раз встречается каждое слово в массиве."
puts "Начальный массив:" 
p names = ["Oleg", "Stas", "Roma", "Stasya", "Oleg", "Oleg", "Stas"]
name_count = Hash.new(0)
names.each do |name|
  name_count[name] += 1
end
puts "Результат" 
puts name_count.inspect, "\n\n" 


p "Дан целочисленный массив. Найти среднее арифметическое квадратов его элементов."
puts "Начальный массив:" 
p array = [4, 1, 8, 0, 5]
sum_of_squares = array.map { |num| num**2 }.sum
average = sum_of_squares.to_f / array.length
puts "Результат" 
puts average, "\n\n" 

puts "Дан дипапазон a..b. Получить массив из чисел, 
расположенных в этом диапазоне (исключая сами эти числа), 
в порядке их убывания, а также размер этого массива."
a = 1
b = 10
numbers = (a+1...b).to_a.reverse
puts "Результат" 
p numbers
puts "Размер масива:", size = numbers.size, "\n\n" , "\n\n" , "\n\n" , "\n\n" 

puts "Дана строка слов, разделёных пробелами. Вывести длиннейшее слово."
puts "Наша строка:" 
string = "Какая то строка с очень длинным словом"
longest_word = string.split.max_by(&:length)
puts "Самое длинное слово:", longest_word, "\n\n" 

puts "Дана строка, содержащая кириллицу, латиницу и цифры. 
Вывести все слова, длина которых равна средней."
p string = "Это строка with инглиш words, а также с цифрыми 1234"
words = string.split.select {
     |word| word.length == string.split.map(&:length).sum / string.split.length }
puts words.inspect, "\n\n" 

puts "Найти в тексте время в формате «часы:минуты:секунды»"
p text = "Время: 04:19:00, и я сегодня в 04:20:45"
times = text.scan(/\d{2}:\d{2}:\d{2}/)
puts "Результат:", times.inspect, "\n\n" 

puts "Найти в тексте слова, содержащие две прописные буквы, и исправить.Решите задачу для слов и в кириллице, и в латинице.
"
p text = "SOme текст на КириЛлице and woRDs на English"

russian_words = text.scan(/[а-яА-Яa-zA-Z]+/)
russian_words.each do |word|
  if word.scan(/[А-ЯЁA-Z]/).count == 2
    corrected_word = word.downcase
    text.gsub!(word, corrected_word)
  end
end
puts "Результат с исправленным текстом", text

puts "\n\n","\n\n" 


puts"Найти в тексте даты формата «день.месяц.год».Найдите дату, где день ограничен числом 31, а месяц 12. 
Год ограничивайте четырёхзначными числами.
Распознавайте месяц в виде «31.марта.2001»."

puts text = "Даты: 31.12.2022, 15.06.2023, 31.марта.2001, 12.декабря.2024"

regex = /(\d{2})\.(января|февраля|марта|апреля|мая|июня|июля|августа|сентября|октября|ноября|декабря)\.(\d{4})/
dates = text.scan(regex)
dates.each do |day, month, year|
    if day.to_i <= 31 && month != nil && year.to_i >= 1000
      puts "#{day}.#{month}.#{year}"
    end
end

puts "\n\n","\n\n"
puts "Дан текст. Найдите все URL адреса и 
вычлените из них ссылку на корневую страницу сайта"
p text = "Пример текста с URL-адресами: http://ru.wikibooks.org/wiki/Ruby и https://www.example.com/page"

regex = /(https?:\/\/[\w\.\-]+)\/?/

urls = text.scan(regex)

root_urls = urls.map { |url| "#{url[0]}/" }
puts "Результат с исправленным текстом"
puts root_urls
puts "\n\n","\n\n"