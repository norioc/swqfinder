require "pry"
require "rest-client"
require "json"
require "ostruct"
require "character"


class SWAPI

    def initialize 
        @base_url = "https://swapi.co/api/people" 

    end

    def get_character(character_id)
        url = "#{@base_url}/#{character_id}"
        resp= RestClient.get(url)
        resp_hash = JSON.parse(resp.body, symbolize_names:true)
        character=Character.new(resp_hash[:name], resp_hash[:birth_year], resp_hash[:eye_color], resp_hash[:hair_color], resp_hash[:gender], resp_hash[:height], resp_hash[:mass], resp_hash[:skin_color])
        return "#{character.name} #{character.gender} #{character.height} #{character.mass} #{character.birth_year} #{character.eye_color} #{character.hair_color} #{character.skin_color}"
        
    end
       


        
    

    


    # def get_all

    #     characters = []
    #     next_page = true
    #     url = "https://swapi.co/api/people/?page=1&format=json"

    #  while next_page == true

    #    resp= RestClient.get(url)
    #    resp_hash = JSON.parse(resp.body, symbolize_names:true)
    
    #  if resp_hash[:next] != nil 
    #     url = resp_hash[:next]
    #     characters << resp_hash[:results]
    #  else 
        
    #     characters.flatten
    #     next_page = false
    #  end
    # end
    
end
