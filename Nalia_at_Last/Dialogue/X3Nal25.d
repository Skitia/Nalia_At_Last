//Friendship Conversation 1 
CHAIN IF ~Global("X3NaliaFriendship","GLOBAL",2)~ THEN NALIA25J Friendship1 
@103
DO ~RealSetGlobalTimer("X3NaliaToBLoveTimer","GLOBAL",1500)IncrementGlobal("X3NaliaFriendship","GLOBAL",1)~
= @104
END 
++ @105 + F1.1A
++ @106 + F1.1B
++ @107 + F1.1C

CHAIN NALIA25J F1.1A 
@111
EXTERN NALIA25J F1.2 

CHAIN NALIA25J F1.1B 
@110 
EXTERN NALIA25J F1.2

CHAIN NALIA25J F1.1C
@108
EXTERN NALIA25J F1.2

CHAIN NALIA25J F1.2 
@109
= @112
END 
++ @113 + F1.3A
++ @115 + F1.3C
++ @114 + F1.3B

CHAIN NALIA25J F1.3A 
@116
= @117
EXIT 

CHAIN NALIA25J F1.3B
@118
EXTERN NALIA25J F1.4

CHAIN NALIA25J F1.3C 
@120
EXTERN NALIA25J F1.4

CHAIN NALIA25J F1.4
@119
EXIT 

//Friendship Conversation 2
CHAIN IF ~Global("X3NaliaFriendship","GLOBAL",4)~ THEN NALIA25J Friendship2
@121
DO ~RealSetGlobalTimer("X3NaliaToBLoveTimer","GLOBAL",1500)IncrementGlobal("X3NaliaFriendship","GLOBAL",1)~
END 
++ @122 + F2.1A
++ @123 + F2.1B
++ @124 + F2.2

CHAIN NALIA25J F2.1A 
@125
EXTERN NALIA25J F2.2 

CHAIN NALIA25J F2.1B 
@126
EXTERN NALIA25J F2.2 

CHAIN NALIA25J F2.2 
@127
END 
++ @128 + F2.3
++ @129 + F2.3
++ @130 + F2.3

CHAIN NALIA25J F2.3 
@131
= @132
END 
++ @133 + F2.4
++ @134 + F2.4

CHAIN NALIA25J F2.4
@135
EXIT 
//Friendship 3
CHAIN IF ~Global("X3NaliaFriendship","GLOBAL",6)~ THEN NALIA25J Friendship3
@136
DO ~RealSetGlobalTimer("X3NaliaToBLoveTimer","GLOBAL",1500)IncrementGlobal("X3NaliaFriendship","GLOBAL",1)~
END 
++ @137 DO ~SetGlobal("X3NaliaMore","LOCALS",1)~ + F3.2
++ @138 + F3.2
++ @139 + F3.1
++ @140 + F3.End

CHAIN NALIA25J F3.1
@144
EXTERN NALIA25J F3.2 

CHAIN NALIA25J F3.2 
@142
= @143
END 
+~Global("X3NaliaMore","LOCALS",1)Global("X3NaliaMatch","GLOBAL",1)~+ @168 + F3.7
+~Global("X3NaliaMore","LOCALS",1)Global("X3NaliaMatch","GLOBAL",0)~+ @168 + F3.10
+~Global("X3NaliaMatch","GLOBAL",1)~+ @145 + F3.5
+~!Global("X3NaliaMatch","GLOBAL",1)~+ @145 + F3.11
++ @146 + F3.3
++ @147 + F3.3A
++ @150 + F3.4

CHAIN NALIA25J F3.3
@148
EXTERN NALIA25J F3.Exit 

CHAIN NALIA25J F3.Exit 
@151
EXIT 

CHAIN NALIA25J F3.3A 
@149
EXTERN NALIA25J F3.3
 
CHAIN NALIA25J F3.End 
@141
DO ~IncrementGlobal("X3NaliaFriendship","GLOBAL",2)~ // Prevents Friendship 4 from ever firing 
EXIT 

CHAIN NALIA25J F3.4
@152
EXTERN NALIA25J F3.Exit 

CHAIN NALIA25J F3.5
@153
END 
++ @155 + F3.7
++ @156 DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",1)~ + F3.6A
++ @157 + F3.6B

CHAIN NALIA25J F3.6A 
@169
EXTERN NALIA25J F3.Exit 

CHAIN NALIA25J F3.6B
@170
EXTERN NALIA25J F3.Exit 

CHAIN NALIA25J F3.7
@154
= @158
END 
++ @159 + F3.9B
++ @161 + F3.9B
++ @163 + F3.9A
++ @164 + F3.8

CHAIN NALIA25J F3.8
@165
EXTERN NALIA25J F3.Exit 

CHAIN NALIA25J F3.9A 
@171
DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",1)~
EXIT 

CHAIN NALIA25J F3.9B 
@162
= @160
DO ~SetGlobal("PGNaliaRomanceActove","GLOBAL",1)~
EXIT 

CHAIN NALIA25J F3.10
@166
EXTERN NALIA25J F3.11

CHAIN NALIA25J F3.11 
@167
EXTERN NALIA25J F3.Exit 

//Final Friendship ->Fires when finished Last Conversation, Melissan's plan revealed.
CHAIN IF ~Global("X3NaliaFriendship","GLOBAL",8)~ THEN NALIA25J Friendship4
@172
DO ~IncrementGlobal("X3NaliaFriendship","GLOBAL",1)~ 
END 
+~GlobalGT("PPEvilChoices","GLOBAL",3)~+ @173 + F4.Evil
+~GlobalGT("PPEvilChoices","GLOBAL",1)GlobalLT("PPEvilChoices","GLOBAL",4)~+ @173 + F4.Neutral
+~GlobalLT("PPEvilChoices","GLOBAL",2)~+ @173 + F4.Good
++ @174 + F4.1
++ @175 + F4.1

CHAIN NALIA25J F4.1
@176
END
IF ~GlobalGT("PPEvilChoices","GLOBAL",3)~ + F4.Evil
IF ~GlobalGT("PPEvilChoices","GLOBAL",1)GlobalLT("PPEvilChoices","GLOBAL",4)~ + F4.Neutral
IF ~GlobalLT("PPEvilChoices","GLOBAL",2)~ + F4.Good

CHAIN NALIA25J F4.Evil 
@177
= @178
EXTERN NALIA25J F4.Exit 

CHAIN NALIA25J F4.Exit 
@179
EXIT 

CHAIN NALIA25J F4.Neutral 
@180
= @181
EXTERN NALIA25J F4.Exit 

CHAIN NALIA25J F4.Good 
@182
= @183
EXIT 

//Romance - Standalone 

CHAIN IF ~Global("X3NaliaLove","GLOBAL",2)~ THEN NALIA25J StandaloneLove1
@184
DO ~RealSetGlobalTimer("X3NaliaToBLoveTimer","GLOBAL",2700)IncrementGlobal("X3NaliaLove","GLOBAL",1)~
END 
++ @185 + SL1.Home
++ @186 + SL1.Mother
++ @187 + SL1.Home
++ @188 + SL1.Exit 

CHAIN NALIA25J SL1.Home 
@190
= @191
= @192
END 
++ @193 + SL1.Reminder
++ @194 + SL1.Candlekeep 
++ @195 DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ + SL1.Break 
++ @196 + SL1.More

CHAIN NALIA25J SL1.Mother 
@197
= @198
END 
++ @199 + SL1.More 
++ @200 + SL1.Well
++ @201 + SL1.Money
++ @202 + SL1.Child 

CHAIN NALIA25J SL1.Child 
@203 
EXTERN NALIA25J SL1.Candlekeep 

CHAIN NALIA25J SL1.Candlekeep 
@204
END 
++ @210 + SL1.Loved 
++ @211 + SL1.Sad 
++ @212 + SL1.Sad 
++ @213 + SL1.Sad

CHAIN NALIA25J SL1.Money 
@205
EXTERN NALIA25J SL1.Candlekeep 

CHAIN NALIA25J SL1.Well 
@206
EXTERN NALIA25J SL1.Candlekeep 

CHAIN NALIA25J SL1.More 
@207
END 
++ @210 + SL1.Loved 
++ @211 + SL1.Sad 
++ @212 + SL1.Sad 
++ @213 + SL1.Sad

CHAIN NALIA25J SL1.Sad 
@214
EXIT 

CHAIN NALIA25J SL1.Loved 
@215
EXIT 

CHAIN NALIA25J SL1.Break 
@208
EXIT 

CHAIN NALIA25J SL1.Reminder 
@209
EXTERN NALIA25J SL1.Candlekeep 



CHAIN NALIA25J SL1.Exit 
@189
EXIT

//Standalone Love 2
CHAIN IF ~Global("X3NaliaLove","GLOBAL",4)~ THEN NALIA25J SL2 
@216 //~That wraith impersonating your father's form. It wasn't really him, but it felt real. Even I was a bit spooked.~
DO ~RealSetGlobalTimer("X3NaliaToBLoveTimer","GLOBAL",2700)IncrementGlobal("X3NaliaLove","GLOBAL",1)~
END 
++ @217 + SL2.Cold 
++ @218 + SL2.Tainted
++ @219 + SL2.Cold 

CHAIN NALIA25J SL2.Cold  
@220 
END 
++ @222 + SL2.Tainted 
++ @223 + SL2.Nothing
++ @224 + SL2.Purpose 

CHAIN NALIA25J SL2.Purpose 
@225
END 
++ @226 + SL2.Care 
++ @227 DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ + SL2.Break

CHAIN NALIA25J SL2.Break 
@228
EXIT 

CHAIN NALIA25J SL2.Care 
@229
EXTERN NALIA25J SL2.Not

CHAIN NALIA25J SL2.Not 
@230
EXIT 

CHAIN NALIA25J SL2.Nothing 
@231
EXTERN NALIA25J SL2.Care 

CHAIN NALIA25J SL2.Tainted 
@232
= @233
END 
++ @234 + SL2.Mean 
++ @235 + SL2.Care 
++ @236 + SL2.Unfeeling

