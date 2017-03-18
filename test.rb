class Test
  def initialize(questions, answers)
    # подгружаем файлы вопросов и ответов
    if File.exist?(questions) && File.exist?(answers)
      file_questions = File.open(questions)
      file_answers = File.open(answers)
      @questions = file_questions.readlines
      @answers = file_answers.readlines
      file_questions.close
      file_answers.close
    else
      abort "Файлы теста не найдены"
    end
  end

  def pass
    @user_result = 0
    hint = "1 - «да», 2- «иногда», 3 - «нет»"

    for item in @questions do
      puts "ВОПРОС: #{item}"
      puts hint
      user_input = nil

      until (user_input == 1) || (user_input == 2) || (user_input == 3)
        user_input = STDIN.gets.chomp.to_i
      end

      if user_input == 1
        @user_result += 2
      elsif user_input == 2
        @user_result += 1
      end
    end
    @user_result
  end

  def interpret_result
    case @user_result
      when 0..3 then puts @answers[6]
      when 4..8 then puts @answers[5]
      when 9..13 then puts @answers[4]
      when 14..18 then puts @answers[3]
      when 19..24 then puts @answers[2]
      when 25..29 then puts @answers[1]
      when 30..32 then puts @answers[0]
    end
  end
end