class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

attr_reader :pegs 

  def self.valid_pegs?(chars)
chars.all? {|char| POSSIBLE_PEGS.has_key?(char)}
  end

def self.random(length)
  random_pegs = []
  length.times {random_pegs << POSSIBLE_PEGS.keys.sample}
  Code.new ()
end

def self.from_string(pegs)
Code.new(string.split(""))
end

  def initialize (chars)
    if Code.valid_pegs?
      @pegs = chars.map {|char| char.upcase}
    
    else
      raise "Pegs are invalid!"
    end
end

def [] (index)
  @pegs[index]
end

def length 
  @pegs.length
end

def num_exact_matches(guess_code)
  count = 0
  (0...guess_code.length).each do |i|
    count +=1 if guess_code[i] == self[i]
    end
  end
   count
end

def near_mathes (guess_code)
count = 0
(0...guess_code.length).each do |i|
 count +=1 if guess_code[i] != self[i] && self.pegs.include?(guess_code[i])
       end
    end
    count
end

def ==(other_code)
  self.pegs == other_code.pegs
end
