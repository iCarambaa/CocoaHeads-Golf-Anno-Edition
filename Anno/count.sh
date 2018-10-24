#!/bin/bash

trim(){
    [[ "$1" =~ ^[[:space:]]*(.*[^[:space:]])[[:space:]]*$ ]]
    printf "%s" "${BASH_REMATCH[1]}"
}
solution=$(<Anno/Anno.swift)

# extract function body between first { and last }
solution=${solution%\}*}
solution=${solution#*\{}
solution=$(trim "$solution")

characters=${#solution}

echo "$characters bytes." > "./Anno/CharacterCount.txt"

heatWaves=$(<HeatWaves/HeatWaves.swift)
heatWaves=${heatWaves%\}*}

append="} // $characters bytes."
heatWaves+="$append"
#echo "$heatWaves" > "./HeatWaves/HeatWaves.swift"