CHAIN NALIA25J SL2.Mean 
@237
EXTERN NALIA25J SL2.Not

CHAIN NALIA25J SL2.Unfeeling 
@239
= @240
EXIT 

//STandalone Love 3 - PreRest
CHAIN IF ~Global("X3NaliaLove","GLOBAL",6)~ THEN NALIA25J SL3 
@241
DO ~RealSetGlobalTimer("X3NaliaToBLoveTimer","GLOBAL",2700)IncrementGlobal("X3NaliaLove","GLOBAL",1)~
END 
++ @242 + SL3.1
++ @243 + SL3.3
++ @244 + SL3.2

CHAIN NALIA25J SL3.1 
@245 
EXTERN NALIA25J SL3.3

CHAIN NALIA25J SL3.3
@247
END 
++ @248 + SL3.4
++ @249 + SL3.4
++ @250 + SL3.4

CHAIN NALIA25J SL3.2
@246
DO ~RestParty()~
EXIT 

CHAIN NALIA25J SL3.4
@251
= @252
= @253
END 
++ @254 + SL3.MeWhy
++ @255 + SL3.YouWhy 
++ @256 + SL3.Break 

CHAIN NALIA25J SL3.MeWhy 
@257
END 
++ @260 + SL3.Father 
++ @261 + SL3.Blush
++ @262 + SL3.Break 

CHAIN NALIA25J SL3.YouWhy 
@257
END 
++ @263 + SL3.Enjoy
++ @264 + SL3.Father 
++ @265 + SL3.Break 

CHAIN NALIA25J SL3.Father 
@266
EXTERN NALIA25J SL3.Warmer 

CHAIN NALIA25J SL3.Enjoy 
@268
EXTERN NALIA25J SL3.Warmer 

CHAIN NALIA25J SL3.Blush 
@269
EXTERN NALIA25J SL3.Warmer 

CHAIN NALIA25J SL3.Warmer 
@267
END 
++ @270 + SL3.Rest
++ @271 + SL3.Rest 
++ @272 + SL3.Rest 

CHAIN NALIA25J SL3.Rest 
@273
DO ~RestParty()~
EXIT 


CHAIN NALIA25J SL3.Break 
@259
DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~
EXTERN NALIA25J SL3.2

//Standalone Love 4

CHAIN IF ~Global("X3NaliaLove","GLOBAL",8)~ THEN NALIA25J SL4
@274 
DO ~RealSetGlobalTimer("X3NaliaToBLoveTimer","GLOBAL",2700)IncrementGlobal("X3NaliaLove","GLOBAL",1)~
= @275  
END 
++ @276 + SL4.2
++ @277 + SL4.1
++ @278 + SL4.3

CHAIN NALIA25J SL4.2
@279
= @283
EXTERN NALIA25J SL4.4

CHAIN NALIA25J SL4.1
@280
EXTERN NALIA25J SL4.2 

CHAIN NALIA25J SL4.3
@281
EXTERN NALIA25J SL4.4

CHAIN NALIA25J SL4.4 
@282
END 
++ @284 + SL4.6
++ @285 + SL4.6
++ @286 + SL4.5

CHAIN NALIA25J SL4.5
@288
EXTERN NALIA25J SL4.6

CHAIN NALIA25J SL4.6
@287
END 
++ @289 + SL4.7C
++ @290 + SL4.7B
++ @291 + SL4.7A

CHAIN NALIA25J SL4.7A
@292
EXIT 

CHAIN NALIA25J SL4.7B 
@293
EXIT 

CHAIN NALIA25J SL4.7C 
@294
EXIT 

//Standalone 5
CHAIN IF ~Global("X3NaliaLove","GLOBAL",10)~ THEN NALIA25J SL5 
@295 
DO ~RealSetGlobalTimer("X3NaliaToBLoveTimer","GLOBAL",2700)IncrementGlobal("X3NaliaLove","GLOBAL",1)~
END 
++ @296 + SL5.1
++ @297 + SL5.1
++ @298 + SL5.Exit

CHAIN NALIA25J SL5.Exit 
@299
EXIT 

CHAIN NALIA25J SL5.1
@300
END 
++ @301 + SL5.2
++ @302 + SL5.2
++ @303 + SL5.Break 

CHAIN NALIA25J SL5.2
@305
END 
++ @306 + SL5.3
++ @307 + SL5.3
++ @308 + SL5.3

CHAIN NALIA25J SL5.3
@309
= @310
END 
++ @311 + SL5.5
++ @312 + SL5.4
++ @313 + SL5.3B

CHAIN NALIA25J SL5.3B 
@316
EXTERN NALIA25J SL5.5

CHAIN NALIA25J SL5.4
@315
END 
++ @317 + SL5.4B
++ @318 + SL5.5
++ @319 + SL5.5

CHAIN NALIA25J SL5.4B
@320
EXTERN NALIA25J SL5.5

CHAIN NALIA25J SL5.5
@314
= @321
END 
++ @322 + SL5.6
++ @323 + SL5.6
++ @324 DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ + SL5.6

CHAIN NALIA25J SL5.6
@325
EXIT 

CHAIN NALIA25J SL5.Break 
@304
DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~
EXIT 

//Standalone Love 6
CHAIN IF ~Global("X3NaliaLove","GLOBAL",12)~ THEN NALIA25J SL6 
@326
DO ~RealSetGlobalTimer("X3NaliaToBLoveTimer","GLOBAL",2700)IncrementGlobal("X3NaliaLove","GLOBAL",1)~
= @327
END 
++ @328 + SL6.1
++ @329 + SL6.1
++ @330 + SL6.Break 

CHAIN NALIA25J SL6.Break 
@331
EXIT 

CHAIN NALIA25J SL6.1 
@332
= @333
END 
IF ~OR(3)Alignment(Player1,MASK_EVIL)ReputationLT(Player1,10)GlobalGT("PPEvilChoices","GLOBAL",2)~ EXTERN NALIA25J SL6.WickedBreak
IF ~!Alignment(Player1,MASK_EVIL)!ReputationLT(Player1,10)!GlobalGT("PPEvilChoices","GLOBAL",2)~ EXTERN NALIA25J SL6.Begin

CHAIN NALIA25J SL6.WickedBreak 
@334
DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~
= @335
END
++ @336 + SL6WB.1
++ @337 + SL6WB.2
++ @338 + SL6WB.3

CHAIN NALIA25J SL6WB.1
@341
EXTERN NALIA25J SL6WB.4

CHAIN NALIA25J SL6WB.2 
@340
EXTERN NALIA25J SL6WB.4

CHAIN NALIA25J SL6WB.3 
@339
EXTERN NALIA25J SL6.WickedBreakExit 

CHAIN NALIA25J SL6WB.4
@342
EXTERN NALIA25J SL6.WickedBreakExit 

CHAIN NALIA25J SL6.WickedBreakExit 
@344
EXIT 

CHAIN NALIA25J SL6.Begin
@345
= @346
END 
++ @347 DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",2)~ + SL6.2
++ @348 DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ + SL6.End 

CHAIN NALIA25J SL6.End 
@349
EXIT 

CHAIN NALIA25J SL6.2 
@350
END 
++ @351 + SL6.3A
++ @352 + SL6.3B 
++ @353 + SL6.4

CHAIN NALIA25J SL6.4
@354
EXIT 

CHAIN NALIA25J SL6.3A 
@355
EXTERN NALIA25J SL6.5

CHAIN NALIA25J SL6.3B
@356
EXTERN NALIA25J SL6.5

CHAIN NALIA25J SL6.5
@357
EXIT 

//Standalone Love 7 - Rest
CHAIN IF ~Global("X3NaliaLove","GLOBAL",14)~ THEN NALIA25J SL7
@358
DO ~IncrementGlobal("X3NaliaLove","GLOBAL",1)~
END 
++ @359 + SL7.1
++ @360 + SL7.1
++ @361 + SL7B



CHAIN NALIA25J SL7B 
@362 
EXTERN NALIA25J SL7.1

CHAIN NALIA25J SL7.1
@363
= @364
END 
++ @365 + SL7.2
++ @366 + SL7.1B
++ @367 + SL7.2

CHAIN NALIA25J SL7.2
@368
END 
++ @370 + SL7.3A
++ @371 + SL7.3A
++ @372 + SL7.3B

CHAIN NALIA25J SL7.3A 
@374
DO ~RestParty()~
EXIT 

CHAIN NALIA25J SL7.3B 
@373
DO ~RestParty()~
EXIT 

CHAIN NALIA25J SL7.1B 
@369
EXTERN NALIA25J SL7.2

//Standalone Love 8 - Post Rest
CHAIN IF ~Global("X3NaliaLove","GLOBAL",16)~ THEN NALIA25J SL8
@375
DO ~IncrementGlobal("X3NaliaLove","GLOBAL",1)~
END 
++ @376 + SL8.2
++ @377 + SL8.2
++ @378 + SL8.1B

CHAIN NALIA25J SL8.1B 
@379
EXTERN NALIA25J SL8.2

CHAIN NALIA25J SL8.2
@380
= @381
= @382
EXIT 

//Standalone Love 9 => Finished Last Conversation with Solar 

CHAIN IF ~Global("X3NaliaLove","GLOBAL",18)~ THEN NALIA25J SL9
@383 
DO ~IncrementGlobal("X3NaliaLove","GLOBAL",1)~
END 
++ @384 + SL9.2
++ @385 + SL9.1
++ @386 + SL9.1

CHAIN NALIA25J SL9.1
@387
EXTERN NALIA25J SL9.2 

CHAIN NALIA25J SL9.2
@388
= @389
END 
++ @390 + SL9.3A
++ @391 + SL9.3B 

CHAIN NALIA25J SL9.3A 
@393
EXIT 

CHAIN NALIA25J SL9.3B
@392
EXIT 

//Arnel's Nalia and DeARnise use this branch.
CHAIN IF ~Global("PGNaliaLove","GLOBAL",2)~ THEN NALIA25J LoveTalk1
@394 
DO ~RealSetGlobalTimer("X3NaliaToBLoveTimer","GLOBAL",3200)IncrementGlobal("PGNaliaLove","GLOBAL",1)~
END 
++ @395 + LT.1
++ @396 + LT.1
++ @397 + LT.End 

