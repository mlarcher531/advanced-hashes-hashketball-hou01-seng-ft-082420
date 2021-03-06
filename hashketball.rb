require 'pry'
# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def num_points_scored(player)
  total_points = 0
  game_hash.each do |home_away, team_info|
    #binding.pry
    team_info[:players].each do |stats|
         if stats[:player_name] == player
              total_points = stats[:points]
            return total_points
        end
    end
  end
end



def shoe_size(player)
  shoe_size = 0
  game_hash.each do |no_use, team_info|
    #binding.pry
    team_info[:players].each do |stats|
    #binding.pry
    if stats[:player_name] == player
      shoe_size = stats[:shoe]
      return shoe_size
  end
  end
  end
end



def team_colors(team)
  team_colors = nil
  game_hash.each do |nothing, team_info|
#binding.pry
if team_info[:team_name] == team
  team_colors = team_info[:colors]
  return team_colors
end
end
end



def team_names
   team_one = game_hash[:away][:team_name]
   team_two =  game_hash[:home][:team_name]
   teams = [team_one, team_two]
   #binding.pry
  end



  def player_numbers(team_name)
    jersey_numbers = []
    game_hash.each do |team, team_info|
      if team_name == team_info[:team_name]
        team_info.each do |key, value|
          #binding.pry
          if key == :players
            value.each do |stats|
              #binding.pry
              jersey_numbers.push(stats[:number])
  end
  end
  end
  end
  end
  return jersey_numbers
  end




def player_stats(name)
  player_stats = {}
  game_hash.each do |team, info|
  #binding.pry
  info[:players].each do |key, value|
      if key[:player_name] == name
        #binding.pry
        return key
      end
    end
  end
    end



def big_shoe_rebounds
  largest_shoe_win = nil
  largest_shoe = 0
  game_hash.each do |home, info|
  info[:players].each do |stats|
    #binding.pry
    shoes_big = stats[:shoe]
    #binding.pry
    if shoes_big > largest_shoe
      largest_shoe = shoes_big
      largest_shoe_win = stats[:rebounds]
      #binding.pry
end
end
end
return largest_shoe_win
end
