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

 	 	  CALLSR_4_PrintPleaseEnterCards

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
###STARTROUTINE_4_PrintPleaseEnterCards###
   	  LABEL_4
    	 	    
	
  P    		 		  
	
  l   		    	
	
  a    				  	
	
  y   		  	 	
	
  e    			  	 
	
  r     	     
	
  _ 
 dup   	PUSH_1
	   ADD	
 	print#     	     
	
  _    	 	    
	
  P    		 		  
	
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
 
 DUP   	 	 PUSH_10
	  MULTIPLY

   		 LABEL_6
 
 DUP	
		READ#   	PUSH_1
	   ADD 
 DUP   	 	PUSH_5
	 		MOD
	  			JUMPIF0_7

 
 		 JUMP_6

   			LABEL_7
 

DISCARD
	###ENDROUTINE###
###STARTROUTINE_9_CalculateHands###
   	  	Label_9
    Push_0

   	 	 Label_10

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