CHAIN NALIA25J LT.End
@398
EXIT  

CHAIN NALIA25J LT.1
@399 
END 
++ @400 + LT.2
++ @401 + LT.2
++ @402 + LT.2

CHAIN NALIA25J LT.2
@403
= @404 
END 
++ @405 + LT.3A 
++ @406 + LT.3B 
++ @407 + LT.3C 

CHAIN NALIA25J LT.3A 
@408
END 
IF ~Global("NaliaRomanceActive","GLOBAL",2)~ EXTERN NALIA25J LT.3Married
IF ~!Global("NaliaRomanceActive","GLOBAL",2)~ EXTERN NALIA25J LT.3Unmarried

CHAIN NALIA25J LT.3Married 
@412
EXTERN NALIA25J LT.4

CHAIN NALIA25J LT.3Unmarried 
@411
EXTERN NALIA25J LT.4



CHAIN NALIA25J LT.3B 
@409
EXTERN NALIA25J LT.4

CHAIN NALIA25J LT.3C 
@410
= @413
EXTERN NALIA25J LT.4

CHAIN NALIA25J LT.4
@414
EXIT 

//Love Talk 2
CHAIN IF ~Global("PGNaliaLove","GLOBAL",4)~ THEN NALIA25J LoveTalk2
@415 
DO ~RealSetGlobalTimer("X3NaliaToBLoveTimer","GLOBAL",3200)IncrementGlobal("PGNaliaLove","GLOBAL",1)~
= @416
END 
++ @417 + LT2.2A
++ @418 + LT2.2B
++ @419 + LT2.2C

CHAIN NALIA25J LT2.2A
@422
EXTERN NALIA25J LT2.2D

CHAIN NALIA25J LT2.2B
@421
EXTERN NALIA25J LT2.2D

CHAIN NALIA25J LT2.2D
@423
END 
++ @434 + LT2.4A
++ @435 + LT2.4B

CHAIN NALIA25J LT2.4A 
@436
EXIT 

CHAIN NALIA25J LT2.4B
@437
EXIT 

CHAIN NALIA25J LT2.2C
@420
END 
++ @424 + LT2.3A
++ @425 + LT2.3A
++ @426 + LT2.3B

CHAIN NALIA25J LT2.3A 
@427
= @428
END 
++ @429 + LT2.3B
++ @430 + LT2.3B
++ @431 + LT2.3B

CHAIN NALIA25J LT2.3B 
@432
= @433
EXIT 
//Love Talk 3
CHAIN IF ~Global("PGNaliaLove","GLOBAL",6)~ THEN NALIA25J LoveTalk3 
@438 
DO ~RealSetGlobalTimer("X3NaliaToBLoveTimer","GLOBAL",3200)IncrementGlobal("PGNaliaLove","GLOBAL",1)~
END 
++ @439 + L3.1
++ @440 + L3.1
++ @441 + L3.1

CHAIN NALIA25J L3.1
@442
END 
++ @443 + L3.2A 
++ @444 + L3.3
++ @445 + L3.2B

CHAIN NALIA25J L3.2A
@446
EXTERN NALIA25J L3.3

CHAIN NALIA25J L3.2B
@447
EXTERN NALIA25J L3.3

CHAIN NALIA25J L3.3
@448
= @449
END 
++ @450 + L3.4A
+~Global("NaliaRomanceActive","GLOBAL",2)~+ @451 + L3.Married
++ @452 + L3.Silence
++ @453 + L3.Leave 

CHAIN NALIA25J L3.Married 
@454
EXTERN NALIA25J L3.Silence 

CHAIN NALIA25J L3.4A
@456
EXTERN NALIA25J L3.Silence

CHAIN NALIA25J L3.Leave 
@457
DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)SetGlobal("NaliaRomanceActive","GLOBAL",3)
GivePartyAllEquipment()
LeaveParty()
EscapeArea()~
EXIT 

CHAIN NALIA25J L3.Silence 
@455
DO ~SetGlobal("X3NaliaSilence","GLOBAL",1)~
EXIT 

//LoveTalk 4
CHAIN IF ~Global("PGNaliaLove","GLOBAL",8)~ THEN NALIA25J LoveTalk4
@458
DO ~RealSetGlobalTimer("X3NaliaToBLoveTimer","GLOBAL",3200)IncrementGlobal("PGNaliaLove","GLOBAL",1)~
END 
+~Global("NaliaRomanceActive","GLOBAL",2)~+ @459 + L4.Arnel //Arnel 
+~Global("PGNaliaRomanceActive","GLOBAL",2)~+ @459 + L4.Arnise
++ @460 + L4.Exit 

CHAIN NALIA25J L4.Arnel 
@462
= @463
END 
++ @464 + L4.GoodDeed
++ @465 + L4.Love
++ @466 + L4.GoodDeed 

CHAIN NALIA25J L4.Love 
@470
EXTERN NALIA25J L4.GoodDeed 

CHAIN NALIA25J L4.GoodDeed 
@467
= @468
END 
++ @477 + L4.1
++ @478 + L4.2 
++ @479 + L4.3 

CHAIN NALIA25J L4.1 
@469
EXIT 


CHAIN NALIA25J L4.Arnise 
@471
END 
++ @472 + L4.Power 
++ @473 + L4.Power 
++ @474 + L4.Power 

CHAIN NALIA25J L4.Power 
@475
= @476
EXTERN NALIA25J L4.GoodDeed

CHAIN NALIA25J L4.Exit 
@461
DO ~SetGlobal("X3NaliaIgnore","LOCALS",1)~
EXIT

CHAIN NALIA25J L4.2
@481
EXIT 

CHAIN NALIA25J L4.3
@480
EXIT 

//Love Talk 5
CHAIN IF ~Global("PGNaliaLove","GLOBAL",10)~ THEN NALIA25J LoveTalk5
@482 
DO ~RealSetGlobalTimer("X3NaliaToBLoveTimer","GLOBAL",3200)IncrementGlobal("PGNaliaLove","GLOBAL",1)~
END 
IF ~Global("X3NaliaIgnore","LOCALS",1)~ EXTERN NALIA25J L5.Ignore
IF ~!Global("X3NaliaIgnore","LOCALS",1)~ EXTERN NALIA25J L5.Begin 

CHAIN NALIA25J L5.Ignore 
@483
END 
++ @488 + L5.1
++ @485 DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)SetGlobal("NaliaRomanceActive","GLOBAL",3)~ + L5.SilentBreak

CHAIN NALIA25J L5.Begin
@484
END 
++ @489 + L5.BeginB
++ @488 + L5.1
++ @486 DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)SetGlobal("NaliaRomanceActive","GLOBAL",3)~ + L5.SilentBreak

CHAIN NALIA25J L5.BeginB 
@490
EXIT 

CHAIN NALIA25J L5.1
@491
END 
IF ~OR(3)Alignment(Player1,MASK_EVIL)ReputationLT(Player1,10)GlobalGT("PPEvilChoices","GLOBAL",2)~ EXTERN NALIA25J L5.You
IF ~!Alignment(Player1,MASK_EVIL)!ReputationLT(Player1,10)!GlobalGT("PPEvilChoices","GLOBAL",2)~ EXTERN NALIA25J L5.Me

CHAIN NALIA25J L5.SilentBreak
@487
EXIT 

CHAIN NALIA25J L5.You
@492
= @495
= @496
END 
+~Global("NaliaRomanceActive","GLOBAL",2)~+ @498 DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)SetGlobal("NaliaRomanceActive","GLOBAL",3)~ + L5.Y1
+~!Global("NaliaRomanceActive","GLOBAL",2)~+ @504  DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)SetGlobal("NaliaRomanceActive","GLOBAL",3)~ + L5.Y2
++ @499 DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)SetGlobal("NaliaRomanceActive","GLOBAL",3)~ + L5.Y3
++ @500 DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)SetGlobal("NaliaRomanceActive","GLOBAL",3)~ + L5.Y4

CHAIN NALIA25J L5.Y1
@501
EXIT 

CHAIN NALIA25J L5.Y4
@502
EXIT 

CHAIN NALIA25J L5.Y3 
@503 
EXIT 

CHAIN NALIA25J L5.Y2
@505
EXIT 

CHAIN NALIA25J L5.Me 
@493
= @494
= @497
END 
++ @506 + L5.M1 
++ @507 + L5.M2 
++ @508 + L5.M3 

CHAIN NALIA25J L5.M3 
@512 
DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)SetGlobal("NaliaRomanceActive","GLOBAL",3)~
EXIT 

CHAIN NALIA25J L5.M1
@509
EXTERN NALIA25J L5.2

CHAIN NALIA25J L5.M2
@511
EXTERN NALIA25J L5.2 

CHAIN NALIA25J L5.2 
@510
END 
++ @513 + L5.3 
++ @514 + L5.3 
++ @515 + L5.3 

CHAIN NALIA25J L5.3 
@516
EXIT 

//Love Talk 6 - Pre Rest 
CHAIN IF ~Global("PGNaliaLove","GLOBAL",12)~ THEN NALIA25J LoveTalk6 
@517
DO ~RealSetGlobalTimer("X3NaliaToBLoveTimer","GLOBAL",3200)IncrementGlobal("PGNaliaLove","GLOBAL",1)~
END 
++ @518 + L6.1
++ @519 + L6.3 
++ @520 + L6.2

CHAIN NALIA25J L6.1
@521
EXTERN NALIA25J L6.3

CHAIN NALIA25J L6.2 
@522
EXTERN NALIA25J L6.3

CHAIN NALIA25J L6.3
@523
= @532
END 
++ @524 + L6.5
++ @525 + L6.4
++ @526 + L6.6
++ @527 + L6.6

CHAIN NALIA25J L6.4
@528
END 
++ @529 + L6.5
++ @526 + L6.6
++ @527 + L6.6

CHAIN NALIA25J L6.6
@530
DO ~RestParty()~
EXIT 

