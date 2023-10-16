# require 'pry'
# nested = [
#   { :fruit => {
#       :apple => 1,
#       :banana => 2,
#       :grape => 6
#     },
#     :pets => {
#       :fido => "dog",
#       :whiskers => "cat",
#       :charles => "mouse",
#       :bitey => "snake"
#     },
#     :teams => {
#       :new_york => {
#         :baseball => ["mets", "yankees"],
#         :basketball => ["knicks", "nets"],
#         :football => ["giants", "jets"],
#         :hockey => ["rangers", "islanders"]
#       },
#       :los_angeles => {
#         :baseball => ["dodgers", "angels"],
#         :basketball => ["lakers", "clippers"],
#         :football => ["rams", "chargers"],
#         :hockey => ["kings"]
#       },
#       :chicago => {
#         :baseball => ["cubs"],
#         :basketball => ["bulls"],
#         :football => ["bears"],
#         :hockey => ["blackhawks"]
#       }
#     } }
# ]

# #   def list_basketball_teams_by_city(data)
# #     data.each do |element|
# #       element.each do |outer_key, outer_value|
# #       end
# #     end
# #   end

# #   def list_basketball_teams_by_city(array)
# #     array.each do |element|
# #       element.each do |outer_key, outer_value|
# #         if outer_key == :teams
# #           outer_value.each do |city, sports_hash|
# #             binding.pry
# #           end
# #         end
# #       end
# #     end
# #   end
# def list_basketball_teams_by_city(array)
#   array.each do |element|
#     element.each do |outer_key, outer_value|
#       if outer_key == :teams
#         outer_value.each do |city, sports_hash|
#           sports_hash.each do |sport, team_name_array|
#             if sport == :baseball
#               binding.pry
#               puts "The basketball teams for #{city} are #{sport}."
#             end
#           end
#         end
#       end
#     end
#   end
# end
# list_basketball_teams_by_city(nested)
# #   require 'pry'
# #   def list_basketball_teams_by_city(array)
# #     array.each do |element|
# #       element.each do |outer_key, outer_value|
# #         if outer_key == :teams
# #           outer_value.each do |city, sports_hash|
# #             binding.pry
# #           end
# #         end
# #       end
# #     end
# #   end

# #   list_basketball_teams_by_city(sports_hash)
