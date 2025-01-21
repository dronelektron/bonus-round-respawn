#!/bin/bash

PLUGIN_NAME="bonus-round-respawn"
BONUS_ROUND_EVENTS="../../bonus-round-events/scripting/include"
DOD_HOOKS="../../dod-hooks/scripting/include"

cd scripting
spcomp $PLUGIN_NAME.sp -i include -i $BONUS_ROUND_EVENTS -i $DOD_HOOKS -o ../plugins/$PLUGIN_NAME.smx
