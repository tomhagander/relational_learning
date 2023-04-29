using Dice

a = flip(0.2);
b = flip(0.1);
c = flip(0.8);
d = flip(0.3);
e = flip(0.5);

statement = (!a | c | d) & (b | c | !d | e) & (!c | d | !e)

pr(statement)