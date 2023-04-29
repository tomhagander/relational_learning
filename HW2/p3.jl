using Dice

car = uniform(DistUInt{8}, 1, 4) # q1
#car = discrete(DistUInt{8}, [0, 0.6, 0.3, 0.1]) # q2
# either 1, 2 or 3

# we assume switch
chosen = if prob_equals(car, DistUInt{8}(1)) uniform(DistUInt{8}, 2, 4) else (if prob_equals(car, DistUInt{8}(2)) DistUInt{8}(2) else DistUInt{8}(3) end) end

print("Probability that the chosen door has car given switch: ")
print(prob_equals(car, chosen))