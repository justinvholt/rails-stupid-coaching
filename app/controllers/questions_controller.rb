# controller for all questions
class QuestionsController < ApplicationController
  ANSWERS = {
    answer1: "Great!",
    answer2: "Silly question, get dressed and go to work!",
    answer3: "I don't care, get dressed and go to work!"
  }

  def ask
  end

  def answer
    @question = params[:question]

    @answer = if @question == "I am going to work"
                ANSWERS[:answer1]
              elsif @question[-1] == "?"
                ANSWERS[:answer2]
              else
                ANSWERS[:answer3]
              end
  end
end
