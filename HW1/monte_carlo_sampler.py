import random

# cnf 1
#cnf = [[1, 2, -3], [2, 3, 4, -5], [-2, -4, 5], [-1, -2]]
#weight = {1: 0.3, 2: 0.6, 3: 0.1, 4: 0.8, 5: 0.4}

# cnf 2
cnf = [[-1, 3, 4], [2, 3, -4, 5], [-3, 4, -5]]
weight = {1: 0.2, 2: 0.1, 3: 0.8, 4: 0.3, 5: 0.5}


n_vars = max([max(sublist) for sublist in cnf])

def draw_sample():
    rtn = []
    for i in range(n_vars):
        idx = i+1
        if random.uniform(0,1) < weight[idx]:
            rtn.append(1)
        else:
            rtn.append(0)
    return rtn


def substitution(sample):
    valid = True
    for clause in cnf:
        clause_true = False
        for idx in clause:
            if idx > 0:
                if sample[idx-1] == 1:
                    clause_true = True
                    break
            else:
                if sample[abs(idx)-1] == 0:
                    clause_true = True
                    break
        if not clause_true:
            valid = False
            break
    return valid

# run
n = 1000
trues = 0
for i in range(n):
    sample = draw_sample()
    if substitution(sample):
        trues += 1

print('Truth percentage:', trues/n)
