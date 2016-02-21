answer = ["All signs point to yes", "Probably", "Most likely", "I didn't understand the question",
"What am I, a psychic?","Go do something useful", "Why not?", "I think you know already", "WTF?", 
"Ask again later"]
neg_question = ["i hate you", "you suck", "no", "i don't want to", "get a job"] 
neg_answer = ["Yeah well you're ugly", "C'mon...", "You're adopted", "Get a life", "The smell of poop excites you", "PFFFFFF"]
get_question = lambda { print "Ask a question: "}
new_answer = -> {$stdin.gets.strip.downcase}
answer_2 = answer.clone
add_answer = -> {
      puts "how many answers you wanna add?"
    plus_answers = gets.strip.to_i
    plus_answers.times do
      puts "new answer: "
      newest_answer = gets.strip
     if answer_2.map(&:downcase).include?(newest_answer.downcase)
       puts "I already know that one"
     else 
       answer_2 << newest_answer
       puts ""
     end
   end
       puts "your answer bank is now:"
       puts answer_2
       puts ""
}


back_door = ARGV[0]
ARGV.clear
if back_door == "new_answers" 
        add_answer.call
end
   
  puts "Welcome to the Ruby Eight-ball!" 
  puts "You may type quit to quit"
while true
  get_question.call  
  question = new_answer.call
   if neg_question.include?(question)
     puts neg_answer.sample
     puts ""
   else
     case question
        when question = "quit"
          puts "bye bye then"
            exit
        when question = "add_answers"
              add_answer.call
        when question = "reset_answers" 
           answer_2 = answer.clone
           puts "answers have been reset"
           puts ""
        when question = "print_answers" 
          puts answer_2.uniq
        else  
          puts answer_2.sample
          puts ""
     end  
   end
end