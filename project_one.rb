def say(person, message)
  person = "ron howard" if person.nil?
  puts "\n"
  puts "ARReSTeD"
  puts "#" * 11
  puts "#{person.capitalize}: " + "#{message}" #Outputs Instructions / Messages
  puts "#" * 11
  puts "DeVeLOPMeNT"
  puts "\n"
end

def user_input
  gets.chomp.downcase.strip #Gets User Input
end

say nil, "Hello!"
say nil, "What is your name?"
user_name = gets.chomp.downcase.capitalize.strip
say nil, "#{user_name}, Are you ready to have your development arrested? (yes/no)"
play_game = user_input

while play_game == "yes"
  say nil, "Name your favorite character from Arrested Development."
  say nil, "Good luck, here are your options:"
  say nil, "Buster | GOB | Michael | George Michael | Maeby | Lucille | Lindsey | Tobias"
  character_answer = user_input

  case character_answer
  when "buster"
    say nil, "How old is Buster"
    busterAge = gets.chomp.to_i

    if busterAge >= 30 && busterAge <= 36
      say "buster","You got that right mister!"
    else
      say "buster", "I think you have me mistaken for somebody else, #{user_name}."
    end

  when "gob"
    say nil, "Is GOB beautiful (yes/no)"
    gob_beauty = user_input
    say "gob", "Is GOB smart? (yes/no)"
    gob_smart = user_input

    if gob_beauty == "yes" && gob_smart == "yes"
      say "gob", "You bet your sweat ass GOB is both beautiful and smart!"
    else
      say "gob", "Wrong! GOB is both beautiful and smart!"
      say "gob", "Sheesh, read a book would ya, #{user_name}."
    end

  when "michael"
    say nil, "What is the name of Michael's son's girlfriend?"
    michael_fatherly = user_input

    if michael_fatherly == "ann"
      # say = "#{michael_fatherly.capitazize}"
      say "michael", "Who?"
      michael_fatherly_2 = user_input.capitalize
        if michael_fatherly_2 == "ann"
      # say "#{michael_fatherly_2.capitalize}"
        say "michael", "Her?"
        else
          say nil, "That's not right, #{user_name}."
          say nil, "But don't feel bad, Michael doesn't know either."
        end
    else
      say nil, "That's not right, #{user_name}."
      say nil, "But don't feel bad, Michael doesn't know either."
    end

  when "george michael"
    say nil, "Whos is George Michael in love with?"
    george_michael_love = user_input
    if george_michael_love == "maeby" || george_michael_love == "rebel"
      say "george michael", "Correct! You win nothing."
    else
      say "george michael", "Wrong! I only have one true love!"
      say "george michael", "Well, depending on if you watched season 4 or not."
    end

  when "lucille"
    say nil, "Which one?"
    lucile_who = gets.chomp.strip.to_s

    if lucile_who == "1" || lucile_who == "one"
      say "lucille", 'Yeah, not "THAT BITCH!"'
    else
      say "lucille two", "Oh my god. So many Luciles. My head is spinning!"
    end

  when "lindsey"
    say nil, "How much does Lindsey weigh? (In lbs)"
    lindsey_weight = gets.chomp.to_i
    if lindsey_weight <= 100 && lindsey_weight >= 80
      say "lindsey", "Why thank you, that is exactly right, #{user_name}."
    else
      say "lindsey", "You're dead to me."
    end

  when "tobias"
    say nil, "Ofcourse, he is."
    say nil, "Do you think Tobias is gay? (yes/no)"
    tobias_gender = user_input

    if tobias_gender == "yes"
      say nil, "Tobias is such an enigma."
    else
      say nil, "You know he's a never nude right?"
      say nil, "And the first ever self-proclaimed 'Analrapist'?"
    end

  when "maeby"
    say nil, "Maeby wants to know if you know where her parents are."
    say nil, "Do you know where they are? (yes/no)"
    maeby_ask = user_input

    if maeby_ask == "yes"
      say "maeby", "So where are they!"
      maeby_parents_location = user_input
      say "maeby", "Are you serious, they're at the #{maeby_parents_location}?"
      say "maeby", "Oh, they're gonna pay."
    else
      say "maeby", "Figures."
    end

  else
    say nil, "#{character_answer.capitalize} is not an character/important character!"
    say nil, "Go do yourself a favor and watch the show!"
    say nil, "Or get a new favorite character."
  end

  say nil, "Would you like to try again?"
  play_game = user_input
end

say nil, "Thank you for playing, #{user_name}."
