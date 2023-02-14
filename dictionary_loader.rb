def load_dictionary file, min_length
  dictionary = []
  
  File.open(file, 'r:utf-8').each do |line|
    line = line.chomp.downcase

    if line.length >= min_length
      line = line.tr('àéêèëùûîïç', 'aeeeeuuiic')
      dictionary << line
    end
  end
  
  dictionary
end
