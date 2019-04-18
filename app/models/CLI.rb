class CLI

  def initialize
    @prompt = TTY::Prompt.new
    @font = TTY::Font.new(:doom)
    # @httparty = HTTParty::Response.new
    @score = 0
  end

   def display_header
     pastel = Pastel.new
     puts pastel.yellow.on_red.bold(@font.write('Harry   Potter'))
     puts pastel.yellow.on_red.bold(@font.write('   Gameshow!  '))
   end

   def find_or_create_user
     puts "\n" "\u{1f52e} " "\u{1f52e}" "  Welcome to the Ultimate Harry Potter Quiz!  " "\u{1f52e} " "\u{1f52e}" "\n".colorize(:color => :yellow, :background => :red)
     name = @prompt.ask("What's your name?:".colorize(:color => :yellow, :background => :red))
     @user = User.find_or_create_by(name: name)
   end

   def get_house
    base_uri = "https://www.potterapi.com/v1/sortingHat"
    response1 = HTTParty.get(base_uri)
    puts "\nThe sorting hat has put you in #{response1.remove("""")} house.\n".colorize(:color => :yellow, :background => :red)
   end

   def get_character_name
     base_uri = "https://www.potterapi.com/v1/characters?&key="
     key = "$2a$10$sPmbpDdmEoK4bFxlNKu7.uJbm8buRW2asS/s6w.3kHbM7/u32Hc32"
     response2 = HTTParty.get(base_uri + key)
     @character_name = response2.sample["name"]
     puts "For this game, your character will be #{@character_name}.\n".colorize(:color => :yellow, :background => :red)
   end

   def get_spell
    base_uri = "https://www.potterapi.com/v1/spells?&key="
    key = "$2a$10$sPmbpDdmEoK4bFxlNKu7.uJbm8buRW2asS/s6w.3kHbM7/u32Hc32"
    response3 = HTTParty.get(base_uri + key)
    @spell = response3.sample["spell"]
    puts "\u{1f320}" " \u{1f31f}" " Your magical spell for this game is #{@spell}. " "\u{1f31f}" " \u{1f320}" "\n".colorize(:color => :yellow, :background => :red)
   end

   def ready_to_start
     @prompt.yes?("Great, are you ready to start, #{@character_name}?".colorize(:color => :yellow, :background => :red))
   end

   def ask_questions
     questions = Question.all

     questions.each do |q|
       ask_question(q)
     end
   end

   def ask_question(q)
     correct = @prompt.select(q.question) do |menu|
       q.answers.each do |a|
        menu.choice name: a.answer, value: a.correct
       end
     end
      if correct == true
        puts "Well done!\n".colorize(:color => :yellow, :background => :red)
        @score += 1
      else
        puts "Good try!\n".colorize(:color => :yellow, :background => :red)
      end
  end

   def display_final_total
     puts "You got #{@score}/#{Question.count}\n".colorize(:color => :yellow, :background => :red)
      if @score == Question.count
        puts "You're a Harry Potter Wiz!\n".colorize(:color => :yellow, :background => :red)
      else
        puts "Keep on being a seeker of knowledge!\n".colorize(:color => :yellow, :background => :red)
      end
   end

   def update_user_score
     @user.score = @score
     @user.save
   end

   def display_score_board
     list = User.order(score: :desc)[0..4]
     rows = []
     list.each {|user| rows << [user.name, user.score] }
     table = Terminal::Table.new :title => "Leader Scoreboard", :headings => ['Name', 'Score'], :rows => rows, :style => {:width => 70, :padding_left => 5, :border_x => "=", :border_i => "x"}
     puts table
   end

   def bye
     puts "\n" "\u{1f52e} " "\u{1f52e}" " Thanks for playing! See you again soon. " "\u{1f52e} " "\u{1f52e}" "\n".colorize(:color => :yellow, :background => :red)
   end


  def run
    display_header
    find_or_create_user
    get_house
    get_character_name
    get_spell
    ready_to_start
    ask_questions
    display_final_total
    update_user_score
    display_score_board
    bye
  end

end
