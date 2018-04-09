class QuestionsController < ApplicationController

  def ask
  end


  ANSWERS = ["such welcome fren","Did your turn it off and turn it on again fren? If no work kick it and then take a nap", "Wow such problem many solution few time", "idk get a pizza", "feed tha doge", "i am break now wow", "woof", "i don't speak human", "did you put in a ticket?", "ask marco"]


  def answer
    @question = params[:question]

    if @question == "Thanks Doge"
     @answer = ANSWERS[0]

   elsif @question[-1] == "?"
    @answer = ANSWERS.sample

  else  @answer = ANSWERS[2]

  end
end
end
