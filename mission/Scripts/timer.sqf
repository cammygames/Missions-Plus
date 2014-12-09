/*
	NOT USED YET
*/
START_TIME = diag_tickTime;
while {true} do
{
    ELAPSED_TIME = diag_tickTime - START_TIME;
    sleep 1;
}; 

if (START_TIME > 1499) then
{
	exitWith[hint format["Looks like the bandits are done standing around wasting time. Maybe you'll catch em next time."];];
}

if (count (units RESISTANCE) < 1) then 
{ 
	exitWith[hint format["The Ai Have been Killed and The Mission Is Complete!"];];
}; 