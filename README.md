# Whitespace Poker

Whitespace poker is program written in whitespace that will read a round of poker hands and determine which player is the winner.

### Instructions
To run the program upload or copy and paste WhiteSpace.ws to the whitelips IDE (https://vii5ard.github.io/whitespace/)

Click the Run button in the corner to execute the program and follow the instructions show in the console.

NOTE: Currently only up to 10 players are supported and inputs must be entered correctly. When entering cards, enter each card with a value and suit using UPPER case letters seperating each card with a space (2C AH 10D QS 5C). Additional whitespace may break the program so be careful when entering your cards.

### Limitations

Whitespace poker is still a work in progress and some features have not been implemented yet. Some limitations that still need to addressed are:

* Only Flushes, Three of a Kind, Pairs, and high card hands are evaluated by the program.
* No logic exists yet for handling ties, so the program can't tell who the winner is when two players have the same value of hand (flush vs flush or high card vs high card for example). This is a WIP that will be addressed soon.

## Implementation
The whitespace poker program was written entirely by hand in whitespace. While the program was development an accompanying psuedocode document was maintained to help provide a better visual of the program's logic. The program makes use of a stack for performing calculations, a heap for storing values, and subroutines for segregating logic.

Cards are stored throughout the program as values ranging from 0 - 52. Each interval of 13 represents one suit. For example:
0-12  Clubs
13-25 Hearts
26-38 Spades
39-51 Diamonds

Within each interval the first number represents a 2 

This method allows us to obtain the number of a card by modulo dividing its value by 13 and allows us to obtain the suit of card by integer dividing its value by 13. For example:

0 % 13 = 0 (2)
0 / 13 = 0 (Heart)

35 % 13 = 9 (Jack)
35 / 13 = 2 (Spade)

The program will accept user input and translate it into this format, storing each card as a seperate entry in the heap. Sub- routines are then used to evulate the value of each players hand and output the winner.

### The Heap
Whitespace poker uses a heap to track important values such as the number of players, the current cards each player has etc. See below for a list of uses for each entry in the heap:

Heap Index | Value
------------ | -------------
0 | Player 1 - Card 1
1 | Player 1 - Card 2
2 | Player 1 - Card 3
3 | Player 1 - Card 4
4 | Player 1 - Card 5
... | ...
10 | Player 2 - Card 1
... | ...
100 | # Of Players
101 | Sub-Routine temporary storage
102 | Sub-Routine temporary storage
... | ...
200 | Player 1 - Hand Value
... | ...
209 | Player 10 - Hand Value
... | ...
300 | Winning Hand
301 | Winning Player #

### Labels
The program uses labels throughout to create sub-routines and handle flow control. See below for a list of labels and their uses:

Label Index | Usage
------------ | -------------
0     | SR - Print "Enter number of players:"
1     | SR - Get#OfPlayers
2     | SR - EnterPlayerInfo
3     | SR - EnterPlayerInfo - EnterPlayerCards
4     | SR - Print "Player i please enter a value for card #i"
5     | SR - EnterCards
6     | SR - EnterCards - EnterCard
7     | End SR - Enter Cards
8     | End SR - Enter Player Info
9     | SR - CalculateHands
10    | SR - CalculateHands - Calculate Player Hand Loop
11    | End SR - Calculate Hands
12    | SR - CheckFlush
13    | SR - GetSuitFromCard
14    | SR - CheckFlush - CheckLoop
15    | SR - CheckFlush - Success
16    | SR - CheckThreeOfAKind
17    | SR - ThreeOfAKind - Outer Loop
18    | SR - ThreeOfAKind - Inner Loop
19    | SR - Print "Player i please enter a suit for card #i"
20    | SR - CharacterToCardValue
21-25 | SR - CharacterToCardValue labels
26    | SR - CharacterToSuit
27-29 | SR - CharacterToSuit labels
30    | SR - EnterCards - 0 flush
31    | SR - EnterCards labels
32    | SR - GetValueFromCard
33-35 | SR - Check3OfAKind labels
36-42 | SR - Check2OfAKind labels
43-46 | SR - CalculateWinner
47-52 | SR - OutputWinner
53    | SR - PrintInstructions

### Whitespace Assembly Pseudocode
```
	CALL SR 1 - Enter # of Players
	CALL SR 53 - Print Instructions
	CALL SR 2 - Get Player Info
	CALL SR 9 - Calculate Hands
	CALL SR 43 - Calculate Winner
	CALL SR 47 - Output Winner
ENDPROGRAM

SR 0 Print "Enter number of players"
ENDSR

SR 1 Get#OfPlaayers
	PUSH 100
	READ # into @100
ENDSR

SR 2 EnterPlayerInfo
	PUSH 0
	LABEL 3 EnterPlayerCards
		CALL SR 5 (EnterCards)
		PUSH 1
		ADD
		DUP
		PUSH 100
		RETRIEVE @100
		SUB
		JUMPIF0 8
		JUMP 3
	LABEL 8
	DROP
ENDSR



SR 4 Print "Player i, please enter your cards:"
	PRINT "Player "
	DUP
	PUSH 10
	DIV
	PUSH 1
	ADD
	PRINT #
	PRINT ", please enter your cards:"
ENDSR

SR 5 EnterCards
	DUP
	DUP
	PUSH 10
	MULTIPLY (10 * currentplayer)
	CALL SR 4 (Print prompt)
	LABEL 6
		DUP (heapindex)
		
		//Read value
		PUSH 101
		READC
		
		//Flush 0 from 10
		PUSH 101
		RETRIEVE
		PUSH 1 (00110001)
		SUB
		JUMPIF0 30
		JUMP 31
		LABEL 30
		PUSH 102
		READC	
		LABEL 31
		
		//Read suit
		PUSH 102
		READC
		
		 
		PUSH 101
		RETRIEVE
		CALL SR 20
		PUSH 102
		RETRIEVE
		CALL SR 26
		PUSH 13
		MULTIPLY
		ADD
		STORE
		
		PUSH101
		READC (flush space)
		
		PRINT /n
		
		PUSH 1
		ADD (heapindex + 1)
		DUP
		PUSH 5
		MOD
		JUMPIF0 7
		JUMP 6
	LABEL 7
	DROP
	DROP
ENDSR

SR 20 Character to card value
	DUP
	PUSH 01000001 (A)
	SUB
	JUMPIF0 21
	
	DUP
	PUSH 01001011 (K)
	SUB
	JUMPIF0 22
	
	DUP
	PUSH 01010001 (Q)
	SUB
	JUMPIF0 23
	
	DUP
	PUSH 01001010 (J)
	SUB
	JUMPIF0 24
	
	DUP
	PUSH 00110001 (10)
	SUB
	JUMPIF0 25
	
	PUSH 50
	SUB
	ENDSR
	
	LABEL 21
		DROP
		PUSH 12
		ENDSR
	
	LABEL 22
		DROP
		PUSH 11
		ENDSR
		
	LABEL 23
		DROP
		PUSH 10
		ENDSR
	
	LABEL 24
		DROP
		PUSH 9
		ENDSR
		
	LABEL 25
		DROP
		PUSH 8
		ENDSR

SR 26 Character to suit
	DUP
	PUSH 01000011 (C)
	SUB
	JUMPIF0 27
	
	DUP
	PUSH 01001000 (H)
	SUB
	JUMPIF0 28
	
	DUP
	PUSH 01010011 (S)
	SUB
	JUMPIF0 29
	
	DROP
	PUSH 3 (D)
	ENDSR
	
	LABEL 27
		DROP
		PUSH 0
		ENDSR
	
	LABEL 28
		DROP
		PUSH 1
		ENDSR
		
	LABEL 29
		DROP
		PUSH 2
		ENDSR
ENDSR

SR 9 Calculate Hands
	PUSH 0
	LABEL 10
		DUP
		PUSH 200
		ADD
		PUSH 0
		STORE
		CALL SR 36 (Check2OfAKind)
		CALL SR 16 (Check3OfAKind)
		CALL SR 12 (CheckFlush)	
		PUSH 1
		ADD
		DUP
		PUSH 100
		RETRIEVE @100
		SUB
		JUMPIF0 11
		JUMP 10
	LABEL 11
	DISCARD
ENDSR

SR 12 Check Flush
	DUP (currentplayer)
	PUSH 10
	MULTIPLY (10 * currentplayer)
	DUP
	RETRIEVE
	CALL SR 13 (GetSuit)
	PUSH 101 (srheap 1)
	SWAP
	STORE (store suit in srheap1)
	LABEL 14
		DROP
		PUSH 1
		ADD (card0index + 1)
		
		//Are all cards checked?
		DUP
		PUSH 5
		MOD
		JUMPIF0 15

		//Check Card suite
		DUP
		RETRIEVE
		CALL SR 13 (GetSuit)
		PUSH 101 (srheap 1)
		RETRIEVE
		SUB
		
		JUMPIF0 14
		DROP
		DROP
		ENDSR
	LABEL 15
		DROP
		DUP (currentplayer)
		PUSH 200
		ADD
		PUSH 4 (flushvalue)
		STORE (flushvalue in currentplayerhandvalue)
ENDSR

SR 13 GetSuit
	DUP (cardindex)
	PUSH 13
	DIV
ENDSR

SR 16 Check3OfAKind
	DUP (currentplayer)
	PUSH 10
	MULTIPLY (10 * currentplayer)
	LABEL 17
		DUP
		RETRIEVE
		CALL SR 32 (getvalue)
		PUSH 101
		SWAP
		STORE (put current value in heap)
		PUSH 102
		PUSH 1
		STORE
		DUP
		
		LABEL 18
			PUSH 1
			ADD (nextindex)
			
			//Are all cards checked?
			DUP
			PUSH 5
			MOD
			JUMPIF0 19
			
			DUP
			RETRIEVE
			CALL SR 32 (getvalue)
			PUSH 101
			RETRIEVE
			SUB
			JUMPIF0 33
			JUMP 18
			LABEL 33
				PUSH 102
				RETRIEVE
				PUSH 1
				ADD
				DUP
				PUSH 3
				SUB
				JUMPIF0 34
				PUSH 102
				SWAP
				STORE
				JUMP 18
			LABEL 34
				DROP
				DROP
				DROP
				DUP (currentplayer)
				PUSH 200
				ADD
				PUSH 3 (3ofakindvalue)
				STORE (flushvalue in currentplayerhandvalue)
				ENDSR
		LABEL 19
			DROP
			PUSH 1
			ADD
			DUP
			PUSH 3
			MOD
			JUMPIF0 35
			JUMP 17
			LABEL 35
			DROP
			ENDSR
ENDSR

SR 32 GetValueFromCard
	DUP
	PUSH 13
	MOD
ENDSR

SR 36 Check2OfAKind
	DUP (currentplayer)
	PUSH 10
	MULTIPLY (10 * currentplayer)
	LABEL 41
		DUP
		RETRIEVE
		CALL SR 32 (getvalue)
		PUSH 101
		SWAP
		STORE (put current value in heap)
		PUSH 102
		PUSH 1
		STORE
		DUP
		
		LABEL 37
			PUSH 1
			ADD (nextindex)
			
			//Are all cards checked?
			DUP
			PUSH 5
			MOD
			JUMPIF0 38
			
			DUP
			RETRIEVE
			CALL SR 32 (getvalue)
			PUSH 101
			RETRIEVE
			SUB
			JUMPIF0 39
			JUMP 37
			LABEL 39
				PUSH 102
				RETRIEVE
				PUSH 1
				ADD
				DUP
				PUSH 2
				SUB
				JUMPIF0 40
				PUSH 102
				SWAP
				STORE
				JUMP 37
			LABEL 40
				DROP
				DROP
				DROP
				DUP (currentplayer)
				PUSH 200
				ADD
				PUSH 1 (2ofakindvalue)
				STORE (flushvalue in currentplayerhandvalue)
				ENDSR
		LABEL 38
			DROP
			PUSH 1
			ADD
			DUP
			PUSH 4
			MOD
			JUMPIF0 42
			JUMP 41
			LABEL 42
			DROP
			ENDSR
ENDSR

SR 43 CalculateWinner
	PUSH 300
	PUSH -1
	STORE
	
	PUSH 200
	LABEL 44
		//Check if all scores have been processed
		DUP
		PUSH 200
		SUB
		PUSH 100
		RETRIEVE
		SUB
		JUMPIF0 45
	
		//Check current score
		DUP
		RETRIEVE
		PUSH 300
		RETRIEVE
		SUB
		JUMPIF- 46
		JUMPIF0 54
		JUMP 55
		
		LABEL 54
			DUP
			PUSH 10
			ADD
			RETRIEVE
			PUSH 302
			RETRIEVE
			SUB
			JUMPIF- 46
			JUMPIF0 56
			JUMP 55
			
			LABEL 56
				PUSH 12
				LABEL 57
					
		
		LABEL 55
			//UpdateWinner
			DUP
			RETRIEVE
			PUSH 300
			SWAP
			STORE
			
			DUP
			PUSH 200
			SUB
			PUSH 301
			SWAP
			STORE
		
			//Store Pair Value
			DUP
			PUSH 10
			ADD
			RETRIEVE
			CALL 32 - GetValue
			PUSH 302
			SWAP
			STORE
			
		//Go on to next player
		LABEL 46
			PUSH 1
			ADD
			JUMP 44
		
	LABEL 45
	DROP
ENDSR

SR 47 Output Winner
	PRINT "Player "
	PUSH 301
	RETRIEVE
	PUSH 1
	ADD
	PRINT#
	" wins with a "
	PUSH 300
	RETRIEVE
	
	DUP
	PUSH 4
	SUB
	JUMPIF0 48
	
	DUP
	PUSH 3
	SUB
	JUMPIF0 49
	
	DUP
	PUSH 1
	SUB
	JUMPIF0 50
	
	JUMP 51
	
	LABEL 48
		PRINT "flush!"
		JUMP 52
	LABEL 49
		PRINT "three of a kind!"
		JUMP 52
	LABEL 50
		PRINT "pair!"
		JUMP 52
	LABEL 51
		PRINT "high card!"
		JUMP 52	
	LABEL 52
		DROP
		PRINT /n
		ENDSR
ENDSR

SR 53 Print "Enter cards seperated by spaces. Each should have a value (2-10, J, Q, K, A) and a suite (C, H, S, D). Example: (2C AH 10D QS 5C)"
ENDSR
```
