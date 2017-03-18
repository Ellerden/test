# ТЕСТ НА ОБЩИТЕЛЬНОСТЬ
require_relative "test"
current_path = File.dirname(__FILE__)
file_questions = current_path + "/data/questions.txt"
file_answers = current_path + "/data/answers.txt"

puts "Привет! Давайте пройдем тест на общительность!"\
"Тест содержит возможность определить уровень коммуникабельности человека."\
" Отвечайте на вопросы быстро и однозначно, используя 3 варианта ответов"\
" – «да», «иногда» и «нет»."
test = Test.new(file_questions, file_answers)
user_result = test.pass

puts "Спасибо, тест окончен! За каждый ответ «да» вы набрали 2 очка, "\
"за «иногда» – 1 очко и за «нет» – 0 очков. "\
"Суммарное количество очков: #{user_result}, а это значит:"
test.interpret_result