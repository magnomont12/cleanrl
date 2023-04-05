#!/bin/bash

# Defina uma matriz com os diferentes valores para o parâmetro --env-id
env_ids=("bigfish" "bossfight" "caveflyer" "chaser" "climber" "coinrun" "dodgeball" "fruitbot" "heist" "jumper" "laeper" "maze" "miner" "ninja" "plunder" "startpilot")

# Loop através dos diferentes valores e execute o script python com cada um deles
for env_id in "${env_ids[@]}"
do
    python cleanrl/ppo_procgen.py --seed 1 --total-timesteps 30000 --cuda false --env-id="$env_id"
done