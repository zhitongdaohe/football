#!/bin/sh

echo "read_file.sh.begin:" $(date "+%Y-%m-%d %H:%M:%S")

filename="uefa_champions_league_final_history.csv"

cat $filename | grep -v "比赛地" | while IFS=, read -r season champion runner_up score host_city
do
    # echo $season, $champion, $runner_up, $score, $host_city
    echo "insert into football_uefa_champions_league_final_history(season, champion, runner_up, score, host_city) values($season, $champion, $runner_up, $score, $host_city);"
done