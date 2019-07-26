def nyc_pigeon_organizer(pigeon_data)
  all_name = []
  for i,j in pigeon_data
    for k in j
      all_name= all_name + (k[1].each{|name| name})
    end
  end
  all_name.uniq()

  keys = []
  for key in pigeon_data
    keys = keys.append(key[0])
  end
  new_hash = {}
  for name in all_name
    new_hash[name] = {color: [], gender: [], lives: []}
    for key in keys
      for i, j in pigeon_data[key]
        if j.include?(name)
           new_hash[name][key].append(i.to_s)
        end
      end
    end
  end
  return new_hash
end
