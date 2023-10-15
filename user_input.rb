class UserInput
    def self.get
      gets.chomp.to_i
    end

    def user_permission
        gets.chomp.downcase == 'y'
      end
  end
  