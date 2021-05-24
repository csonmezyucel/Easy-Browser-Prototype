#!/bin/bash

echo --------------------------
echo What would you like to do?  # Asking for user input
echo --------------------------
echo s -- Search Things
echo v -- Watch Videos
echo m -- Go on Social Media
echo gt -- Go to a Site

COMMAND1="s"
COMMAND2="v"
COMMAND3="m"
COMMAND4="gt"

echo --------------------------
read COMMAND

# Condtionals for user input
if [ "$COMMAND" = "$COMMAND1" ]; then
    python -mwebbrowser "https://google.com"
else
    if [ "$COMMAND" = "$COMMAND2" ]; then
        python -mwebbrowser "https://youtube.com"
    else 
        if [ "$COMMAND" = "$COMMAND3" ]; then
            python -mwebbrowser "https://facebook.com"
        else
            if [ "$COMMAND" = "$COMMAND4" ]; then
                echo -----------------------------------
                echo Name of website?
                echo -----------------------------------
                read SITENAME
                PREFIX="https://" # Prefix for url
                POSTFIX=".com" # Postfix for url
                URL="$PREFIX$SITENAME$POSTFIX" # URL to open
                python -mwebbrowser $URL # Opening URL
            else
                echo Input Invalid # Informing the user that their input was invalid
            fi
        fi
    fi
fi

