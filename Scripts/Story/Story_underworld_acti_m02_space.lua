LupQ		¶	hçõ}A   =(none)                             require    JGS_FunctionLib    PGSpawnUnits    PGStoryMode    Definitions    State_Underworld_A01M02_Begin    Initialize_Mission_Variables    Initialize_Cinematic_Variables    Spawn_Black_Boxes    Reveal_Black_Box    Primary_Dialog_Off    Prox_Empire_Arrival    Empire_AI_Control    Prox_Pirate_Arrival    Pirate_AI_Control    Prox_Spotted_Blackbox    Prox_Change_Bandit_Course    Timer_Move_Bandit    Empire_Fleet_Arrival    Prox_Missile_Defense    Prox_Obtain_Blackbox    Rebel_Scouts_Engaged    Rebel_Encounter_Done    CINE_Start_Mission    Story_Handle_Esc    IntroCineCleanup    EndMissionVictory    EndMissionDefeat    Tyber_Zann_Destroyed        .                           StoryModeEvents    Underworld_M02_Begin    State_Underworld_A01M02_Begin    bandit       ð?    attack1    rebel_assault_01    Rebel_X-Wing_Squadron    CORELLIAN_CORVETTE    pirate_scavengers_01    Pirate_Fighter_Squadron    imperial_scouts_01    TIE_Bomber_Squadron    TIE_Scout_Squadron    imperial_scouts_02    Tartan_Patrol_Cruiser    imperial_fleet_01    Victory_Destroyer    Generic_Star_Destroyer     3   J     I}    
   Ç   Å   É? 
       É? 
     A ß   Ç  
 Á Á Á Á Á     
  A A     _    
      ß   Ç  
     Á ß   G        e                    *      OnEnter    GlobalValue    Set    Allow_AI_Controlled_Fog_Reveal            Initialize_Mission_Variables    Initialize_Cinematic_Variables    current_cine_id    Create_Thread    CINE_Start_Mission 	   OnUpdate    VictoryStarted    DefeatStarted    DefeatCondition_TyberDead    EndMissionDefeat    VictoryCondition_CapturedBoxes    EndMissionVictory    bandit_active 
   TestValid    bandit       ð?	   Get_Hull ©?   Remove_Radar_Blip    bandit_radar    Set_Cannot_Be_Killed    black_box_final    Create_Generic_Object    UM01_DEATH_STAR_BLACK_BOX    Get_Position    rebel_player    black_box_flag    STORY_TRIGGER_ZONE    Register_Prox    Prox_Obtain_Blackbox      Àb@   underworld_player    Reveal_Black_Box    Take_Damage      Ã@   Story_Event    PIRATE_DROPPED_POD     f     U   T E  ¿ Á   YE Y  Y  A  Ç Ô  U    Å X T  X  E       Y Å    Ç   Y E  Ô  Å C  T Å Ã ÆÃ  Ä  Ô
 Å  Y   G Å Ã ÆÄ   Y Å  Å ÃÆÅ    Å  Å ÃÆÅ   Ç E Å  Á 	 YE	 Y Å Ã È Á	 Y 
 A
 Y                            \      VictoryStarted    DefeatStarted    DefeatCondition_TyberDead    VictoryCondition_CapturedBoxes    empire_has_arrived    bandit_active    primary_dialog_on    rebel_dialog    rebel_player    Find_Player    Rebel    neutral_player    Neutral    empire_player    Empire    underworld_player    Underworld    pirate_player    Pirates 
   TestValid    Enable_As_Actor    boxes_remaining       @   box_spotting_remaining    rebel_spawn_location            rebel_spawn_count       $@   bandit_move    spawn_marker    spawn_marker2 	   radar_01 
   Find_Hint    STORY_TRIGGER_ZONE    radar01 	   radar_02    radar02 	   radar_03    radar03 	   radar_04    radar04 	   radar_05    radar05 	   radar_06    radar06    marker_rebel_first_encounter    rebelfirst    tyber_zann    Find_First_Object    TYBER_ZANN_PASSENGER    tyber_zann_craft    Get_Parent_Object    Register_Death_Event    Tyber_Zann_Destroyed    Spawn_Black_Boxes    missile_01     REBEL_DEFENSE_SATELLITE_MISSILE 
   missile01    missile_02 
   missile02    missile_03 
   missile03    missile_04 
   missile04    Register_Prox    Prox_Missile_Defense      À@   marker_pirate_arrival    piratearrival    marker_empire_retreat    empireretreat    marker_rebel_spawn_empire    rebelspawne    marker_rebel_spawn_pirate    rebelspawnp    marker_executor_left    executorleft    marker_executor_right    executorright    rebel_backup_marker_1    rebelbackup1    rebel_backup_marker_2    rebelbackup2    Prox_Pirate_Arrival    Prox_Empire_Arrival    disabled_imperial_vessel_01    ACCLAMATOR_ASSAULT_SHIP    Prevent_AI_Usage    Prevent_Opportunity_Fire    Suspend_Locomotor    Prevent_All_Fire    Change_Owner     ö            G            Ç           G          Ç  E       E     Ç  E     G  E     Ç  E     G  Å  E        E  C  Y  Å  E        E  C  Y    G    Ç  A    Á            G         A   Ç    A 	  Ç    A 	  G	    A 
  Ç	    A 
  G
    A   Ç
    A   G    A   Ç  Å  Å      Ô Å  FK        Å E Y   Y     A  Ç     Á       A       Á      Å E  Å Y    E  Å Y    E  Å Y    E  Å Y   A   Ç    A   G    A   Ç    A   G    A   Ç    A   G    A   Ç    A   G    Å Å  Å Y   E   Å Y      G  Å  E      Ô E  FT   Y  E  T   Y  E  ÆT   Y  E  U   Y  E  FU   Y        Ü                        
   camtarget 
   Find_Hint    ATTACKER ENTRY POSITION    reconstart    STORY_TRIGGER_ZONE 	   reconend    introattack1    CINE_Intro_Active        E           E    Á   Ç   E    A  G  E           Ç        ç                           GameRandom       ð?       @   black_box_01    Create_Generic_Object    UM01_DEATH_STAR_BLACK_BOX 	   radar_04    rebel_player    black_box_04 	   radar_05    black_box_02 	   radar_03    black_box_02_location 	   radar_06    black_box_03 	   radar_01    black_box_03_location 	   radar_02    Hide    Set_Cannot_Be_Killed    Make_Invulnerable    Register_Prox    Prox_Obtain_Blackbox      Àb@   underworld_player    Prox_Spotted_Blackbox       @          A       A     A  Å  Ç   A E Å   Õ>    A Å Å   Å  T ?  Ô  A E Å   E  Õ¾    A Å Å   Å  Ô  A E Å   E  Å  C Y  C Y  C Y  C Y Å  FC Y  FC Y  FC Y  FC Y Å  C Y  C Y  C Y  C Y E   Á  YE E  Á  YE   Á  YE   Á  YE  E   YE E E   YE  E   YE  E   Y                             
   TestValid    tyber_zann    Find_Nearest    UM01_DEATH_STAR_BLACK_BOX    Add_Radar_Blip 
   box_radar 
   Highlight    fog_id 	   FogOfWar    Reveal    underworld_player      @o@          E       Ô    E  Á               A Y@  Y  ÆÀ     Á Á Ç                                  Sleep       @   primary_dialog_on           A  Y              %  	                       Cancel_Event_Object_In_Range    Prox_Empire_Arrival    empire_has_arrived    imperial_scouts 
   SpawnList    imperial_scouts_01    Get_Position    empire_player    imperial_scouts_02    neutral_player    pairs 
   TestValid    Move_To    Find_Nearest    underworld_player    Attack_Move    disabled_imperial_vessel_01    Change_Owner    primary_dialog_on    Story_Event    IMPERIAL_ENCOUNTER    Create_Thread    Primary_Dialog_Off    Empire_AI_Control     S   > E  Y   X Ô  E @  Å     Ç    @  E        YÅ    Ô  A@  Y  ]  ý E       Å    T  Å  YÞÅ  	    FÂ 	Y ]  Tý Å    Ô   ÆBÅ Y   Å  Y E  Y E Á Y       F  
      	                  VictoryStarted    DefeatStarted    Sleep       $@   empire_has_arrived    Find_All_Objects_Of_Type    empire_player    pairs 
   TestValid    Prevent_AI_Usage    Tartan_Patrol_Cruiser    Change_Owner    underworld_player    Select_Object       .@   Create_Thread    Rebel_Scouts_Engaged    marker_rebel_spawn_empire    Get_Position     Q      X    E   X   T    Á  Y    X    E     Å    YÞ      Æ@  Y ]  Tý E   Å   YÞ     FÁ Y  ÆA Y ]  Tü    Y  X Ô Å  E C Y   E     Å    YÞ      Æ@  Y ]  Tý       j       
                  Cancel_Event_Object_In_Range    Prox_Pirate_Arrival    empire_has_arrived    pirate_scavengers 
   SpawnList    pirate_scavengers_01    Get_Position    pirate_player    Find_Nearest    underworld_player 
   TestValid    pairs    Attack_Move    primary_dialog_on    Story_Event    PIRATE_ENCOUNTER    Create_Thread    Primary_Dialog_Off    Pirate_AI_Control     3   > E  Y   X Ô
  E @  Å     Ç      E       T Å Å  YÞ      A  Y ]  Tý  G  Á Y  A Y   Y                                 VictoryStarted    DefeatStarted    Sleep       $@   Find_All_Objects_Of_Type    pirate_player    pairs    Prevent_AI_Usage    empire_has_arrived    Create_Thread    Rebel_Scouts_Engaged    marker_rebel_spawn_pirate    Get_Position           X    E   X   Ô    Á  Y    E       Y F@  Y ]  þ  X T E  Å Á Y                           ,      Cancel_Event_Object_In_Range    Prox_Spotted_Blackbox    fog_id 	   FogOfWar    Reveal    underworld_player      @o@   Remove_Radar_Blip 
   box_radar    Add_Radar_Blip    box_spotting_remaining       @   primary_dialog_on    Story_Event    CHATTER_07    Create_Thread    Primary_Dialog_Off       @   CHATTER_08        @   CHATTER_09       ð?   bandit_active    Prox_Obtain_Blackbox    bandit    Spawn_Unit    Find_Object_Type    UM01_MERCHANT_FREIGHTER    Get_Position    pirate_player 
   Highlight    bandit_radar    Prevent_AI_Usage    Teleport_And_Face    Cinematic_Hyperspace_In    Make_Invulnerable    Set_Cannot_Be_Killed    bandit_move    introattack1    Register_Prox    Prox_Change_Bandit_Course       I@   FINAL_ENCOUNTER    Empire_Fleet_Arrival        > E  Y Å  ?E        Å  Y E     Y UA    E  Y Å  Y   ÕB Ô  X    E  Y Å  Y T  UC Ô  X Ô   E  Y Å  Y   ÕC Ô   > Å Y Å  Y E  Á  E  E    ÆCF Y E  ÆÃÁ Y ÆCF Y  ÆCÆF   Y  ÆCGA Y  ÆCFG Y  ÆCG Y 	 E G	 Å	 	 
 A
 E YE 
 Y Å Á
 Y  ÍC       ¼                         Cancel_Event_Object_In_Range    Prox_Change_Bandit_Course    bandit_move    spawn_marker    Get_Position        > E  Y Å  ?         Á                       
   TestValid    bandit       ð?   Move_To    bandit_move    Register_Timer    Timer_Move_Bandit       @          E  ¿       E   ?  F?   Y  E   Á Y       È                    >      VictoryStarted    DefeatStarted    Register_Timer    Timer_Move_Bandit       ð?
   TestValid    disabled_imperial_vessel_01    Change_Owner    empire_player    tyber_zann_craft    Make_Invulnerable    Set_Cannot_Be_Killed    empire_has_arrived    Sleep    nearest_black_box    Find_Nearest    bandit    UM01_DEATH_STAR_BLACK_BOX    Take_Damage      Ã@      @   Suspend_AI    Lock_Controls    Cancel_Fast_Forward    Fade_Screen_Out    tyber_zann    Get_Distance    marker_executor_left    marker_executor_right    spawn_marker    spawn_marker2    imperial_fleet_list 
   SpawnList    imperial_fleet_01    Get_Position    rebel_assault_01_list    rebel_assault_01    rebel_backup_marker_1    rebel_player    rebel_backup_02_list    rebel_backup_marker_2 	   FogOfWar    Reveal_All    underworld_player    Start_Cinematic_Camera    Set_Cinematic_Camera_Key              @@     @À      @   Set_Cinematic_Target_Key    Fade_Screen_In        @    Transition_Cinematic_Camera_Key       @     @@     @À      @   Transition_To_Tactical_Camera       @   End_Cinematic_Camera    Letter_Box_Out     É      X   1 E   X   T0    Å   Y E        Ô    F@   Y  E  A   Y  E  FA   Y      E   Y  Å   ¿ A    E        Ô   FA    Y    A    Y    C  Á Y  E   Y  E   Y     Y  Å  Y     Y  E   Y  E  E  Å   E Å   V    Å G   Ô   G Å   E E G     Ç  	 E	 G 	    Ç  	 
 G 	    Ç	 E
 IÅ
 Y  Y E E Ç   A    	 
