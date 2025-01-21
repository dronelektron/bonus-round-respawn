#include <sourcemod>

#include "bonus-round-events/api"
#include "dod-hooks/api"

#include "bonus-round-respawn/use-case"

#include "modules/console-variable.sp"
#include "modules/use-case.sp"

public Plugin myinfo = {
    name = "Bonus round respawn",
    author = "Dron-elektron",
    description = "Allows you to respawn players at the end of the round",
    version = "1.1.0",
    url = "https://github.com/dronelektron/bonus-round-respawn"
};

public void OnPluginStart() {
    Variable_Create();
    AutoExecConfig(_, "bonus-round-respawn");
}

public void BonusRound_OnLoser(int client) {
    if (UseCase_IsLosersMode()) {
        Player_Respawn(client, FORCE_RESPAWN_NO);
    }
}

public void BonusRound_OnWinner(int client) {
    if (UseCase_IsWinnersMode()) {
        Player_Respawn(client, FORCE_RESPAWN_NO);
    }
}
