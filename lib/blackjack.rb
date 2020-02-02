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
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  # input = ""
  # while input != "s" do
    prompt_user
    input = get_user_input
    # puts "input is #{input}"
    if input == "h\n"
      card_total += deal_card
      card_total
    elsif input == "s\n"
      card_total
      # break
    else
      invalid_command
      hit?(card_total)
    end
    # card_total
    # end
end

def get_and_return
  input = gets
  p input
end
def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
