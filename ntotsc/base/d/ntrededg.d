BEGIN ~NTREDEDG~

IF WEIGHT #1 ~Global("NarlenMove","GLOBAL",9)
NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @6
//  IF ~~ THEN REPLY @1 JOURNAL @10058 GOTO 1
  IF ~~ THEN REPLY @2 JOURNAL @10058 GOTO 2
  IF ~~ THEN REPLY @3 JOURNAL @10058 GOTO 3
  IF ~~ THEN REPLY @4 JOURNAL @10058 GOTO 4
  IF ~~ THEN REPLY @5 JOURNAL @10058 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @8
  IF ~~ THEN REPLY @1 GOTO 1
//  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN REPLY @1 JOURNAL @10058 GOTO 1
  IF ~~ THEN REPLY @2 JOURNAL @10058 GOTO 2
//  IF ~~ THEN REPLY @3 JOURNAL @10058 GOTO 3
  IF ~~ THEN REPLY @4 JOURNAL @10058 GOTO 4
  IF ~~ THEN REPLY @5 JOURNAL @10058 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @10
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @14
  IF ~~ THEN DO ~SetGlobal("RededgeMove","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @15
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
//  IF ~~ THEN REPLY @5 GOTO 5
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 8
  SAY @16
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~True()
~ THEN BEGIN 9
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @18
  IF ~~ THEN EXIT
END
