###BEGINPROGRAM###
 	 	CALLSR_1_READ#OFPLAYERS

 	 	 CALLSR_2_EnterPlayerInfo

 	 	  	CALLSR_9_CalculateHands



###ENDPROGRAM######STARTROUTINE_0_PrintEnterNumberOfPlayers###
    Label_0
    	   	 	
	
  E    		 			 
	
  n    			 	  
	
  t   		  	 	
	
  e    			  	 
	
  r     	     
	
  _    		 			 
	
  n    			 	 	
	
  u    		 		 	
	
  m    		   	 
	
  b   		  	 	
	
  e    			  	 
	
  r     	     
	
  _    		 				
	
  o    		  		 
	
  f     	     
	
  _    			    
	
  p    		 		  
	
  l   		    	
	
  a    				  	
	
  y   		  	 	
	
  e    			  	 
	
  r   			  		
	
  s     			 	 
	
  :       	 	 
	
  /n
	###ENDROUTINE###
###STARTROUTINE_1_Get#OfPlayers###
   	Label_1

 	  CallSR_0_PrintEnter#OfPlayers
   		  	  Push100
	
		Read#
	###ENDROUTINE###
###STARTROUTINE_2_EnterPlayerInfo###
   	 LABEL_2
    PUSH_0

   		LABEL_3

 	 	 	CALLSSR_5_EnterCards
   	PUSH_1
	   ADD 
 DUP   		  	  PUSH_100
			RETRIEVE@100	  	SUB
	  	   JUMPIF0_8

 
 		JUMP_3

   	   LABEL_8
 

DROP
	###ENDROUTINE###
###STARTROUTINE_4_PrintPleaseEnterCardValue###
   	  LABEL_4
    	 	    
	
  P    		 		  
	
  l   		    	
	
  a    				  	
	
  y   		  	 	
	
  e    			  	 
	
  r     	     
	
  _ 
 DUP   	 	 PUSH_10
	 	 DIV   	PUSH_1
	   ADD	
 	print#     	     
	
  _    			    
	
  p    		 		  
	
  l   		  	 	
	
  e   		    	
	
  a   			  		
	
  s   		  	 	
	
  e     	     
	
  _   		  	 	
	
  e    		 			 
	
  n    			 	  
	
  t   		  	 	
	
  e    			  	 
	
  r     	     
	
  _    				  	
	
  y    		 				
	
  o    			 	 	
	
  u    			  	 
	
  r     	     
	
  _    		   		
	
  c   		    	
	
  a    			  	 
	
  r    		  	  
	
  d   			  		
	
  s     			 	 
	
  :       	 	 
	
  /n
	###ENDROUTINE###
###STARTROUTINE_5_EnterCards###
   	 	LABEL_5
 
 DUP 
 DUP   	 	 PUSH_10
	  
MULTIPLY
 	 	  CALLSR_4

   		 LABEL_6
 
 DUP   		  	 	PUSH_101
	
	 READC   		  	 	PUSH_101
			RETRIEVE     		   	PUSH_1
	  	SUB
	`  	`	`		 JUMPIF0_30

 
 					JUMP_30

   				 LABEL_30
   	`	  		 PUSH_102
	
	 READC
   					LABEL_31
   		  		 PUSH_102
	
	 READC   		  	 	PUSH_101
			RETRIEVE
 	 	 	  CALLSR_20
   		  		 PUSH_102
			RETRIEVE
 	 		 	 CALLSR_26
   		 	PUSH_13
	  
MUL	   ADD		 STORE   		  	 	PUSH_101
	
	 READC   	PUSH_1
	   ADD 
 DUP   	 	PUSH_5
	 		MOD
	  			JUMPIF0_7

 
 		 JUMP_6

   			LABEL_7
 

DROP 

DROP
	###ENDROUTINE###
###CharacterToCardValue###
   	 	  LABEL_20
 
 DUP     	     	PUSH_A
	  	SUB
	  	 	 	JUMPIFO_21
 
 DUP    	  	 		PUSH_K
	  	SUB
	  	 		 JUMPIFO_22
 
 DUP    	 	   	PUSH_Q
	  	SUB
	  	 			JUMPIFO_23
 
 DUP    	  	 	 PUSH_J
	  	SUB
	  		   JUMPIFO_24
 
 DUP     		   	PUSH_10
	  	SUB
	  		  	JUMPIFO_25
   		  	 PUSH_50
	  	SUB
	
ENDSR
   	 	 	LABEL_21
 

DROP   		  PUSH_12

	
ENDSR
   	 		 LABEL_22
 

DROP   	 		PUSH_11

	
ENDSR
   	 			LABEL_23
 

DROP   	 	 PUSH_10

	
ENDSR
   		   LABEL_24
 

DROP   	  	PUSH_9

	
ENDSR
   		  	LABEL_25
 

DROP   	   PUSH_8

	###END_SUBROUTINE###
###STARTROUTINE_26_ConvertCharacterToSuit###
   		 	 LABEL_26
 
 DUP    	    		PUSH_C
	  	SUB
	  		 		JUMPIF0_27
 
 DUP    	  	   PUSH_H
	  	SUB
	  			  JUMPIF0_28
 
 DUP    	 	  		PUSH_S
	  	SUB
	  			 	JUMPIF0_29
 

