using Dice

function network()
    let burglary = flip(0.001) in 
        let earthquake = flip(0.002) in
            let alarm = if earthquake (if burglary flip(0.95) else flip(0.29) end) else (if burglary flip(0.94) else flip(0.001) end) end in
                let JohnCalls = if alarm flip(0.9) else flip(0.05) end in
                    let MaryCalls = if alarm flip(0.7) else flip(0.01) end
    observe(!burglary)
    observe(MaryCalls)
    pr(earthquake)

network()