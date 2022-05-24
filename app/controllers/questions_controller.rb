class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = 'I can\'t hear you!' if @question.blank?
    @answer = 'Great!' if @question =~ /i am going to work/i
    if @question.ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
