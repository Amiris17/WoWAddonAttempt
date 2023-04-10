
global y=0
global n=0

PopupDialog["HYDRATION_CHECK"]={
    text="Have you drank water in the past hour?",
    button1="Yes",
    button2="No",
    onAccept=Function()
        reminder_water(y=1)

}


local spell_name=getspellinfo
local concshot_count=0
local best_wrath=0
if (spell_name) tostring=="Concussive Shot" then
    concshot_count=concshot_count+1

if (spell_name) tostring=="5116" --Incase it is a numeric value instead.
    concshot_count=concshot_count+1

if (spell_name) tostring=="Concussive Shot" then
    best_wrath=best_wrath+1
    
if (spell_name) tostring=="5116" --Incase it is a numeric value instead.
    best_wrath=best_wrath+1


function reminder_water(y,n):
    if n>y:
    /script message("DRINK WATER NOW!")
    if y>n:
    /script message("Good job keep it up!")



    
