def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def hit?(currentTotal)
  prompt_user
  decision = get_user_input
  if (decision == "h")
    currentTotal += deal_card
  elsif (decision == "s")
  else
    invalid_command
  end
  currentTotal
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cardTotal = initial_round
until (cardTotal > 21) do
cardTotal = hit?(cardTotal)
display_card_total(cardTotal)
end
end_game(cardTotal)
end