DROP   		PUSH_3

	
ENDSR
   		 		LABEL_27
 

DROP    PUSH_0

	
ENDSR
   			  LABEL_28
 

DROP   	PUSH_1

	
ENDSR
   			 	LABEL_29
 

DROP   	 PUSH_2

	##END_ROUTINE###
###STARTROUTINE_9_CalculateHands###
   	  	Label_9
    Push_0

   	 	 Label_10

 	 	  	  CALLSR_36

 	 	    CALLSR_16

 	 		  CALLSR_12
   	PUSH_1
	   ADD 
 DUP   		  	  PUSH_100
			RETRIEVE_@100	  	SUB
	  	 		JUMPIF0_11

 
 	 	 JUMP_10

   	 		LABEL_11
 

DROP
	###ENDROUTINE###
###STARTROUTINE_13_GetSuit###
   		 	LABEL_13
 
 DUP   		 	PUSH_13
	 	 DIV
	###ENDROUTINE###
###STARTROUTINE_12_CheckFlush###
   		  LABEL_12
 
 DUP   	 	 PUSH_10
	  
MUL 
 DUP			RETRIEVE
 	 		 	CALLSR_13_GetSuit
   		  	 	PUSH_101
 
	SWAP		 STORE
   			 label_14
 

DROP   	PUSH_1
	   ADD 
 DUP   	 	PUSH_5
	 		MOD
	  				JUMPIF0_15
 
 DUP			RETRIEVE
 	 		 	CALLSR_13
   		  	 	PUSH_101
			RETRIEVE	  	SUB
	  			 JUMPIF0_14
 

DROP 

DROP
	
ENDSR
   				LABEL_15
 

DROP 
 DUP   		  	   PUSH_200
	   ADD   	  PUSH_4
		 STORE
	###ENDROUTINE###
###STARTROUTINE_16_Check3OfAKind###
   	    LABEL_16
 
 DUP   	 	 PUSH_10
	  
MUL
   	   	LABEL_17
 
 DUP			RETRIEVE
 	 	     CALLSR_32
   		  	 	PUSH_101
 
	SWAP		 STORE   		  		 PUSH_102
   	PUSH_1
		 STORE 
 DUO
   	  	 LABEL_18
   	PUSH_1
	   ADD 
 DUP   	 	PUSH_5
	 		MOD
	  	  		JUMPIF0_19
 
 DUP			RETRIEVE
 	 	     CALLSR_32
   		  	 	PUSH_101
			RETRIEVE	  	SUB
	  	    	JUMPIF0_33

 
 	  	 JUMP_18

   	    	LABEL_33
   		  		 PUSH_102
			RETRIEVE   	PUSH_1
	   ADD 
 DUP   		PUSH_3
	  	SUB
	  	   	 JUMPIF0_34
   		  		 PUSH_102
 
	SWAP		 STORE
 
 	  	 JUMP_18

   	   	 LABEL_34
 

DROP 

DROP 

DROP 
 DUP   		  	   PUSH_200
	   ADD   		PUSH_3
		 STORE
	
ENDSR
   	  		LABEL_19
 

DROP   	PUSH_1
	   ADD 
 DUP   		PUSH_3
	 		MOD
	  	   		JUMPIF0_35

 
 	   	JUMP_17

   	   		LABEL_35
 


	###END_SUBROUTINE###
###STARTROUTINE_32_GetValueFromCard###
   	     label_32
   		 	PUSH_13
	 		MOD
	###END_SUBROUTINE###
###STARTROUTINE_36_Check2OfAKind###
   	  	  LABEL_36
 
 DUP   	 	 PUSH_10
	  
MUL
   	 	  	LABEL_41
 
 DUP			RETRIEVE
 	 	     CALLSR_32
   		  	 	PUSH_101
 
	SWAP		 STORE   		  		 PUSH_102
   	PUSH_1
		 STORE 
 DUP
   	  	 	LABEL_37
   	PUSH_1
	   ADD 
 DUP   	 	PUSH_5
	 		MOD
	  	  		 JUMPIF0_38
 
 DUP			RETRIEVE
 	 	     CALLSR_32
   		  	 	PUSH_101
			RETRIEVE	  	SUB
	  	  			JUMPIF0_39

 
 	  	 	JUMP_37

   	  			LABEL_39
   		  		 PUSH_102
			RETRIEVE   	PUSH_1
	   ADD 
 DUP   	 PUSH_2
	  	SUB
	  	 	   JUMPIF0_40
   		  		 PUSH_102
 
	SWAP		 STORE
 
 	  	 	JUMP_37

   	 	   LABEL_40
 

DROP 

DROP 

DROP 
 DUP   		  	   PUSH_200
	   ADD   	 PUSH_2
		 STORE
	
ENDSR
   	  		 LABEL_38
 

DROP   	PUSH_1
	   ADD 
 DUP   	  PUSH_4
	 		MOD
	  	 	 	 JUMPIF0_42

 
 	 	  	JUMP_41

   	 	 	 LABEL_42
 


	###END_SUBROUTINE###
