require_relative "code"

class Mastermind
def initialize (length)
    @secret_code = Code.random(length)
end

def print_matches(code)
    count = 0
   puts "Exact matches": #{@secret_code.num_exact_matches(code)}
   puts "Near matches": #{@secret_code.num_near_matches(code)}
end

def ask_user_for_guess
p "Enter a guess:"
guess = Code.from_string(get.chomp)
self.print_matches(guess)
@secret_code == guess

    end
end