CHAIN NALIA25J L6.5
@531
DO ~SetGlobal("X3NaliaSilence","GLOBAL",2)RestParty()~ //Nalia will mention she still needs a little more time for PID 
EXIT 

//Love Talk 7
CHAIN IF ~Global("PGNaliaLove","GLOBAL",14)~ THEN NALIA25J LoveTalk7
@533 
DO ~SetGlobal("X3NaliaSilence","GLOBAL",0)IncrementGlobal("PGNaliaLove","GLOBAL",1)~
= @534
= @535
END 
++ @536 + L7.1A
+~Global("NaliaRomanceActive","GLOBAL",2)~+ @537 + L7.1B
+~Global("X3NaliaSilence","GLOBAL",2)~+ @538 + L7.1C 
+~!Global("X3NaliaSilence","GLOBAL",2)~+ @539 + L7.1C
++ @540 + L7.Break 

CHAIN NALIA25J L7.1A
@546
EXTERN NALIA25J L7.2

CHAIN NALIA25J L7.1B 
@545
EXTERN NALIA25J L7.3 

CHAIN NALIA25J L7.1C 
@543
EXTERN NALIA25J L7.2 

CHAIN NALIA25J L7.2
@544
END 
++ @547 + L7.3
++ @548 + L7.Reject 

CHAIN NALIA25J L7.Reject 
@549
EXIT 

CHAIN NALIA25J L7.3 
@550
EXIT 

CHAIN NALIA25J L7.Break 
@541
= @542
DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)SetGlobal("NaliaRomanceActive","GLOBAL",3)~
EXIT 

//LoveTalk 8 - Post Rest, no timer.

CHAIN IF ~Global("PGNaliaLove","GLOBAL",16)~ THEN NALIA25J LoveTalk
@551
DO ~IncrementGlobal("PGNaliaLove","GLOBAL",1)~
END 
++ @552 + L8.1A
++ @553 + L8.1B
++ @554 + L8.1C
++ @555 + L8.2B

CHAIN NALIA25J L8.1A
@556 
EXTERN NALIA25J L8.2B

CHAIN NALIA25J L8.1B 
@557
EXTERN NALIA25J L8.2B

CHAIN NALIA25J L8.1C
@558
EXTERN NALIA25J L8.2B

CHAIN NALIA25J L8.2B
@560
= @561
END 
++ @562 + L8.3A
++ @563 + L8.3B
++ @564 + L8.3A
++ @565 + L8.3A 

CHAIN NALIA25J L8.3A 
@566
= @567
END 
++ @571 + L8.5A
++ @572 DO ~SetGlobal("X3NaliaCandleKeep","GLOBAL",1)~ + L8.5B
++ @573 DO ~SetGlobal("X3NaliaRuleTogether","GLOBAL",1)~ + L8.5C
++ @574 + L8.4

CHAIN NALIA25J L8.5A
@575
EXTERN NALIA25J L8.7

CHAIN NALIA25J L8.5B 
@575
EXTERN NALIA25J L8.7

CHAIN NALIA25J L8.5C 
@577
EXTERN NALIA25J L8.7

CHAIN NALIA25J L8.3B 
@568
EXTERN NALIA25J L8.4

CHAIN NALIA25J L8.4
@569
END 
++ @578 + L8.6A 
++ @579 + L8.6B 
++ @580 + L8.6C


CHAIN NALIA25J L8.6A 
@582
EXTERN NALIA25J L8.7

CHAIN NALIA25J L8.6B 
@583
EXTERN NALIA25J L8.7

CHAIN NALIA25J L8.6C 
@584
EXTERN NALIA25J L8.7

CHAIN NALIA25J L8.7
@585
DO ~RestParty()~
EXIT 

//LoveTalk 9 - Last Solar Talk. Short and simple.

CHAIN IF ~Global("PGNaliaLove","GLOBAL",18)~ THEN NALIA25J Lovetalk9
@586
DO ~IncrementGlobal("PGNaliaLove","GLOBAL",1)~
= @587
END 
++ @588 + L9.1
++ @589 + L9.1
++ @590 + L9.1

CHAIN NALIA25J L9.1
@591
= @592
EXIT 



EXTEND_BOTTOM HGWRA01 18
IF ~OR(2)Global("NaliaRomanceActive","GLOBAL",2)Global("PGNaliaRomanceActive","GLOBAL",2) InParty("Nalia") See("Nalia")~ EXTERN HGWRA01 NaliaWraith1
END

CHAIN HGWRA01 NaliaWraith1
@0
DO ~SetGlobal("X3LovedOne","GLOBAL",6)~
== Nalia25J @1
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
IF ~Global("X3LovedOne","GLOBAL",6)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("X3NW1")~ EXIT
END

BEGIN X3NLOVE 

CHAIN 
IF ~Global("NaliaWraithSpirit1","GLOBAL",0)~ THEN X3NLOVE NaliaWraithSpirit1
@2
DO ~SetGlobal("NaliaWraithSpirit1","GLOBAL",1)~
== Nalia25J @3
== X3NLOVE @4
== Nalia25J @5
== X3NLOVE @6
== Nalia25J @7
== X3NLOVE @8
== Nalia25J @9
== X3NLOVE @10
== Nalia25J @11
DO ~SetGlobal("PGNaliaLove","GLOBAL",6)~
END 
++ @12 EXTERN HGWRA01 25
++ @13 EXTERN HGWRA01 25
++ @14 EXTERN HGWRA01 25 
+ ~CheckStatGT(Player1,16,WIS)~ + @15 EXTERN HGWRA01 25 

// NALIA25A Extensions and Edits
/*First, adding some conditions to NALIA25A's first dialogue branch. This should allow us to write new branches without concern of this one firing.*/
ADD_STATE_TRIGGER NALIA25A 0 ~!Global("NaliaRomanceActive","GLOBAL",2)!Global("PGNaliaRomanceActive","GLOBAL",2)~

ADD_STATE_TRIGGER NALIA25A 8 ~!Global("NaliaRomanceActive","GLOBAL",2)!Global("PGNaliaRomanceActive","GLOBAL",2)~

//This one fires if romanced.
CHAIN IF ~Global("NaliaSummoned","GLOBAL",1)OR(2)Global("NaliaRomanceActive","GLOBAL",2)Global("PGNaliaRomanceActive","GLOBAL",2)~ THEN NALIA25A NaliaMarriedMeet
@16
DO ~SetGlobal("NaliaSummoned","GLOBAL",2)~
END 
++ @17 + NMM.1
++ @18 + NMM.2
+~Global("NaliaRomanceActive","GLOBAL",2)~+ @19 + NMM.3

CHAIN NALIA25A NMM.1
@20 
EXTERN NALIA25A NMM.4

CHAIN NALIA25A NMM.2
@22
EXTERN NALIA25A NMM.4

CHAIN NALIA25A NMM.3 
@23
EXTERN NALIA25A NMM.4

CHAIN NALIA25A NMM.4
@21
= @24
= @25
END 
++ @26 + JoinQuestion
++ @27 + Powerless
++ @28 + LessCaring
++ @29 + ChangeForYou

CHAIN NALIA25A ChangeForYou 
@30
END 
++ @31 + JoinQuestion
++ @27 + Powerless
++ @32 + JoinQuestion

CHAIN NALIA25A Powerless
@33
EXTERN NALIA25A JoinQuestion

CHAIN NALIA25A LessCaring
@38
END 
++ @31 + JoinQuestion
++ @27 + Powerless
++ @32 + JoinQuestion

CHAIN NAlIA25A JoinQuestion
@34
END 
++ @35 DO ~JoinParty()~ EXIT 
++ @36 + WaitHere

CHAIN NALIA25A WaitHere 
@37
DO ~MoveToPointNoInterrupt([1483.1540])
Face(0)~
EXIT 

CHAIN IF ~Global("NaliaSummoned","GLOBAL",2)Global("NaliaRomanceActive","GLOBAL",2)~ THEN NALIA25A NaliaMarriedMeetAgain
@39
END 
++ 65644 DO ~JoinParty()~ EXIT 
++ 65645 + WaitLonger 

CHAIN NALIA25A WaitLonger 
@40
EXIT 

CHAIN IF ~Global("NaliaSummoned","GLOBAL",2)!Global("NaliaRomanceActive","GLOBAL",2)Global("PGNaliaRomanceActive","GLOBAL",2)~ THEN NALIA25A NaliaUnmarriedMeetAgain
@41
END 
++ 65644 DO ~JoinParty()~ EXIT 
++ 65645 + UnmarriedWaitLonger 

CHAIN NALIA25A UnmarriedWaitLonger 
@42
EXIT 


//New Interjections, primarily regarding prostitute addition and some other fluff.
//Saradush Interjects 

A_T_T SARPROVF 0 ~!Global("NaliaRomanceActive","GLOBAL",2)!Global("PGNaliaRomanceActive","GLOBAL",2)~ DO 0

EXTEND_BOTTOM SARPROVF 0
IF ~OR(2)Global("PGNaliaRomanceActive","GLOBAL",2)Global("NaliaRomanceActive","GLOBAL",2)IsValidForPartyDialogue("NALIA")~ EXTERN NALIA25J SARPROVF-Care
END

CHAIN NALIA25J SARPROVF-Care 
@43
EXTERN SARPROVF 1

EXTEND_BOTTOM SARPRO01 11
IF ~Global("NaliaRomanceActive","GLOBAL",2)IsValidForPartyDialog("NALIA") Gender(Player1,MALE)~  EXTERN NALIA25J SarPro_NoM 
END 

EXTEND_BOTTOM SARPRO01 11
IF ~Global("PGNaliaRomanceActive","GLOBAL",2)!Global("NaliaRomanceActive","GLOBAL",2)IsValidForPartyDialog("NALIA") Gender(Player1,MALE)~  EXTERN NALIA25J SarPro_No 
END 


CHAIN NALIA25J SarPro_NoM 
@44
END 
++ @46 EXTERN NALIA25J SarPro_Yes 
+~PartyGoldGT(99)~+ @47 EXTERN NALIA25J SarPro_Break 

