#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=user_games -t --no-align -c"



MAIN_MENU(){
RANDOM_NUMBER=$($PSQL "SELECT floor(random() * 1000) + 1 AS random_number;")
echo -e "Enter your username:"
read USERNAME
echo $RANDOM_NUMBER
if ! [[ $USERNAME =~ ^[a-zA-Z0-9_]{0,22}$ ]]
then
  echo "Please enter a valid username. Max 22 characters."
  MAIN_MENU
else
 NAME=$($PSQL "SELECT username FROM user_info WHERE username='$USERNAME'")
 GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM user_info INNER JOIN games USING(user_id) WHERE username='$NAME'")
 BEST_GAME=$($PSQL "SELECT MIN(score) FROM user_info INNER JOIN games USING(user_id) WHERE username='$NAME'")
 
 if [[ -z $NAME ]]
 then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  INSERT_USERNAME=$($PSQL "INSERT INTO user_info(username) VALUES('$USERNAME')")
  echo -e "\nGuess the secret number between 1 and 1000:"
  read GUESS
 else
  echo -e "\nWelcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  echo -e "\nGuess the secret number between 1 and 1000:"
  read GUESS
 fi

fi
USER_ID=$($PSQL "SELECT user_id FROM user_info WHERE username='$USERNAME'")


COUNT=1
GAME $RANDOM_NUMBER $GUESS $COUNT $USER_ID
}

GAME(){
RANDOM_NUMBER=$1
GUESS=$2
COUNT=$3
USER_ID=$4
echo $USER_ID
while [[ $GUESS != $RANDOM_NUMBER ]]
do
  if [[ $GUESS =~ ^[0-9]+$ ]]
  then
    if [[ $GUESS -lt $RANDOM_NUMBER ]]
    then
      let COUNT++
      echo "It's higher than that, guess again:"
      read GUESS
    elif [[ $GUESS -gt $RANDOM_NUMBER ]]
    then
      let COUNT++
      echo "It's lower than that, guess again:"
      read GUESS
    fi
  else
    echo "That is not an integer, guess again:"
    read GUESS
  fi

done
echo "You guessed it in $COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
INSERT_GAME=$($PSQL "INSERT INTO games(user_id,score) VALUES($USER_ID,$COUNT)")
}

MAIN_MENU
