class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = nil

    @the_message = params[:answer]

    if @the_message == "I am going to work"
      @answer = "Great!"
    elsif @the_message.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