CHAIN NALIA25J SarPro_No 
@45
END 
++ @46 EXTERN NALIA25J SarPro_Yes 
+~PartyGoldGT(99)~+ @47 EXTERN NALIA25J SarPro_Break 

CHAIN NALIA25J SarPro_Yes 
@48
EXTERN SARPRO01 3

CHAIN NALIA25J SarPro_Break 
@49
EXTERN SARPRO01 12 

// Volo's obligatory interjection in Saradush.

A_T_T SARVOLO 30 ~!Global("NaliaRomanceActive","GLOBAL",2)!Global("PGNaliaRomanceActive","GLOBAL",2)~ DO 0

A_T_T SARVOLO 30 ~!Global("NaliaRomanceActive","GLOBAL",2)!Global("PGNaliaRomanceActive","GLOBAL",2)~ DO 1

EXTEND_BOTTOM SARVOLO 30
IF ~InParty("NALIA")OR(2)Global("NaliaRomanceActive","GLOBAL",2)Global("PGNaliaRomanceActive","GLOBAL",2)~ EXTERN SARVOLO NaliaVoloBio
END

CHAIN SARVOLO NaliaVoloBio
@50
COPY_TRANS SARVOLO 30


// Solar, final interjections at the Throne of Bhaal and <CHARNAME>'s choice for the romanced protagonists.

// non-romanced - adding in romance check



// romanced, Nalia and PC talk before the choice

EXTEND_BOTTOM NALIA25J 1
IF ~IsValidForPartyDialogue("NALIA")OR(2)Global("NaliaRomanceActive","GLOBAL",2)Global("PGNaliaRomanceActive","GLOBAL",2)Global("NaliaSolarPers","GLOBAL",0)~ DO ~SetGlobal("NaliaSolarPers","GLOBAL",1)~ EXTERN Nalia25J NALIASolarPers
END

CHAIN NALIA25J NALIASolarPers
@88
END
++ @89 + FinalChoice.1
++ @795 + FinalChoice.1
+~Global("NaliaRomanceActive","GLOBAL",2)~+ @90 + FinalChoice.2A
+~!Global("NaliaRomanceActive","GLOBAL",2)PartyHasItem("X3RingN")~+ @91 + FinalChoice.2B
+~!Global("NaliaRomanceActive","GLOBAL",2)!PartyHasItem("X3RingN")~+ @91 + FinalChoice.2C
++ @92 + FinalChoice.1

CHAIN NALIA25J FinalChoice.1
@93
EXTERN Nalia25J FinalChoice.TY

CHAIN NALIA25J FinalChoice.2A 
@94
EXTERN Nalia25J FinalChoice.TY

CHAIN NALIA25J FinalChoice.2B 
@95
EXTERN Nalia25J FinalChoice.TY

CHAIN NALIA25J FinalChoice.2C
@96
EXTERN Nalia25J FinalChoice.TY

CHAIN NALIA25J FinalChoice.TY
@97
END 
IF ~OR(2)PartyHasItem("X3RingN")Global("NaliaRomanceActive","GLOBAL",2)~ EXTERN NALIA25J FinalChoice.Wife
IF ~!PartyHasItem("X3RingN")!Global("NaliaRomanceActive","GLOBAL",2)~ EXTERN NALIA25J FinalChoice.NWife

CHAIN NALIA25J FinalChoice.Wife
@98
EXTERN NALIA25J FinalChoice.Final

CHAIN NALIA25J FinalChoice.NWife
@99
EXTERN NALIA25J FinalChoice.Final

CHAIN NALIA25J FinalChoice.Final 
@100
COPY_TRANS NALIA25J 2

// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~IsValidForPartyDialogue("Nalia") OR(2)Global("NaliaRomanceActive","GLOBAL",2)Global("PGNaliaRomanceActive","GLOBAL",2) Global("NaliaSolarLeave","GLOBAL",0)~ DO ~SetGlobal("NaliaSolarLeave","GLOBAL",1)~ EXTERN Nalia25J NaliaSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~IsValidForPartyDialogue("Nalia") OR(2)Global("NaliaRomanceActive","GLOBAL",2)Global("PGNaliaRomanceActive","GLOBAL",2) Global("NaliaSolarLeave","GLOBAL",0)~ DO ~SetGlobal("NaliaSolarLeave","GLOBAL",1)~ EXTERN Nalia25J NaliaSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~IsValidForPartyDialogue("Nalia") OR(2)Global("NaliaRomanceActive","GLOBAL",2)Global("PGNaliaRomanceActive","GLOBAL",2) Global("NaliaSolarLeave","GLOBAL",0)~ DO ~SetGlobal("NaliaSolarLeave","GLOBAL",1)~ EXTERN Nalia25J NaliaSolarLeave
END

CHAIN Nalia25J NaliaSolarLeave
@101
END
COPY_TRANS FINSOL01 31

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~IsValidForPartyDialogue("Nalia") OR(2)Global("NaliaRomanceActive","GLOBAL",2)Global("PGNaliaRomanceActive","GLOBAL",2) Global("X3NaliaSolarStay","GLOBAL",0)~ DO ~SetGlobal("X3NaliaSolarStay","GLOBAL",1)~ EXTERN Nalia25J NaliaSolarStay
END

CHAIN NALIA25J NaliaSolarStay
@102
COPY_TRANS FINSOL01 32







//Engagement Ring Crossmod 

CHAIN IF ~Global("X3Engagement","LOCALS",1)Global("NaliaRomanceActive","GLOBAL",2)~ THEN NALIA25J engagementv1 
@58
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ @59 + engagement_doubts
++ @60 + engagement_yes 
++ @61 + engagement_yes 

CHAIN NALIA25J engagement_yes 
@63
EXTERN NALIA25J engagement_yes2 

CHAIN NALIA25J engagement_doubts
@62
EXTERN NALIA25J engagement_yes2 

CHAIN IF ~Global("X3Engagement","LOCALS",1)Global("PGNaliaRomanceActive","GLOBAL",2)~ THEN NALIA25J engagementv2
@65
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
++ @59 + engagement_doubts2
++ @66 + engagement_yes3 
++ @67 + engagement_yes3 

CHAIN NALIA25J engagement_doubts2
@68
EXTERN NALIA25J engagement_yes2 

CHAIN NALIA25J engagement_yes3 
@69
EXTERN NALIA25J engagement_yes2 

CHAIN NALIA25J engagement_yes2 
@64
DO ~TransformItem("X3ERING","X3RINGN")~
== MINSC25J IF ~IsValidForPartyDialogue("MINSC")~ THEN @77
== JAHEI25J IF ~IsValidForPartyDialogue("JAHEIRA")~ THEN @78
== AERIE25J IF ~IsValidForPartyDialogue("AERIE")~ THEN @79
EXIT 


CHAIN IF ~Global("X3Engagement","LOCALS",1)!Global("NaliaRomanceActive","GLOBAL",2)!Global("PGNaliaRomanceActive","GLOBAL",2)~ THEN NALIA25J engagement_auto_fail 
@70
DO ~IncrementGlobal("X3Engagement","LOCALS",1)~
END 
+~!Global("PGNaliaRomanceActive","GLOBAL",1)~+ @71 + eaf.2
+~!Global("PGNaliaRomanceActive","GLOBAL",1)~+ @72 + eaf.2
+~!Global("PGNaliaRomanceActive","GLOBAL",1)~+ @73 + eaf.3
+~Global("PGNaliaRomanceActive","GLOBAL",1)~+ @71 + eaf.1 
+~Global("PGNaliaRomanceActive","GLOBAL",1)~+ @72 + eaf.1
+~Global("PGNaliaRomanceActive","GLOBAL",1)~+ @73 + eaf.1

CHAIN NALIA25J eaf.1 
@74
DO ~ActionOverride(Player1,TakePartyItem("X3ERing"))~
EXIT 

CHAIN NALIA25J eaf.2
@75
DO ~ActionOverride(Player1,TakePartyItem("X3ERing"))~
EXIT 

CHAIN NALIA25J eaf.3
@76
DO ~ActionOverride(Player1,TakePartyItem("X3ERing"))~
EXIT 

//Flirts
// Group Kiss from PID 
CHAIN NALIA25J Group.Kiss 
@80
== JAHEI25J IF ~IsValidForPartyDialogue("JAHEIRA")~ THEN @81
== MINSC25J IF ~IsValidForPartyDialogue("MINSC")~ THEN @82
== VICON25J IF ~IsValidForPartyDialogue("VICONIA")~ THEN @83
== IMOEN25J IF ~IsValidForPartyDialogue("IMOEN2")~ THEN @84
== NALIA25J @85
== NALIA25J @86
EXIT 




APPEND NALIA25J

// Active=1 initiated flirts

IF WEIGHT #-1 ~Global("X3NaliaStartFlirt","GLOBAL",1)Global("PGNaliaRomanceActive","GLOBAL",1)~ flirtlevel1
SAY @595

 IF ~~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate1
IF ~RandomNum(20,1)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate2
IF ~RandomNum(20,2)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate3
IF ~RandomNum(20,3)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate4
IF ~RandomNum(20,4)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate5
IF ~RandomNum(20,5) HPPercentLT("Nalia",50) ~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + injured1A
IF ~RandomNum(20,6)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate6
IF ~RandomNum(20,7)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate7
IF ~RandomNum(20,8)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate8
IF ~RandomNum(20,9) AreaType(DUNGEON)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + dungeon1
IF ~RandomNum(20,10)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate9
IF ~RandomNum(20,11)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate10
IF ~RandomNum(20,12)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate11
IF ~RandomNum(20,13)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate12
IF ~RandomNum(20,14)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate13
IF ~RandomNum(20,15) CheckStatGT(Player1,13,INT)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + highint1
IF ~RandomNum(20,16) HPPercentLT(Player1,75)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + injured1B
IF ~RandomNum(20,17) CheckStatGT(Player1,14,STR)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + highstr1
IF ~RandomNum(20,18) OR(2)TimeOfDay(DAY)TimeOfDay(MORNING)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + day1
IF ~RandomNum(20,19) OR(2)TimeOfDay(NIGHT)TimeOfDay(DUSK)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + night1
IF ~RandomNum(20,20)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate14


