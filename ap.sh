#!/bin/bash
#Written by ARIYAN-XD
num_repeats=9999999999  

for ((i = 1; i <= num_repeats; i++)); do
    echo "Turning on airplane mode"
    settings put global airplane_mode_on 1
    am broadcast -a android.intent.action.AIRPLANE_MODE --ez state true
    
    sleep 3

    echo "Turning off airplane mode"
    settings put global airplane_mode_on 0
    am broadcast -a android.intent.action.AIRPLANE_MODE --ez state false

    echo "Waiting for 2 minutes..."
    sleep 120

    echo "Iteration $i completed."
done
