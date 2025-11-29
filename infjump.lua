-- DEFAULT: ENABLED
-- KEYBIND TO DISABLE/ENABLE: P
local u=game:GetService("UserInputService");local p=game:GetService("Players").LocalPlayer;local h;local f=true;local d=false;local function j()if f and not d then d=true;if h then h:ChangeState(Enum.HumanoidStateType.Jumping)end;task.wait();d=false end end;j();u.JumpRequest:Connect(j);u.InputBegan:Connect(function(i,g)if not g and i.KeyCode==Enum.KeyCode.P then f=not f;print("Infinite Jump:",f and"ON"or"OFF")end end);p.CharacterAdded:Connect(function(c)h=c:WaitForChild("Humanoid")end);h=p.Character:WaitForChild("Humanoid")
