import random

subjects = [ "your mom", "your life", "you"]
predicates = [ "is stupid", "is dumb" ]
subject_questions = [ "What is your mom's name?", "What is your dog's name?", "What is your name?" ]
name = "Nathaniel Daniel"

def extend_subjects():
	if subject_questions:
		q = random.choice(subject_questions)
		subject_questions.remove(q)
		subjects.append(input(q + " ").lower())

exit = False
while not exit:
	print(random.choice(subjects) + " " + random.choice(predicates))
	res = input("Again? ")
	if not res.startswith("Y") and not res.startswith("y"):
		exit = True
	extend_subjects()

print("This insult generator was created by " + name)
