EXTEND_TOP FATESP 6
IF ~%New_ToB_Game%
!Dead("NALIA")!InMyArea("NALIA")Global("NaliaSummoned","GLOBAL",0)!Global("NaliaRomanceActive","GLOBAL",3)!Global("X3IsaRomanceActive","GLOBAL",2)!Global("X3KalRomanceActive","GLOBAL",2)!Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3RebRomanceActive","GLOBAL",2)!Global("X3VieRomanceActive","GLOBAL",2)!Global("AerieRomanceActive","GLOBAL",2)!Global("JaheiraRomanceActive","GLOBAL",2)!Global("ViconiaRomanceActive","GLOBAL",2)ReputationGT(Player1,7)Gender(Player1,MALE)~ THEN REPLY @0
DO ~SetGlobal("NaliaSpawnPlane","GLOBAL",1)CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
SetGlobal("NaliaRomanceActive","GLOBAL",2)
CreateCreature("NALIA18",[1999.1228],0) 
SetGlobal("NaliaSummoned","GLOBAL",1)~ GOTO 8
IF ~%New_ToB_Game%
!Dead("NALIA")!InMyArea("NALIA")Global("NaliaSummoned","GLOBAL",0)!Global("PGNaliaRomanceActive","GLOBAL",3)!Global("X3IsaRomanceActive","GLOBAL",2)!Global("X3KalRomanceActive","GLOBAL",2)!Global("X3EmiRomanceActive","GLOBAL",2)!Global("X3RebRomanceActive","GLOBAL",2)!Global("X3VieRomanceActive","GLOBAL",2)!Global("AerieRomanceActive","GLOBAL",2)!Global("JaheiraRomanceActive","GLOBAL",2)!Global("ViconiaRomanceActive","GLOBAL",2)ReputationGT(Player1,7)Gender(Player1,MALE)~ THEN REPLY @1
DO ~SetGlobal("NaliaSpawnPlane","GLOBAL",1)CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
SetGlobal("PGNaliaRomanceActive","GLOBAL",2)
CreateCreature("NALIA18",[1999.1228],0) 
SetGlobal("NaliaSummoned","GLOBAL",1)~ GOTO 8
END
