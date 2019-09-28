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
	
	 READC   	PUSH_1
	   ADD 
 DUP   	 	PUSH_5
	 		MOD
	  			JUMPIF0_7

 
 		 JUMP_6

   			LABEL_7
 

DISCARD
	###ENDROUTINE###
