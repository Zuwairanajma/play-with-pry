require_relative 'app1'
require_relative 'show_menu'
require_relative 'options'
require_relative 'introduction'

class Main
  include MenuMethods
  include Options
  include Introductions
  
  def initialize
  @app = App.new
  # @app.load_all_data
  end
  
  def run
    welcome_message
    loop do
    show_menu
    selected = getuser_input
    break if selected == 7

    select_option(selected, @app)
  end
 exit_message
end
end

main = Main.new
main.run 
