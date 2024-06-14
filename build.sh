#!/bin/bash

PLUGIN_NAME="bonus-round-respawn"
BONUS_ROUND_EVENTS="../../bonus-round-events/scripting/include"
PLAYER_RESPAWN="../../player-respawn/scripting/include"

cd scripting
spcomp $PLUGIN_NAME.sp -i include -i $BONUS_ROUND_EVENTS -i $PLAYER_RESPAWN -o ../plugins/$PLUGIN_NAME.smx