Y E Ç       	 
YÅ  Y E E Ç    A   	 
 Y E  Y  Á Y E Á Y  Y E  Y   Y E  Y E A  Y E FA  Y  ?A  Y                                missile_01    Cancel_Event_Object_In_Range    Prox_Missile_Defense    missile_02    missile_03    missile_04    primary_dialog_on    Story_Event    REBEL_SATELLITES_SPOTTED    Create_Thread    Primary_Dialog_Off          Æ>  Y Å  Æ>  Y  Æ>  Y E Æ>  Y  X Ô   Å  Y E  Y                                 tyber_zann_craft    Cancel_Event_Object_In_Range    Prox_Obtain_Blackbox    boxes_remaining       ð?   nearest_black_box    Find_Nearest    UM01_DEATH_STAR_BLACK_BOX 
   TestValid    Set_Cannot_Be_Killed    Make_Invulnerable    Take_Damage      Ã@   fog_id    Undo_Reveal    Remove_Radar_Blip 
   box_radar       @   Story_Event    UM02_HINT_POD_01        @   UM02_HINT_POD_02    UM02_HINT_POD_03    UM02_HINT_POD_04    VictoryCondition_CapturedBoxes     C        Æ>   Y Å  ?Ç      Á G  E   Ô E Æ@  Y E A  Y E FA Y E BY Å  Y Å  ÕB Ô   Á Y T Å  C Ô   A Y  Å  ? Ô    Y Ô Å  ?   Á Y         :                         rebel_backup 
   SpawnList    rebel_assault_01    rebel_player    pairs    Cinematic_Hyperspace_In       ð?   rebel_dialog    primary_dialog_on    Story_Event    REBEL_ENCOUNTER_01    Create_Thread    Primary_Dialog_Off    Rebel_Encounter_Done     "   E       Å          Y Æ? Y ]  þ Å X   Ç   E  Y Å  Y Å A Y       K                          Sleep       .@   primary_dialog_on    Story_Event    REBEL_ENCOUNTER_DONE    Create_Thread    Primary_Dialog_Off           A  Y     X   Ô      Å    Y  E   Y        W        
            G      CINE_Intro_Active    Cancel_Fast_Forward    Suspend_AI       ð?   Lock_Controls    Start_Cinematic_Camera    recon    Create_Generic_Object    SKIPRAY_BLASTBOAT    reconstart    Get_Position    underworld_player 
   TestValid    Move_To 	   reconend    Set_Cinematic_Camera_Key              V@      D@   Set_Cinematic_Target_Key     Transition_Cinematic_Camera_Key       *@    Transition_Cinematic_Target_Key       @   Letter_Box_In    Fade_Screen_In        @   Sleep       @   Story_Event    CHATTER_00       @   tyber_zann_craft       i@     àe@     àeÀ   CHATTER_01        @     0q@      .@   CHATTER_03       @   attack1    CORELLIAN_CORVETTE    introattack1    neutral_player    Teleport_And_Face      Àr@      .À      b@      4@      9@      9À     àu@     @_@      $@     A@   CHATTER_04    CHATTER_05       @
   camtarget      Àb@     ÀbÀ     a@   CHATTER_06       ø?   Change_Owner    rebel_player    Fade_Screen_Out    Create_Thread    IntroCineCleanup     ÿ        E   Y     Á  Y    Á  Y  E  Y  Å   E A Å             Ô    ÆA   Y  Å    A    Á   Y Å          Y    A      Á   	Y     Á        	Y     Y  E   Y  Å   Y  E   Y  Å  Á Y  Å   Á   A Á     Y Å   Á         Y E  	 Y  Å  A	 Y  Å   Á  	 Á	 A Á     Y Å   Á         Y E  
 Y  Å  A
 Y  Å  Á
  A E   
  
  J   Y  Å  
 Á  A Á  
 Á   Y Å  
     
   Y   
 Á A Á	  Á  
 Á   	Y    
 Á Á    
   	Y  E  A Y  Å   Y  E   Y  Å  Á Y  Å     Á     Y Å  
     
   Y E   Y  Å  A Y  
  O  Å Y  Å  A Y    Á  Y  Å  Á  Y  E   Y                                  CINE_Intro_Active    Thread    Kill    current_cine_id    Create_Thread    IntroCineCleanup                     E   ?  Å  Y    A Y                            )      current_cine_id    Story_Event    UM02_INTROCINE_DONE    black_box_01    Hide    black_box_02    black_box_03    Reveal_Black_Box 
   TestValid    recon    Despawn    attack1    Create_Generic_Object    CORELLIAN_CORVETTE    introattack1    Get_Position    rebel_player    Teleport_And_Face    Attack_Move 
   camtarget    Prevent_AI_Usage 
   unit_list 
   SpawnList    rebel_assault_01    marker_rebel_first_encounter    pairs    Change_Owner    Stop_All_Music    Stop_All_Speech    Remove_All_Text    Allow_Localized_SFX    End_Cinematic_Camera    Letter_Box_Out            Lock_Controls    Suspend_AI    Fade_Screen_In       ð?   Sleep    CINE_Intro_Active    UM02_HINT_BLACKBOX              E     Y  Å   ?    Y  E  ?    Y    ?    Y    ?    Y  Å  Y    E        E  A  Y    Å   X      A  FB    Ç  Å  ÆB   Y    Å      T Å  C  Å FÂ  Y   Å  C    Y    Å       G  E  E Y ^      ÃÅ FÂ Y  ]   Ôü   Å      Ô  Å  E   Y  Å  Y    Y  E  Y     Y  Å  Y    A Y    A Y  Å  A Y  	  A	 Y  	  A	 Y     Ç	  E   
 Y        Õ                          Cancel_Fast_Forward    primary_dialog_on    Story_Event    UM02_ENDCINE_BEGIN    Sleep        @   Suspend_AI       ð?   Lock_Controls    Start_Cinematic_Camera    Letter_Box_In    CHATTER_10       @   GlobalValue    Set    Allow_AI_Controlled_Fog_Reveal    UM02_ENDMISSION_VICTORY     '      Y    G      Á  Y    A Y    Á Y    Á Y  E  Y    Á Y    Á Y     Á Y     Y  E  B  Á Á Y     Y        ö                    	      Cancel_Fast_Forward    GlobalValue    Set    Allow_AI_Controlled_Fog_Reveal       ð?   Suspend_AI    Lock_Controls    Story_Event    UM02_ENDMISSION_DEFEAT           Y  E   ?  Á   Y E   Y     Y  Å   Y                                  DefeatCondition_TyberDead               <      A  Y       Y     Á  Y  "     b   G  ¢     â   Ç  "    b  G  ¢    â  Ç  "    b  G  ¢    â  Ç  "    b  G  ¢    â  Ç  "    b  G  ¢    â  Ç  "    b  G  ¢    â  Ç  "      