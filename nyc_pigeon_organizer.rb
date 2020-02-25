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


  data[:color].each { |pColor,pName| #pName is an array
    newHash.each { |hName,hValue| #hName are hashes from the pigeons names, and Hvalue are their atributes
      if pName.include?(hName) #working until here, should I loop inside it?
        newHash[hName][:color].push(pColor.to_s) #My problem is, it only adds the last color
        hValue.each { |key,thisshit|
        thisshit.push(pColor)
        }
      end
    }
  }


  data[:lives].each { |pLives,pName| #pName is an array
  newHash.each { |hName,hValue| #hName are hashes from the pigeons names, and Hvalue are their atributes
    if pName.include?(hName) #working until here, should I loop inside it?
      newHash[hName][:lives].push(pLives) #My problem is, it only adds the last color
        hValue.each { |key,thisshit|
        thisshit.push(pColor)
        }
    end
  }
   
  }
  puts newHash
end

nyc_pigeon_organizer(pigeon_data)






