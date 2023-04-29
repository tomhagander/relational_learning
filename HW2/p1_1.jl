using Dice

a = flip(0.3);
b = flip(0.6);
c = flip(0.1);
d = flip(0.8);
e = flip(0.4);

statement = (a | b | !c) & (b | c | d | !e) & (!b | !d | e) & (!a | !b)

pr(statement)