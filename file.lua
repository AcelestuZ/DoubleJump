                                                                                 local v0={};v0[       
                                                                        "obf_stringchar%0"]=string.char;v0[             
                                                                    "obf_stringbyte%0"]=string.byte;v0["obf_stringsub%0"]=string. 
                                                                sub;v0["obf_bitlib%0"]=bit32 or bit ;v0["obf_XOR%0"]=v0["obf_bitlib%0"] 
                                                            .bxor;v0["obf_tableconcat%0"]=table.concat;v0["obf_tableinsert%0"]=table.     
                                                          insert;local function v13(v49,v50) v0["result%0"]={};for v65=1, #v49 do v0[       
                                                        "obf_tableinsert%0"](v0["result%0"],v0["obf_stringchar%0"](v0["obf_XOR%0"](v0[        
                                                      "obf_stringbyte%0"](v0["obf_stringsub%0"](v49,v65,v65 + 1 )),v0["obf_stringbyte%0"](v0[   
                                                    "obf_stringsub%0"](v50,1 + (v65% #v50) ,1 + (v65% #v50) + 1 )))%256 ));end return v0[         
                                                  "obf_tableconcat%0"](v0["result%0"]);end if getgenv().DJLoaded then return;end getgenv().DJLoaded 
                                                  =true;v0["UIS%0"]=game:GetService(v13(                                                              
                                                "\228\208\222\55\207\181\215\11\197\240\222\55\240\178\196\27","\126\177\163\187\69\134\219\167"));v0[  
                                                "Players%0"]=game:GetService(v13("\19\193\43\220\249\49\222","\156\67\173\74\165"));v0["player%0"]=v0[    
                                              "Players%0"].LocalPlayer;v0["jumps%0"]=0;v0["MAX_AIR_JUMPS%0"]=1;v0["lastJump%0"]=0;v0["DJEnabled%0"]=false;  
                                              v0["JUMP_COOLDOWN%0"]=0.15;v0["humanoid%0"]=nil;v0["creditGui%0"]=Instance.new(v13(                           
                                            "\7\180\91\19\185\40\97\33\190","\38\84\215\41\118\220\70"));v0["creditGui%0"].IgnoreGuiInset=true;v0[            
                                            "creditGui%0"].DisplayOrder=999999;v0["creditGui%0"].ResetOnSpawn=false;v0["creditGui%0"].Parent=v0["player%0"]:    
                                          WaitForChild(v13("\96\26\35\11\251\66\49\55\27","\158\48\118\66\114"));v0["creditLabel%0"]=Instance.new(v13(            
                                          "\159\33\8\34\95\164\249\174\40","\155\203\68\112\86\19\197"));v0["creditLabel%0"].Size=UDim2.new(0,260,0,35);v0[         
                                          "creditLabel%0"].Position=UDim2.new(0.5, -130,0.45, -20);v0["creditLabel%0"].BackgroundTransparency=0.35;v0["creditLabel%0" 
                                          ].BackgroundColor3=Color3.fromRGB(20,20,20);v0["creditLabel%0"].Text=v13(                                                   
                                        "\101\207\51\248\73\108\246\184\82\210\118\221\67\125\233\253\85\201\35\198","\152\38\189\86\156\32\24\133");v0["creditLabel%0" 
                                        ].TextColor3=Color3.fromRGB(200,200,200);v0["creditLabel%0"].Font=    --[[==============================]]Enum.Font.Gotham;v0[    
                                        "creditLabel%0"].TextSize=18;v0["creditLabel%0"].Parent=v0[ --[[============================================]]"creditGui%0"];v0[  
                                        "corner%0"]=Instance.new(v13(                           --[[======================================================]]                
                                      "\201\126\132\73\238\89\162\84","\38\156\55\199"));v0 --[[==========================================================]]["corner%0"].     
                                      CornerRadius=UDim.new(0,10);v0["corner%0"].Parent=  --[[==============================================================]]v0[             
                                      "creditLabel%0"];task.delay(2,function() for v66=1, --[[================================================================]]20 do v0[       
                                      "creditLabel%0"].TextTransparency=v66 * 0.05 ;v0[   --[[==================================================================]]              
                                      "creditLabel%0"].BackgroundTransparency=0.35 + (v66 --[[==================================================================]] * 0.03) ;task.   
                                    wait(0.03);end v0["creditGui%0"]:Destroy();end);v0[   --[[====================================================================]]"screenGui%0" 
                    ]=Instance.new(v13("\155\126\110\45\22\122\221\86\161",               --[[====================================================================]]                
              "\35\200\29\28\72\115\20\154"));v0["screenGui%0"].DisplayOrder=999999;v0[   --[[======================================================================]]"screenGui%0" 
            ].ResetOnSpawn=false;v0["screenGui%0"].Parent=v0["player%0"].PlayerGui;v0[    --[[======================================================================]]"screenGui%0" 
          ].Enabled=false;v0["button%0"]=Instance.new(v13(                                --[[======================================================================]]              
        "\45\186\201\203\175\57\32\13\176\223","\84\121\223\177\191\237\76"));v0[         --[[======================================================================]]"button%0"].  
        Size=UDim2.new(0,160,0,50);v0["button%0"].Position=UDim2.new(0.5, -80,0.7,0);v0[  --[[======================================================================]]"button%0"].  
      BackgroundColor3=Color3.fromRGB(40,40,40);v0["button%0"].TextColor3=Color3.fromRGB( --[[======================================================================]]255,255,255); 
      v0["button%0"].Text=v13("\159\89\220\162\54\85\112\235\174\91\217\250\122\127\22\231" --[[==================================================================]],               
      "\161\219\54\169\192\90\48\80");v0["button%0"].Font=Enum.Font.GothamBold;v0[          --[[================================================================]]"button%0"].      
    TextScaled=true;v0["button%0"].Parent=v0["screenGui%0"];v0["dragging%0"]=false;v0[      --[[==============================================================]]"dragInput%0"]=   
    nil;v0["dragStart%0"]=nil;v0["startPos%0"]=nil;v0["button%0"].InputBegan:Connect(function --[[==========================================================]](v52) if ((v52.     
    UserInputType==Enum.UserInputType.MouseButton1) or (v52.UserInputType==Enum.UserInputType.  --[[====================================================]]Touch)) then v0[        
    "dragging%0"]=true;v0["dragStart%0"]=v52.Position;v0["startPos%0"]=v0["button%0"].Position;v0 --[[==============================================]]["dragInput%0"]=v52;end   
    end);v0["button%0"].InputEnded:Connect(function(v53) if (v53==v0["dragInput%0"]) then v0[         --[[====================================]]"dragging%0"]=false;v0[       
    "dragInput%0"]=nil;end end);v0["UIS%0"].InputChanged:Connect(function(v54) if (v0["dragging%0"] and ( --[[========================]]v54==v0["dragInput%0"])) then v0[     
    "delta%0"]=v54.Position-v0["dragStart%0"] ;v0["button%0"].Position=UDim2.new(v0["startPos%0"].X.Scale,v0["startPos%0"].X.Offset + v0["delta%0"].X ,v0["startPos%0"].Y.  
  Scale,v0["startPos%0"].Y.Offset + v0["delta%0"].Y );end end);v0["button%0"].MouseButton1Click:Connect(function() v0["DJEnabled%0"]= not v0["DJEnabled%0"];v0["button%0" 
  ].Text=(v0["DJEnabled%0"] and v13("\109\77\21\39\69\71\64\15\92\79\16\127\9\109\46","\69\41\34\96")) or v13(                                                          
  "\152\204\194\8\14\46\252\233\194\7\18\113\252\236\241\44","\75\220\163\183\106\98") ;end);v0["helpGui%0"]=Instance.new(v13("\49\185\153\50\220\12\157\158\62",         
  "\185\98\218\235\87"));v0["helpGui%0"].DisplayOrder=999999;v0["helpGui%0"].ResetOnSpawn=false;v0["helpGui%0"].Parent=v0["player%0"].PlayerGui;v0["helpGui%0"].Enabled=  
  false;v0["helpFrame%0"]=Instance.new(v13("\237\46\38\235\219","\202\171\92\71\134\190"));v0["helpFrame%0"].Size=UDim2.new(0,380,0,300);v0["helpFrame%0"].Position=UDim2 
  .new(0.5, -190,0.45, -150);v0["helpFrame%0"].BackgroundColor3=Color3.fromRGB(25,25,25);v0["helpFrame%0"].BorderSizePixel=0;v0["helpFrame%0"].Parent=v0["helpGui%0"];v0[ 
  "corner2%0"]=Instance.new(v13("\28\232\15\135\59\207\41\154","\232\73\161\76"));v0["corner2%0"].CornerRadius=UDim.new(0,12);v0["corner2%0"].Parent=v0["helpFrame%0"];v0 
  ["titleBg%0"]=Instance.new(v13("\157\203\67\80\27","\126\219\185\34\61"));v0["titleBg%0"].Size=UDim2.new(1,0,0,40);v0["titleBg%0"].BackgroundColor3=Color3.fromRGB(30,  
  30,30);v0["titleBg%0"].BorderSizePixel=0;v0["titleBg%0"].Parent=v0["helpFrame%0"];v0["title%0"]=Instance.new(v13("\56\203\70\102\82\118\241\226\0",                     
  "\135\108\174\62\18\30\23\147"));v0["title%0"].Size=UDim2.new(1, -50,0,40);v0["title%0"].Position=UDim2.new(0,10,0,0);v0["title%0"].BackgroundTransparency=1;v0[        
  "title%0"].Text=v13("\146\230\63\201\20\171\115\237\163\228\58\139\59\161\62\202\183\231\46\216","\167\214\137\74\171\120\206\83");v0["title%0"].TextColor3=Color3.     
  fromRGB(255,255,255);v0["title%0"].Font=Enum.Font.GothamBold;v0["title%0"].TextScaled=true;v0["title%0"].Parent=v0["helpFrame%0"];v0["closeBtn%0"]=Instance.new(v13(      
  "\191\245\42\73\218\178\159\228\61\83","\199\235\144\82\61\152"));v0["closeBtn%0"].Size=UDim2.new(0,40,0,40);v0["closeBtn%0"].Position=UDim2.new(1, -45,0,0);v0[          
  "closeBtn%0"].BackgroundColor3=Color3.fromRGB(50,50,50);v0["closeBtn%0"].TextColor3=Color3.fromRGB(255,255,255);v0["closeBtn%0"].Text="X";v0["closeBtn%0"].Font=Enum.Font 
  .GothamBold;v0["closeBtn%0"].TextScaled=true;v0["closeBtn%0"].Parent=v0["helpFrame%0"];v0["closeCorner%0"]=Instance.new(v13("\50\63\154\36\21\24\188\57",                 
  "\75\103\118\217"));v0["closeCorner%0"].CornerRadius=UDim.new(0,8);v0["closeCorner%0"].Parent=v0["closeBtn%0"];v0["helpText%0"]=Instance.new(v13(                         
  "\243\81\104\0\149\31\197\81\124","\126\167\52\16\116\217"));v0["helpText%0"].Size=UDim2.new(1, -20,1, -80);v0["helpText%0"].Position=UDim2.new(0,10,0,50);v0[            
  "helpText%0"].BackgroundTransparency=1;v0["helpText%0"].TextColor3=Color3.fromRGB(230,230,230);v0["helpText%0"].Font=Enum.Font.Gotham;v0["helpText%0"].TextSize=20;v0[    
  "helpText%0"].TextWrapped=true;v0["helpText%0"].TextXAlignment=Enum.TextXAlignment.Left;v0["helpText%0"].TextYAlignment=Enum.TextYAlignment.Top;v0["helpText%0"].Text=    
  "/e enable dj  → Enable Double Jump\n"   .. "/e disable dj → Disable Double Jump\n"   .. "/e show djbutton → Show toggle button\n"   ..                                   
  "/e hide djbutton → Hide toggle button\n"   .. "/e help dj → Show this help window" ;v0["helpText%0"].Parent=v0["helpFrame%0"];v0["creditsLabel%0"]=Instance.new(v13(     
  "\252\43\56\148\152\24\254\205\34","\156\168\78\64\224\212\121"));v0["creditsLabel%0"].Size=UDim2.new(0,200,0,20);v0["creditsLabel%0"].Position=UDim2.new(1, -205,1, -25) 
  ;v0["creditsLabel%0"].BackgroundTransparency=1;v0["creditsLabel%0"].Text=v13("\36\252\160\202\14\250\182\142\19\225\229\239\4\235\169\203\20\250\176\244",                
  "\174\103\142\197");v0["creditsLabel%0"].TextColor3=Color3.fromRGB(180,180,180);v0["creditsLabel%0"].Font=Enum.Font.Gotham;v0["creditsLabel%0"].TextSize=14;v0[           
  "creditsLabel%0"].TextXAlignment=Enum.TextXAlignment.Right;v0["creditsLabel%0"].Parent=v0["helpFrame%0"];v0["closeBtn%0"].MouseButton1Click:Connect(function() v0[      
  "helpGui%0"].Enabled=false;end);local function v47(v58) v0["humanoid%0"]=v58;v0["jumps%0"]=0;v58.StateChanged:Connect(function(v68,v69) if (v69==Enum.HumanoidStateType 
  .Landed) then v0["jumps%0"]=0;end end);end local function v48(v61) v47(v61:WaitForChild(v13("\126\61\82\57\43\81\241\82","\152\54\72\63\88\69\62")));end v48(v0[        
    "player%0"].Character or v0["player%0"].CharacterAdded:Wait() );v0["player%0"].CharacterAdded:Connect(v48);v0["UIS%0"].JumpRequest:Connect(function() if ( not v0[    
    "DJEnabled%0"] or  not v0["humanoid%0"]) then return;end if ((tick() -v0["lastJump%0"])<=v0["JUMP_COOLDOWN%0"]) then return;end v0["lastJump%0"]=tick();v0[           
    "onGround%0"]=v0["humanoid%0"].FloorMaterial~=Enum.Material.Air ;if v0["onGround%0"] then v0["jumps%0"]=0;return;end if (v0["jumps%0"]<v0["MAX_AIR_JUMPS%0"]) then v0 
    ["jumps%0"]+=1 v0["humanoid%0"]:ChangeState(Enum.HumanoidStateType.Jumping);end end);v0["player%0"].Chatted:Connect(function(v64) v64=v64:lower();if (v64==v13(       
      "\155\193\174\79\220\203\249\28\208\206\236\73\192\208\225\82","\60\180\164\142")) then v0["screenGui%0"].Enabled=true;elseif (v64==v13(                          
      "\23\91\69\33\46\233\23\24\90\15\43\50\249\6\87\80","\114\56\62\101\73\71\141")) then v0["screenGui%0"].Enabled=false;elseif (v64==v13(                           
      "\247\236\155\193\182\232\217\200\189\169\223\206","\164\216\137\187")) then v0["DJEnabled%0"]=true;v0["button%0"].Text=v13(                                      
        "\246\233\36\176\170\251\75\248\243\60\162\252\190\36\252","\107\178\134\81\210\198\158");elseif (v64==v13("\119\11\194\194\163\43\15\128\202\175\120\10\136",  
        "\202\88\110\226\166")) then v0["DJEnabled%0"]=false;v0["button%0"].Text=v13("\231\0\151\245\198\198\79\168\226\199\211\85\194\216\236\229",                    
        "\170\163\111\226\151");elseif (v64==v13("\94\53\242\48\75\59\57\81\52\184","\73\113\80\210\88\46\87")) then v0["helpGui%0"].Enabled=true;end end);
