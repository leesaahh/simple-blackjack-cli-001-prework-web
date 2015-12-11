def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
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
  card1 = deal_card
  card2 = deal_card
  display_card_total (card1+card2)
  card1 + card2
end

def hit?(total)
  prompt_user
  hs = get_user_input
  newcard = 0
  if hs == "h"
    newcard = deal_card
  end
  total = total + newcard
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  if total < 21
    card_total = hit?(total)
  display_card_total(card_total)
  end
  end_game(card_total)
end

