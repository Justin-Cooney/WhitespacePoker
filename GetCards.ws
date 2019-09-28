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
	
  t    		 	   
	
  h   		  	 	
	
  e     	     
	
  _    			 		 
	
  v   		    	
	
  a    		 		  
	
  l    			 	 	
	
  u   		  	 	
	
  e     	     
	
  _    		 				
	
  o    		  		 
	
  f     	     
	
  _    		   		
	
  c   		    	
	
  a    			  	 
	
  r    		  	  
	
  d     	     
	
  _     	   		
	
  # 
 DUP   	 	 PUSH_10
	 		MOD   	PUSH_1
	   ADD	
 	PRINTI     	     
	
  _     	 	   
	
  (     		  	 
	
  2     	 		 	
	
  -     		   	
	
  1     		    
	
  0     	 		  
	
  ,    	  	 	 
	
  J     	 		  
	
  ,    	 	   	
	
  Q     	 		  
	
  ,    	  	 		
	
  K     	 		  
	
  ,    	     	
	
  A     	 	  	
	
  )     			 	 
	
  :       	 	 
	
  /n
	###ENDROUTINE###
###STARTROUTINE_19_PrintPleaseEnterCardSuit###
   	  		LABEL_19
    	 	    
	
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
	
  t    		 	   
	
  h   		  	 	
	
  e     	     
	
  _   			  		
	
  s    			 	 	
	
  u    		 	  	
	
  i    			 	  
	
  t     	     
	
  _    		 				
	
  o    		  		 
	
  f     	     
	
  _    		   		
	
  c   		    	
	
  a    			  	 
	
  r    		  	  
	
  d     	     
	
  _     	   		
	
  # 
 DUP   	 	 PUSH_10
	 		MOD   	PUSH_1
	   ADD	
 	PRINTI     	     
	
  _     	 	   
	
  (    	    		
	
  C     	 		  
	
  ,    	  	   
	
  H     	 		  
	
  ,    	 	  		
	
  S     	 		  
	
  ,    	   	  
	
  D     	 	  	
	
  )     			 	 
	
  :       	 	 
	
  /n
	###ENDROUTINE###
###STARTROUTINE_5_EnterCards###
   	 	LABEL_5
 
 DUP   	 	 PUSH_10
	  MULTIPLY

   		 LABEL_6
 
 DUP
 	 	  CALLSR_4
   		  	 	PUSH_101
	
	 READC
 	 	  		CALLSR_19
   		  		 PUSH_102
	
	 READC   		  	 	PUSH_101
			RETRIEVE
 	 	 	  CALLSR_20
   		  		 PUSH_102
			RETRIEVE
 	 		 	 CALLSR_26
   		 	PUSH_13
	  
MUL	   ADD		 STORE   	PUSH_1
	   ADD 
 DUP   	 	PUSH_5
	 		MOD
	  			JUMPIF0_7

 
 		 JUMP_6

   			LABEL_7
 

DISCARD
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
	SWAP 

DROP
	
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
