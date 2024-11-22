#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
# WINNER=France
echo $($PSQL "TRUNCATE games, teams")
#$PSQL "SELECT team_id FROM teams WHERE name = '$WINNER';"
#$PSQL "INSERT INTO teams(name) VALUES('$WINNER');"

#OLDIFS=$IFS

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
#echo $YEAR
if [[ $YEAR != "year" ]]
then
   WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
   if [[ -z $WINNER_ID ]]
   then
    $PSQL "INSERT INTO teams(name) VALUES('$WINNER')"
    # echo  $WINNER_INSERT
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
    #echo $WINNER_ID: $WINNER
   fi

   OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")
   if [[ -z $OPPONENT_ID ]]
   then
    $PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')"
    # echo  $WINNER_INSERT
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")
    #echo $WINNER_ID: $WINNER
   fi

   $PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR,'$ROUND',$WINNER_ID,$OPPONENT_ID,$WINNER_GOALS,$OPPONENT_GOALS)"
fi
done
