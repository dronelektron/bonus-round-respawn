static ConVar g_mode;

void Variable_Create() {
    g_mode = CreateConVar("sm_bonusroundrespawn_mode", "3", "Who should be respawned (Disabled - 0, Winners - 1, Losers - 2, Both - 3)");
}

int Variable_Mode() {
    return g_mode.IntValue;
}
