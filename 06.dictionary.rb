# Notes:
# SYMBOLS
# - symbols are *immutable*
# - strings are mutable
# symbols - reference same object
# strings - reference different objects in memory
#   check with .object_id

test_grades = {
  "Andy"    => "B+",
  :Stanley  => "C",
  "Ryan"    => "A",
  3         => 95.2
}

test_grades["Andy"] = "B-"
puts test_grades["Andy"]
puts test_grades[:Stanley]
puts test_grades[3] # `3` is key not index

# Output:
# B-
# C
# 95.2