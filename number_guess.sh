#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

NUMBER_TO_GUESS=$(( RANDOM % 1000 ))

echo Enter your username:
read USERNAME

#buscar username en la base de datos

USER_IN_DB=$($PSQL "SELECT * FROM users WHERE username='$USERNAME'")

if [[ -z $USER_IN_DB ]]
then
  INSERT_USER=$($PSQL "INSERT INTO users(username, games_played, best_game) VALUES('$USERNAME', 0, 500000000)")
  echo Welcome, $USERNAME! It looks like this is your first time here.
else
    echo "$USER_IN_DB" | while read USERNAME BAR GAMES_PLAYED BAR BEST_GAME
    do
      echo Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.
    done
fi

echo number to guess $NUMBER_TO_GUESS

echo Guess the secret number between 1 and 1000:
read INTENTO

#if $1 isn't a number
if [[ ! $INTENTO =~ ^[0-9]+$ ]]
then
  echo That is not an integer, guess again:
else
  COUNTER_INTENTOS=1
  while [[ $INTENTO -ne $NUMBER_TO_GUESS ]]
  do
    if [[ $INTENTO -gt $NUMBER_TO_GUESS ]]
    then
      ((COUNTER_INTENTOS+=1))
      echo -e "It's lower than that, guess again:"
      read INTENTO
    elif [[ $INTENTO -lt $NUMBER_TO_GUESS ]]
    then
      ((COUNTER_INTENTOS+=1))
      echo -e "It's higher than that, guess again:"
      read INTENTO
    fi
  done
fi

echo -e "\nYou guessed it in $COUNTER_INTENTOS tries. The secret number was $NUMBER_TO_GUESS. Nice job!\n"

#update best game if this one is better
BEST_IN_DB=$($PSQL "SELECT best_game FROM users WHERE username='$USERNAME'")
if [[ $COUNTER_INTENTOS -lt $BEST_IN_DB ]]
then
INSERT_NEW_BEST=$($PSQL "UPDATE users SET best_game = $COUNTER_INTENTOS where username='$USERNAME'")
fi

#add played game
UPDATE_GAMES_PLAYED=$($PSQL "UPDATE users SET games_played = games_played + 1 where username='$USERNAME'")
