class OrangeTree
  attr_accessor :height, :age, :num_of_oranges

  def initialize
    @height = 0
    @age = 0
    @num_of_oranges = 0
  end

  def one_year_passes
    @age += 1
    @height += 6
    @num_of_oranges = 0

    if @age > 5
      @num_of_oranges += (4 * @age**1.5).to_i
    end
  end

  def count_the_oranges
    puts @num_of_oranges
  end

  def pick_an_orange
    @num_of_oranges = @num_of_oranges - 1
    puts "Mmm. That was a delicious orange."
  end
end

tree = OrangeTree.new

while tree.age < 100 do
  tree.one_year_passes
  
  puts "YEAR #{tree.age}"
  
  puts "Height: #{tree.height} inches"
  
  if tree.age > 5
    puts "Your tree has produced #{tree.num_of_oranges} oranges!"
  
    puts "Would you like to pick an orange?"
    answer = gets.chomp.downcase

    while answer == "yes" || answer == "y" do
      tree.pick_an_orange
      if tree.num_of_oranges > 0
        puts ""
        puts "Your tree has #{tree.num_of_oranges} oranges left."
        puts "Would you like to pick another orange?"
        answer = gets.chomp
      else
        puts ""
        puts "There are no more oranges to pick this year."
        break
      end
    end
  else
    puts "Patience, young grasshopper. Your tree is too young to bear fruit."
  end

  puts ""
end