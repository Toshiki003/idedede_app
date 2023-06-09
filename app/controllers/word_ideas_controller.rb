class WordIdeasController < ApplicationController
  def index
    @word_ideas = WordIdea.all
    session[:random_word] = Word.sample.id
    @word = Word.find(session[:random_word])
  end

  def create
    @word = Word.find(session[:random_word])
    @word_idea = WordIdea.create(word: @word, idea: Idea.last)
    if @word_idea.save
      redirect_to word_ideas_path
    end
  end
end
