class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = "I don't care, get dressed and go to work!"
    if params[:question] == "I am going to work"
      @answer = "Great!"
    end
    if params[:question].include?("?")
      @answer = "get dressed and go to work!"
    end
  end
end