END

IF ~~ initiate1 
SAY @597
IF ~~ EXIT 
END 

IF ~~ initiate2 
SAY @598
IF ~~ EXIT 
END 

IF ~~ initiate3 
SAY @599 
= @600
IF ~~ EXIT 
END 

IF ~~ initiate4
 SAY @601
 = @602
 IF ~~ EXIT 
 END 
 
 IF ~~ initiate5 
 SAY @603 
 IF ~~ EXIT 
 END 
 
 IF ~~ injured1A 
 SAY @604
 IF ~~ EXIT 
 END 
 
 IF ~~ initiate6
 SAY @605
 = @606
 IF ~~ EXIT 
 END 
 
 IF ~~ initiate7 
 SAY @607
 IF ~~ EXIT 
 END 
 
 IF ~~ initiate8
 SAY @608
 IF ~~ EXIT 
 END 

IF ~~ dungeon1 
SAY @609
IF ~~ EXIT 
END 

IF ~~ initiate9 
SAY @610
IF ~~ EXIT 
END 

IF ~~ initiate10 
SAY @611
IF ~~ EXIT 
END 

IF ~~ initiate11
SAY @611
IF ~~ EXIT 
END 

IF ~~ initiate12
SAY @612
= @613
IF ~~ EXIT 
END 


IF ~~ initiate13
SAY @614
IF ~~ EXIT 
END 

IF ~~ initiate14 
SAY @615 
IF ~~ EXIT 
END 

IF ~~ highint1 
SAY @616
IF ~~ EXIT 
END 

IF ~~ injured1B 
SAY @617
IF ~~ EXIT 
END 

IF ~~ highstr1 
SAY @618
IF ~~ EXIT 
END 

IF ~~ day1 
SAY @619
IF ~~ EXIT 
END 

IF ~~ night1 
SAY @620
IF ~~ EXIT 
END 




// "Level 2" flirts

IF WEIGHT #-1 ~Global("X3NaliaStartFlirt","GLOBAL",1)OR(2)Global("PGNaliaRomanceActive","GLOBAL",2)Global("NaliaRomanceActive","GLOBAL",2)~ flirtlevel2
SAY @596

 IF ~~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate15
IF ~RandomNum(20,1)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate16
IF ~RandomNum(20,2)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate17
IF ~RandomNum(20,3)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate18
IF ~RandomNum(20,4)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate19
IF ~RandomNum(20,5) HPPercentLT("Nalia",50) ~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + injured2A
IF ~RandomNum(20,6)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate20
IF ~RandomNum(20,7)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate21
IF ~RandomNum(20,8)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate22
IF ~RandomNum(20,9) AreaType(DUNGEON)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + dungeon2
IF ~RandomNum(20,10)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate23
IF ~RandomNum(20,11)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate24
IF ~RandomNum(20,12)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate25
IF ~RandomNum(20,13)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate26
IF ~RandomNum(20,14)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate27
IF ~RandomNum(20,15) CheckStatGT(Player1,12,INT)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + highint2
IF ~RandomNum(20,16) HPPercentLT(Player1,75)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + injured1B
IF ~RandomNum(20,17) CheckStatGT(Player1,14,STR)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + highstr2
IF ~RandomNum(20,18) OR(2)TimeOfDay(DAY)TimeOfDay(MORNING)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + day2
IF ~RandomNum(20,19) OR(2)TimeOfDay(NIGHT)TimeOfDay(DUSK)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + night2
IF ~RandomNum(20,20)~ DO ~SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + initiate28

IF ~Global("NaliaRomanceActive","GLOBAL",2)GlobalGT("PGNaliaLove","GLOBAL",14) Global("X3NaliaPromise","LOCALS",0)~ DO ~SetGlobal("X3NaliaPromise","LOCALS",1) SetGlobal("X3NaliaStartFlirt","GLOBAL",0) RealSetGlobalTimer("X3NaliaFlirtTimer","GLOBAL",2700)~ + promise

END

IF ~~ initiate15
SAY @621
IF ~~ EXIT 
END 

IF ~~ initiate16
SAY @622
IF ~~ EXIT 
END 

IF ~~ initiate17
SAY @623
= @624
IF ~~ EXIT 
END 

IF ~~ initiate18
SAY @625
++ @626 + initiate18.1
++ @627 + initiate18.2
++ @628 + initiate18.2
END 

IF ~~ initiate18.1 
SAY @629
IF ~~ EXIT 
END 

IF ~~ initiate18.2
SAY @630 
IF ~~ EXIT 
END 

IF ~~ initiate19 
SAY @631
= @632
IF ~~ EXIT 
END 

IF ~~ injured2A
SAY @633 
= @634
IF ~~ EXIT 
END 

IF ~~ initiate20 
SAY @635
IF ~~ EXIT 
END 

IF ~~ initiate21 
SAY @636
= @637
IF ~~ EXIT 
END 

IF ~~ initiate22 
SAY @638
IF ~~ EXIT 
END 

IF ~~ dungeon2 
SAY @639
IF ~~ EXIT 
END 

IF ~~ initiate23 
SAY @640
= @641
IF ~~ EXIT 
END 

IF ~~ initiate24
SAY @642 
IF ~~ EXIT 
END 

IF ~~ initiate25
SAY @643
IF ~~ EXIT 
END 

IF ~~ initiate26
SAY @644
IF ~~ EXIT 
END 

IF ~~ initiate27
SAY @645
IF ~~ EXIT 
END 

IF ~~ initiate28
SAY @646
IF ~~ EXIT 
END 

IF ~~ highint2 
SAY @647
IF ~~ EXIT 
END 

IF ~~ highstr2 
SAY @648
= @649
IF ~~ EXIT 
END 

IF ~~ day2 
SAY @650
IF ~~ EXIT 
END 

IF ~~ night2 
SAY @651
= @652
IF ~~ EXIT 
END 

IF ~~ promise 
SAY @794
IF ~~ 
EXIT 
END 

