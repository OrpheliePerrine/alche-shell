#!/bin/bash

# Function to read submissions file and output students who have not submitted
function check_submissions {
    local submissions_file=\$1

    if [[ ! -f "\$submissions_file" ]]; then
        echo "Error: Submissions file not found."
        return 1
    fi

    echo "Students who have not submitted:"
    grep "not submitted" "\$submissions_file"
}
