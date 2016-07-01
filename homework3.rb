class Utility 
	def self.count_words(sentence)
		words = sentence.split 
		results = {}

		words.each do |word| 
			if results[word] 
				results[word] += 1 
			else 
				results[word] = 1 
			end 
		end 

		results 

	end 
end 

x = Utility.count_words("It was the best of times, it was the worst of times.")

puts x.inspect 

# Create a class Animal with an instance method speak that returns a string
# indicating the sound the animal should make. Now make a subclass of Animal (a
# class whose parent is Animal) and *override the speak method to do something
# different when called.

class Animal 
	attr_accessor :sound
	def speak 
		puts("The #{name} says #{sound}")
	end 

	def name 
		"animal"
	end 
end 
class Cow < Animal 
	def name 
		"cow"
	end 
end 

class Cat < Animal 
	def name 
		"cat"
	end 

	def speak 
		puts("the cat thinks it owns the place")
	end 
end 

cow = Cow.new 
cow.sound = "moo!!"
puts(cow.speak)

cat = Cat.new 
cat.sound = "meow"
puts(cat.speak)



# What is the difference between an HTTP GET request vs a POST request? 
	# GET - Requests data from a specified resource
	# POST - Submits data to be processed to a specified resource 