//Not Talking to you.
IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])Global("X3NaliaSilence","GLOBAL",1)OR(2)Global("NaliaRomanceActive","GLOBAL",2)Global("PGNaliaRomanceActive","GLOBAL",2)~ THEN BEGIN Silence1.PID
SAY @593
IF ~~ EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])Global("X3NaliaSilence","GLOBAL",2)OR(2)Global("NaliaRomanceActive","GLOBAL",2)Global("PGNaliaRomanceActive","GLOBAL",2)~ THEN BEGIN Silence2.PID
SAY @594
IF ~~ EXIT 
END 
//PID 
IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) Global("NaliaRomanceActive","GLOBAL",2)~ THEN BEGIN Married.PID 
SAY @52
+~PartyHasItem("X3ERing")~+ @56 DO ~TakePartyItem("X3ERing")XEquipItem("X3ERing",Myself,SLOT_RING_RIGHT,EQUIP)~ + engagement_yes
//Nalia is 7. Isaac is 6. Vienxay is 5. Recorder is 4. Kale is 3. Helga is 2. Emily is 1. Comment out until SkitiaNPCs is updated.
//++ @673 DO ~SetGlobal("X3RestInvite","GLOBAL",7)~ + ForceRestTalk.Love
+ ~RandomNum(4,1)~ + @669  + kiss1
+ ~RandomNum(4,2)~ + @669  + kiss2
+ ~RandomNum(4,3)~ + @669  + kiss3
+ ~RandomNum(4,4)!NumInPartyGT(2)~ + @669  + kiss4
+ ~RandomNum(4,4)NumInPartyGT(2)~ + @669  + Group.Kiss
+ ~RandomNum(4,1)~ + @653  + hug5
+ ~RandomNum(4,2)~ + @653  + hug6
+ ~RandomNum(4,3)~ + @653  + hug7
+ ~RandomNum(4,4)~ + @653  + hug8
+ ~RandomNum(4,1)~ + @667  + rump1
+ ~RandomNum(4,2)~ + @667  + rump2
+ ~RandomNum(4,3)~ + @667  + rump3
+ ~RandomNum(4,4)~ + @667  + rump4
+ ~RandomNum(4,1)~ + @668  + want1
+ ~RandomNum(4,2)~ + @668  + want2
+ ~RandomNum(4,3)~ + @668  + want3
+ ~RandomNum(4,4)~ + @668  + want4
+ ~RandomNum(2,1)~ + @666  + batheinn1
+ ~RandomNum(2,2)~ + @666  + batheinn2
+ ~RandomNum(2,1)~ + @666  + bathestream1
+ ~RandomNum(2,2)~ + @666  + bathestream2
+ ~RandomNum(4,1)~ + @654  + joke2
+ ~RandomNum(4,2)~ + @654  + joke4
+ ~RandomNum(4,3)~ + @654  + joke5
+ ~RandomNum(4,4)~ + @654  + joke6
+ ~RandomNum(4,1)~ + @655  + hair1
+ ~RandomNum(4,2)~ + @655  + hair3
+ ~RandomNum(4,3)~ + @655  + hair5
+ ~RandomNum(4,4)~ + @655  + hair6
+ ~RandomNum(4,1)~ + @656  + hand5
+ ~RandomNum(4,2)~ + @656  + hand6
+ ~RandomNum(4,3)~ + @656  + hand7
+ ~RandomNum(4,4)~ + @656  + hand8
+ ~RandomNum(4,1)~ + @657  + watch1
+ ~RandomNum(4,2)~ + @657  + watch2
+ ~RandomNum(4,3)~ + @657  + watch3
+ ~RandomNum(4,4)~ + @657  + watch5
+ ~RandomNum(4,1)~ + @711  + love1
+ ~RandomNum(4,2)~ + @711  + love2
+ ~RandomNum(4,3)~ + @711  + love3
+ ~RandomNum(4,4)~ + @711  + love4
+ ~RandomNum(4,1)~ + @659  + cheek5
+ ~RandomNum(4,2)~ + @659  + cheek6
+ ~RandomNum(4,3)~ + @659  + cheek7
+ ~RandomNum(4,4)~ + @659  + cheek8
+ ~RandomNum(4,1)~ + @660  + beautiful5
+ ~RandomNum(4,2)~ + @660  + beautiful6
+ ~RandomNum(4,3)~ + @660  + beautiful7
+ ~RandomNum(4,4)~ + @660  + beautiful8
+ ~RandomNum(4,1)~ + @661  + brush1
+ ~RandomNum(4,2)~ + @661  + brush5
+ ~RandomNum(4,3)~ + @661  + brush6
+ ~RandomNum(4,4)~ + @661  + brush7
+ ~RandomNum(4,1)~ + @662  + smile1
+ ~RandomNum(4,2)~ + @662  + smile2
+ ~RandomNum(4,3)~ + @662  + smile3
+ ~RandomNum(4,4)~ + @662  + smile5
+ ~!HPPercentLT("Nalia",50)RandomNum(3,1)~ + @663  + how5
+ ~!HPPercentLT("Nalia",50)RandomNum(3,2)~ + @663  + how2
+ ~!HPPercentLT("Nalia",50)RandomNum(3,3)~ + @663  + how6
+ ~HPPercentLT("Nalia",50)~ + @663  + how4
+~RandomNum(3,1)~+ @664 + spouse4
+~RandomNum(3,2)~+ @664 + spouse5
+~RandomNum(3,3)~+ @664 + spouse6
+ ~Global("X3DisableFlirts","LOCALS",0)~ + @670 DO ~SetGlobal("X3DisableFlirts","LOCALS",1)~ + noflirt
+ ~Global("X3DisableFlirts","LOCALS",1)~ + @671 DO ~SetGlobal("X3DisableFlirts","LOCALS",0)~ + yesflirt
++ @55 EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !Global("NaliaRomanceActive","GLOBAL",2)Global("PGNaliaRomanceActive","GLOBAL",2)~ THEN BEGIN DeArnise.PID 
SAY @53
+~PartyHasItem("X3ERing")~+ @57 DO ~TakePartyItem("X3ERing")XEquipItem("X3ERing",Myself,SLOT_RING_RIGHT,EQUIP)~ + engagement_yes
//Nalia is 7. Isaac is 6. Vienxay is 5. Recorder is 4. Kale is 3. Helga is 2. Emily is 1. Comment out until SkitiaNPCs is updated.
//++ @673 DO ~SetGlobal("X3RestInvite","GLOBAL",7)~ + ForceRestTalk.Love
+ ~RandomNum(4,1)~ + @669  + kiss1
+ ~RandomNum(4,2)~ + @669  + kiss2
+ ~RandomNum(4,3)~ + @669  + kiss3
+ ~RandomNum(4,4)!NumInPartyGT(2)~ + @669  + kiss4
+ ~RandomNum(4,4)NumInPartyGT(2)~ + @669  + Group.Kiss
+ ~RandomNum(4,1)~ + @653  + hug5
+ ~RandomNum(4,2)~ + @653  + hug6
+ ~RandomNum(4,3)~ + @653  + hug7
+ ~RandomNum(4,4)~ + @653  + hug8
+ ~RandomNum(4,1)~ + @667  + rump1
+ ~RandomNum(4,2)~ + @667  + rump2
+ ~RandomNum(4,3)~ + @667  + rump3
+ ~RandomNum(4,4)~ + @667  + rump4
+ ~RandomNum(4,1)~ + @668  + want1
+ ~RandomNum(4,2)~ + @668  + want2
+ ~RandomNum(4,3)~ + @668  + want3
+ ~RandomNum(4,4)~ + @668  + want4
+ ~RandomNum(2,1)OR(2)AreaCheck("AR5003")AreaCheck("AR5501")~ + @666  + batheinn1
+ ~RandomNum(2,2)OR(2)AreaCheck("AR5003")AreaCheck("AR5501")~ + @666  + batheinn2
+ ~RandomNum(2,1)AreaCheck("AR6400")~ + @666  + bathestream1
+ ~RandomNum(2,2)AreaCheck("AR6400")~ + @666  + bathestream2
+ ~RandomNum(4,1)~ + @654  + joke2
+ ~RandomNum(4,2)~ + @654  + joke4
+ ~RandomNum(4,3)~ + @654  + joke5
+ ~RandomNum(4,4)~ + @654  + joke6
+ ~RandomNum(4,1)~ + @655  + hair1
+ ~RandomNum(4,2)~ + @655  + hair3
+ ~RandomNum(4,3)~ + @655  + hair5
+ ~RandomNum(4,4)~ + @655  + hair6
+ ~RandomNum(4,1)~ + @656  + hand5
+ ~RandomNum(4,2)~ + @656  + hand6
+ ~RandomNum(4,3)~ + @656  + hand7
+ ~RandomNum(4,4)~ + @656  + hand8
+ ~RandomNum(4,1)~ + @657  + watch1
+ ~RandomNum(4,2)~ + @657  + watch2
+ ~RandomNum(4,3)~ + @657  + watch3
+ ~RandomNum(4,4)~ + @657  + watch5
+ ~RandomNum(4,1)~ + @711  + love1
+ ~RandomNum(4,2)~ + @711  + love2
+ ~RandomNum(4,3)~ + @711  + love3
+ ~RandomNum(4,4)~ + @711  + love4
+ ~RandomNum(4,1)~ + @659  + cheek5
+ ~RandomNum(4,2)~ + @659  + cheek6
+ ~RandomNum(4,3)~ + @659  + cheek7
+ ~RandomNum(4,4)~ + @659  + cheek8
+ ~RandomNum(4,1)~ + @660  + beautiful5
+ ~RandomNum(4,2)~ + @660  + beautiful6
+ ~RandomNum(4,3)~ + @660  + beautiful7
+ ~RandomNum(4,4)~ + @660  + beautiful8
+ ~RandomNum(4,1)~ + @661  + brush1
+ ~RandomNum(4,2)~ + @661  + brush5
+ ~RandomNum(4,3)~ + @661  + brush6
+ ~RandomNum(4,4)~ + @661  + brush7
+ ~RandomNum(4,1)~ + @662  + smile1
+ ~RandomNum(4,2)~ + @662  + smile2
+ ~RandomNum(4,3)~ + @662  + smile3
+ ~RandomNum(4,4)~ + @662  + smile5
+ ~!HPPercentLT("Nalia",50)RandomNum(3,1)~ + @663  + how5
+ ~!HPPercentLT("Nalia",50)RandomNum(3,2)~ + @663  + how2
+ ~!HPPercentLT("Nalia",50)RandomNum(3,3)~ + @663  + how6
+ ~HPPercentLT("Nalia",50)~ + @663  + how4
+~PartyHasItem("X3RingN")RandomNum(3,1)~+ @665 + spouse1
+~PartyHasItem("X3RingN")RandomNum(3,2)~+ @665 + spouse2
+~PartyHasItem("X3RingN")RandomNum(3,3)~+ @665 + spouse3
+ ~Global("X3DisableFlirts","LOCALS",0)~ + @670 DO ~SetGlobal("X3DisableFlirts","LOCALS",1)~ + noflirt
+ ~Global("X3DisableFlirts","LOCALS",1)~ + @671 DO ~SetGlobal("X3DisableFlirts","LOCALS",0)~ + yesflirt
++ @55 EXIT 
END 


IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !Global("NaliaRomanceActive","GLOBAL",2)Global("PGNaliaRomanceActive","GLOBAL",1)~ THEN BEGIN InProgress.PID
SAY @54
//Nalia is 7. Isaac is 6. Vienxay is 5. Recorder is 4. Kale is 3. Helga is 2. Emily is 1. Comment out until SkitiaNPCs is updated.
//++ @673 DO ~SetGlobal("X3RestInvite","GLOBAL",7)~ + ForceRestTalk.Normal 
+ ~RandomNum(4,1)~ + @653  + hug1
+ ~RandomNum(4,2)~ + @653  + hug2
+ ~RandomNum(4,3)~ + @653  + hug3
+ ~RandomNum(4,4)~ + @653  + hug4
+ ~RandomNum(4,1)~ + @654  + joke1
+ ~RandomNum(4,2)~ + @654  + joke2
+ ~RandomNum(4,3)~ + @654  + joke3
+ ~RandomNum(4,4)~ + @654  + joke4
+ ~RandomNum(4,1)~ + @655  + hair1
+ ~RandomNum(4,2)~ + @655  + hair2
+ ~RandomNum(4,3)~ + @655  + hair3
+ ~RandomNum(4,4)~ + @655  + hair4
+ ~RandomNum(4,1)~ + @656  + hand1
+ ~RandomNum(4,2)~ + @656  + hand2
+ ~RandomNum(4,3)~ + @656  + hand3
+ ~RandomNum(4,4)~ + @656  + hand4
+ ~RandomNum(4,1)~ + @657  + watch1
+ ~RandomNum(4,2)~ + @657  + watch2
+ ~RandomNum(4,3)~ + @657  + watch3
+ ~RandomNum(4,4)~ + @657  + watch4
+ ~RandomNum(4,1)~ + @658  + enjoy1
+ ~RandomNum(4,2)~ + @658  + enjoy2
+ ~RandomNum(4,3)~ + @658  + enjoy3
+ ~RandomNum(4,4)~ + @658  + enjoy4
+ ~RandomNum(4,1)~ + @659  + cheek1
+ ~RandomNum(4,2)~ + @659  + cheek2
+ ~RandomNum(4,3)~ + @659  + cheek3
+ ~RandomNum(4,4)~ + @659  + cheek4
+ ~RandomNum(4,1)~ + @660  + beautiful1
+ ~RandomNum(4,2)~ + @660  + beautiful2
+ ~RandomNum(4,3)~ + @660  + beautiful3
+ ~RandomNum(4,4)~ + @660  + beautiful4
+ ~RandomNum(4,1)~ + @661  + brush1
+ ~RandomNum(4,2)~ + @661  + brush2
+ ~RandomNum(4,3)~ + @661  + brush3
+ ~RandomNum(4,4)~ + @661  + brush4
+ ~RandomNum(4,1)~ + @662  + smile1
+ ~RandomNum(4,2)~ + @662  + smile2
+ ~RandomNum(4,3)~ + @662  + smile3
+ ~RandomNum(4,4)~ + @662  + smile4
+ ~!HPPercentLT("Nalia",50)RandomNum(3,1)~ + @663  + how1
+ ~!HPPercentLT("Nalia",50)RandomNum(3,2)~ + @663  + how2
+ ~!HPPercentLT("Nalia",50)RandomNum(3,3)~ + @663  + how3
+ ~HPPercentLT("Nalia",50)~ + @663  + how4
+ ~Global("X3DisableFlirts","LOCALS",0)~ + @670 DO ~SetGlobal("X3DisableFlirts","LOCALS",1)~ + noflirt
+ ~Global("X3DisableFlirts","LOCALS",1)~ + @671 DO ~SetGlobal("X3DisableFlirts","LOCALS",0)~ + yesflirt
+~!AreaCheck("AR6200")~+ @672 + breakup
++ @55 EXIT 
END 

