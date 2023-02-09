# draws (writes to the console) a gallows and parts of the hangman, depending on
# the number of +errors+
def draw_gallows errors

  roof =   " _____ "
  top =    " |/  | "
  head =   " |     "
  trunk =  " |     "
  hips =   " |     "
  legs =   " |     "
  bottom = " |     "
  foot =   "------ "

  head[5] = "O" if errors > 0

  trunk[4] = "/" if errors > 1
  trunk[5] = "|" if errors > 2
  trunk[6] = "\\" if errors > 3

  hips[5] = "|" if errors > 4

  legs[4] = "/" if errors > 5
  legs[6] = "\\" if errors > 6

  puts roof
  puts top
  puts head
  puts trunk
  puts hips
  puts legs
  puts bottom
  puts foot
  puts
  
end