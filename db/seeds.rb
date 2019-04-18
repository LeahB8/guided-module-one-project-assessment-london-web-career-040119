leah = User.create!(name: "Leah")
mona = User.create!(name: "Mona")
cheyenne = User.create!(name: "Cheyenne")
neelam = User.create!(name: "Neelam")



q1 = Question.create!(question: "What position does Harry play on the Quidditch team?")
q2 = Question.create!(question: "How did Harry and Ron get to Hogwarts their second year?")
q3 = Question.create!(question: "What is Snape’s Patronus?")
q4 = Question.create!(question: "What is the name of Dumbledore’s phoenix?")
q5 = Question.create!(question: "In which London station do you stand between platform 9 and 10 to catch the train to Hogwarts?")
q6 = Question.create!(question: "What is the name of Hagrid’s big dog?")
q7 = Question.create!(question: "What colour are Harry’s eyes?")
q8 = Question.create!(question: "What monster lives in the Chamber of Secrets?")
q9 = Question.create!(question: "Where does Hermione brew her first batch of Polyjuice Potion?")
q10 = Question.create!(question: "What does one say to close the Marauder's Map and make it blank again?")



q1_a1 = Answer.create!(question: q1, answer: "Seeker", correct: true)
q1_a2 = Answer.create!(question: q1, answer: "Chaser", correct: false)
q1_a3 = Answer.create!(question: q1, answer: "Beater", correct: false)
q1_a4 = Answer.create!(question: q1, answer: "Keeper", correct: false)

q2_a1 = Answer.create!(question: q2, answer: "Broomsticks", correct: false)
q2_a2 = Answer.create!(question: q2, answer: "Hippogriff", correct: false)
q2_a3 = Answer.create!(question: q2, answer: "Apparating", correct: false)
q2_a4 = Answer.create!(question: q2, answer: "Flying Car", correct: true)

q3_a1 = Answer.create!(question: q3, answer: "Lion", correct: false)
q3_a2 = Answer.create!(question: q3, answer: "Doe", correct: true)
q3_a3 = Answer.create!(question: q3, answer: "Meerkat", correct: false)
q3_a4 = Answer.create!(question: q3, answer: "Bat", correct: false)

q4_a1 = Answer.create!(question: q4, answer: "Trevor", correct: false)
q4_a2 = Answer.create!(question: q4, answer: "Scabbers", correct: false)
q4_a3 = Answer.create!(question: q4, answer: "Hedwig", correct: false)
q4_a4 = Answer.create!(question: q4, answer: "Fawkes", correct: true)

q5_a1 = Answer.create!(question: q5, answer: "St Pancras", correct: false)
q5_a2 = Answer.create!(question: q5, answer: "King's Cross", correct: true)
q5_a3 = Answer.create!(question: q5, answer: "London Bridge", correct: false)
q5_a4 = Answer.create!(question: q5, answer: "Cannon Street", correct: false)

q6_a1 = Answer.create!(question: q6, answer: "Fang", correct: true)
q6_a2 = Answer.create!(question: q6, answer: "Rover", correct: false)
q6_a3 = Answer.create!(question: q6, answer: "Padfoot", correct: false)
q6_a4 = Answer.create!(question: q6, answer: "Moody", correct: false)

q7_a1 = Answer.create!(question: q7, answer: "Brown", correct: false)
q7_a2 = Answer.create!(question: q7, answer: "Hazel", correct: false)
q7_a3 = Answer.create!(question: q7, answer: "Green", correct: true)
q7_a4 = Answer.create!(question: q7, answer: "Blue", correct: false)

q8_a1 = Answer.create!(question: q8, answer: "Giant Spider", correct: false)
q8_a2 = Answer.create!(question: q8, answer: "Troll", correct: false)
q8_a3 = Answer.create!(question: q8, answer: "Centaur", correct: false)
q8_a4 = Answer.create!(question: q8, answer: "Basilisk", correct: true)

q9_a1 = Answer.create!(question: q9, answer: "Moaning Myrtle's bathroom", correct: true)
q9_a2 = Answer.create!(question: q9, answer: "The Hogwart's kitchen", correct: false)
q9_a3 = Answer.create!(question: q9, answer: "The Room of Requirement", correct: false)
q9_a4 = Answer.create!(question: q9, answer: "The Gryffindor common room", correct: false)

q10_a1 = Answer.create!(question: q10, answer: "All done", correct: false)
q10_a2 = Answer.create!(question: q10, answer: "Nothing to see here", correct: false)
q10_a3 = Answer.create!(question: q10, answer: "Mischeif Managed", correct: true)
q10_a4 = Answer.create!(question: q10, answer: "Hello Professor", correct: false)
