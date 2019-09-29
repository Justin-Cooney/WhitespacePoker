###Whitespace Poker

Whitespace poker is program written in whitespace that will read a round of poker hands and determine which player is the winner.

#### The Heap
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

#### Labels
The program uses labels throughout to create sub-routines and handle flow control. See below for a list of labels and their uses:
0     : SR - Print "Enter number of players:"
1     : SR - Get#OfPlayers
2     : SR - EnterPlayerInfo
3     : SR - EnterPlayerInfo - EnterPlayerCards
4     : SR - Print "Player i please enter a value for card #i"
5     : SR - EnterCards
6     : SR - EnterCards - EnterCard
7     : End SR - Enter Cards
8     : End SR - Enter Player Info
9     : SR - CalculateHands
10    : SR - CalculateHands - Calculate Player Hand Loop
11    : End Calculate Hands
12    : SR - CheckFlush
13    : SR - GetSuitFromCard
14    : SR - CheckFlush - CheckLoop
15    : SR - CheckFlush - Success
16    : SR - CheckThreeOfAKind
17    : SR - ThreeOfAKind - Outer Loop
18    : SR - ThreeOfAKind - Inner Loop
19    : SR - Print "Player i please enter a suit for card #i"
20    : SR - CharacterToCardValue
21-25 : SR - CharacterToCardValue labels
26    : SR - CharacterToSuit
27-29 : SR - CharacterToSuit labels
30    : SR - EnterCards - 0 flush
31    : SR - EnterCards labels
32    : SR - GetValueFromCard
33-35 : SR - Check3OfAKind labels
36-42 : SR - Check2OfAKind labels
43-46 : SR - CalculateWinner
47-52 : SR - OutputWinner
53    : SR - PrintInstructions
