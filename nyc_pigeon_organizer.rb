pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  # write your code here!
  newHash = {}
  data[:gender][:male].each { |e|
  newHash[e] = Hash.new 
    newHash[e][:color] = []
    newHash[e][:gender] = []
     newHash[e][:gender].push("male")
    newHash[e][:lives] = []
  }
  data[:gender][:female].each { |e|
  newHash[e] = Hash.new 
    newHash[e][:color] = []
    newHash[e][:gender] = []
    newHash[e][:gender].push("female")
    newHash[e][:lives] = []
  }


  
   
  
  puts newHash
end

nyc_pigeon_organizer(pigeon_data)