IF ~~ hug1 
SAY @676
IF ~~ EXIT 
END 

IF ~~ hug2
SAY @677
IF ~~ EXIT 
END 

IF ~~ hug3
SAY @678
IF ~~ EXIT 
END 

IF ~~ hug4 
SAY @679
IF ~~ EXIT 
END 

IF ~~ hug5
SAY @680
IF ~~ EXIT 
END 

IF ~~ hug6
SAY @681
= @682
IF ~~ EXIT 
END 

IF ~~ hug7
SAY @683
IF ~~ EXIT 
END 

IF ~~ hug8
SAY @684
IF ~~ EXIT 
END 

IF ~~ joke1 
SAY @685
IF ~~ EXIT 
END 

IF ~~ joke2 
SAY @686
IF ~~ EXIT 
END 

IF ~~ joke3 
SAY @687
IF ~~ EXIT 
END 

IF ~~ joke4
SAY @688
IF ~~ EXIT 
END 

IF ~~ joke5
SAY @689
IF ~~ EXIT 
END 

IF ~~ joke6
SAY @690
IF ~~ EXIT 
END 

IF ~~ hair1 
SAY @691
IF ~~ EXIT 
END 


IF ~~ hair2
SAY @692
IF ~~ EXIT 
END 


IF ~~ hair3
SAY @693
IF ~~ EXIT 
END 


IF ~~ hair4
SAY @694
IF ~~ EXIT 
END 

IF ~~ hair5
SAY @695
IF ~~ EXIT 
END 

IF ~~ hair6
SAY @696
IF ~~ EXIT 
END 

IF ~~ hand1 
SAY @697
IF ~~ EXIT 
END 

IF ~~ hand2
SAY @698
IF ~~ EXIT 
END 

IF ~~ hand3
SAY @699
IF ~~ EXIT 
END 

IF ~~ hand4
SAY @700
= @701
IF ~~ EXIT 
END 

IF ~~ hand5
SAY @702
IF ~~ EXIT 
END 

IF ~~ hand6
SAY @703
IF ~~ EXIT 
END 

IF ~~ hand7
SAY @704
IF ~~ EXIT 
END 

IF ~~ hand8 
SAY @705
IF ~~ EXIT 
END 

IF ~~ watch1 
SAY @706
IF ~~ EXIT
END 

IF ~~ watch2
SAY @707
IF ~~ EXIT
END 

IF ~~ watch3
SAY @708
IF ~~ EXIT
END 

IF ~~ watch4
SAY @709
IF ~~ EXIT
END 

IF ~~ watch5
SAY @710
IF ~~ EXIT
END 

IF ~~ love1 
SAY @712
IF ~~ EXIT 
END 

IF ~~ love2
SAY @713
IF ~~ EXIT 
END 

IF ~~ love3 
SAY @714
IF ~~ EXIT 
END 

IF ~~ love4 
SAY @715
IF ~~ EXIT 
END 

IF ~~ enjoy1
SAY @716
IF ~~ EXIT 
END 

IF ~~ enjoy2
SAY @717
IF ~~ EXIT 
END 

IF ~~ enjoy3
SAY @718
IF ~~ EXIT 
END 

IF ~~ enjoy4
SAY @719
IF ~~ EXIT 
END 

IF ~~ cheek1 
SAY @720
IF ~~ EXIT 
END 

IF ~~ cheek2 
SAY @721
IF ~~ EXIT 
END 

IF ~~ cheek3 
SAY @722
IF ~~ EXIT 
END 

IF ~~ cheek4 
SAY @723
= @724
IF ~~ EXIT 
END 

IF ~~ cheek5 
SAY @725
IF ~~ EXIT 
END 

IF ~~ cheek6
SAY @726
IF ~~ EXIT 
END 

IF ~~ cheek7
SAY @727
IF ~~ EXIT 
END 

IF ~~ cheek8
SAY @728
IF ~~ EXIT 
END 

IF ~~ beautiful1 
SAY @729
IF ~~ EXIT 
END 

IF ~~ beautiful2 
SAY @730
IF ~~ EXIT 
END 

IF ~~ beautiful3 
SAY @731
IF ~~ EXIT 
END 

IF ~~ beautiful4 
SAY @732
IF ~~ EXIT 
END 

IF ~~ beautiful5 
SAY @733
IF ~~ EXIT 
END 

IF ~~ beautiful6
SAY @734
IF ~~ EXIT 
END 

IF ~~ beautiful7
SAY @735
IF ~~ EXIT 
END 

IF ~~ beautiful8
SAY @736
IF ~~ EXIT 
END 

IF ~~ brush1
SAY @737
IF ~~ EXIT 
END 

IF ~~ brush2
SAY @738
IF ~~ EXIT 
END 

IF ~~ brush3
SAY @739
IF ~~ EXIT 
END 

IF ~~ brush4
SAY @740
IF ~~ EXIT 
END 

IF ~~ brush5
SAY @741
IF ~~ EXIT 
END 

IF ~~ brush6
SAY @742
IF ~~ EXIT 
END 

IF ~~ brush7
SAY @743
IF ~~ EXIT 
END 

IF ~~ smile1 
SAY @744
IF ~~ EXIT 
END 

IF ~~ smile2 
SAY @745
IF ~~ EXIT 
END 

IF ~~ smile3 
SAY @746
IF ~~ EXIT 
END 

IF ~~ smile4
SAY @747
IF ~~ EXIT 
END 

IF ~~ smile5
SAY @748
IF ~~ EXIT 
END 

IF ~~ how1
SAY @749
IF ~~ EXIT 
END 

IF ~~ how2
SAY @750
IF ~~ EXIT 
END 

IF ~~ how3
SAY @751
IF ~~ EXIT 
END 

IF ~~ how4
SAY @752
IF ~~ EXIT 
END 

IF ~~ how5
SAY @753
IF ~~ EXIT 
END 

IF ~~ how6
SAY @754
IF ~~ EXIT 
END 

IF ~~ spouse1 
SAY @755
IF ~~ EXIT 
END 

IF ~~ spouse2
SAY @756
IF ~~ EXIT 
END 

IF ~~ spouse3 
SAY @757
IF ~~ EXIT 
END 

IF ~~ spouse4 
SAY @758
IF ~~ EXIT 
END 

IF ~~ spouse5 
SAY @759
IF ~~ EXIT 
END 

IF ~~ spouse6 
SAY @760
IF ~~ EXIT 
END 

IF ~~ kiss1 
SAY @761
IF ~~ EXIT 
END 

IF ~~ kiss2
 SAY @762
 IF ~~ EXIT 
 END 
 
 IF ~~ kiss3 
 SAY @763
 = @764
 IF ~~ EXIT 
 END 
 
 IF ~~ kiss4 
 SAY @765
 IF ~~ EXIT 
 END 
 
 IF ~~ want1 
 SAY @766
 IF ~~ EXIT 
 END 
 
 IF ~~ want2 
 SAY @767
 IF ~~ EXIT 
 END 
 
  IF ~~ want3 
 SAY @768
 IF ~~ EXIT 
 END 
 
  IF ~~ want4
 SAY @769
 IF ~~ EXIT 
 END 
 
 IF ~~ noflirt 
 SAY @770
 IF ~~ EXIT 
 END 
 
 IF ~~ yesflirt 
 SAY @771
 IF ~~ EXIT 
 END 
 
 IF ~~ breakup 
 SAY @772
 ++ @773 + breakupconfirm 
 ++ @774 + changemind 
 END 
 
 IF ~~ breakupconfirm 
 SAY @775
 IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)SetGlobal("NaliaRomanceActive","GLOBAL",3)~ EXIT 
 END 
 
 IF ~~ changemind 
 SAY @776
 IF ~~ EXIT 
 END 
 
 IF ~~ rump1 
 SAY @777
 IF ~~ EXIT 
 END 
 
 IF ~~ rump2 
 SAY @778
 IF ~~ EXIT 
 END 
 
 IF ~~ rump3 
 SAY @779
 = @780
 IF ~~ EXIT 
 END 
 
 IF ~~ rump4 
 SAY @781
 = @782
 IF ~~ EXIT 
 END 
 
 IF ~~ batheinn1 
 SAY @783
 IF ~~ EXIT 
 END 
 
 IF ~~ bathestream1 
 SAY @784
 IF ~~ EXIT 
 END 
 
 IF ~~ bathestream2 
 SAY @785
 = @786
 = @787
 = @788
 = @789
 IF ~~ EXIT 
 END 
 
 IF ~~ batheinn2 
 SAY @785
 = @790
 = @791
 = @792
 = @793
IF ~~ EXIT 
END 
 
 /*
IF ~~ ForceRestTalk.Normal 
SAY @674
IF ~~ EXIT 
END 

IF ~~ ForceRestTalk.Love 
SAY @675
IF ~~ EXIT 
END 
*/
 
END 


