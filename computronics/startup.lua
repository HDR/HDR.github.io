--# Made By HDR - @MartinRefseth #--
os.loadAPI("touchpoint")
for a,b in pairs(rs.getSides()) do
  if peripheral.getType(b) == 'monitor' then
   home = touchpoint.new(b)
   settings = touchpoint.new(b)
   buttonColor = touchpoint.new(b)
   textColor = touchpoint.new(b)
   backgroundColor = touchpoint.new(b)
   local t
   break
  end
end

volLabel = 100
spdLabel = 1
 
if fs.exists("musicsystem.cfg") == false then
 local ColorTable = {ButtonColor = "512", TextColor = "2", BackgroundColor = "128"}
    writeCFG = fs.open("musicsystem.cfg", "w")
    writeCFG.write( textutils.serialize( ColorTable ) )
    writeCFG.close()
end
openCFG = fs.open( "musicsystem.cfg", "r" )
  data = openCFG.readAll()
  openCFG.close()
  CFGData = textutils.unserialize(data)
   mainCol = tonumber(CFGData.ButtonColor)
   textCol = tonumber(CFGData.TextColor)
   backCol = tonumber(CFGData.BackgroundColor)
 
--# Functions
function tpoint()
  t = tpage
--#OverWrites Part Of Touchpoint API#--
    t.draw = function(self)
      local function cT(text)
        x,y = term.getSize()
        x1,y1 = term.getCursorPos()
        term.setCursorPos((math.floor(x/2) - (math.floor(#text/2))), y1)
        term.write(text)
     end
                local old = term.redirect(self.mon)
                term.setTextColor(colors.white)
                term.setBackgroundColor(backCol)
                term.clear()
                term.setCursorPos(1,1)
                term.setTextColor(textCol)
                cT(header)
                if header == "Radio Random" then
                    term.setCursorPos(9,18)
                    term.write("Volume")
                    term.setCursorPos(22,18)
                    term.write("Speed")
                end
                for name, buttonData in pairs(self.buttonList) do
                        if buttonData.active then
                                term.setBackgroundColor(buttonData.activeColor)
                                term.setTextColor(buttonData.activeText)
                        else
                                term.setBackgroundColor(buttonData.inactiveColor)
                                term.setTextColor(buttonData.inactiveText)
                        end
                        for i = buttonData.yMin, buttonData.yMax do
                                term.setCursorPos(buttonData.xMin, i)
                                term.write(buttonData.label[i - buttonData.yMin + 1])
                        end
                end
                if old then
                        term.redirect(old)
                else
                        term.restore()
                end
        end
end
 
function colWrite()
local ColorTable = {ButtonColor = buttonColor, TextColor = textColor, BackgroundColor = backgroundColor}
    writeCFG = fs.open("musicsystem.cfg", "w")
    writeCFG.write( textutils.serialize( ColorTable ) )
    writeCFG.close()
    os.reboot()
end
 
function play()
    t:flash("Play")
    local response = http.get("https://raw.githubusercontent.com/HDR/HDR.github.io/master/computronics/track", nil, true)
    tracks = {}
    while true do
        local line = response.readLine()
        tracks[ #tracks + 1 ] = line
        if line == nil then
            break
        end
    end
    response.close()
    tape = peripheral.find("tape_drive")
    local k = tape.getSize()
    tape.stop()
    tape.seek(-tape.getPosition())
    local s = string.rep("\xAA", 8192)
    for i = 1, k + 8191, 8192 do
        tape.write(s)
    end     
    tape.seek(-tape.getPosition())
 
    local randomTrack = tracks[math.random(1, #tracks)]
    local track = http.get(randomTrack, nil, true)
    tape.seek(-tape.getPosition())
    tape.write(track.readAll())
    track.close()
    tape.seek(-tape.getPosition())
    tape.play()
end

function stop()
    t:flash("Stop")
    tape = peripheral.find("tape_drive")
    tape.stop()
end
 
function volUP()
   t:flash("+")
   tape = peripheral.find("tape_drive")
   oldVol = volLabel
   if volLabel <= 95 then
    volLabel = volLabel + 5
    t:rename(tostring(oldVol .. "%"), tostring(volLabel) .. "%")
    tape.setVolume(volLabel/100)
   end
end
 
function volDN()
   t:flash("-")
   tape = peripheral.find("tape_drive")
   oldVol = volLabel
   if volLabel >= 5 then
    volLabel = volLabel - 5
    t:rename(tostring(oldVol .. "%"), tostring(volLabel) .. "%")
    tape.setVolume(volLabel/100)
   end
end
 
function spdUP()
   t:flash(">")
   tape = peripheral.find("tape_drive")
   oldSPD = spdLabel
   if spdLabel <= 2 then
    spdLabel = spdLabel + 0.1
    t:rename(tostring(oldSPD), tostring(spdLabel))
    tape.setSpeed(spdLabel)
   end
end  
 
function spdDN()
   t:flash("<")
   tape = peripheral.find("tape_drive")
   oldSPD = spdLabel
   if spdLabel >= 0.2 then
    spdLabel = spdLabel - 0.1
    t:rename(tostring(oldSPD), tostring(spdLabel))
    tape.setSpeed(spdLabel)
   end
end
 
function update()
 settings:flash("Update")
 shell.run("rm startup")
 shell.run("rm touchpoint")
 shell.run("pastebin get JV4VvHux startup")
 shell.run("pastebin get pFHeia96 touchpoint")
 os.reboot()
end
 
--#Button Color Functions#--
function whiteCol()
buttonColor = 1
 colorSetText(1)
end
 
function orangeCol()
buttonColor = 2
 colorSetText()
end
 
function magentaCol()
buttonColor = 4
 colorSetText()
end
 
function lblueCol()
buttonColor = 8
 colorSetText()
end
 
function yellowCol()
buttonColor = 16
 colorSetText()
end
 
function limeCol()
buttonColor = 32
 colorSetText()
end
 
function pinkCol()
buttonColor = 64
 colorSetText()
end
 
function grayCol()
buttonColor = 128
 colorSetText()
end
 
function lgrayCol()
buttonColor = 256
 colorSetText()
end
 
function cyanCol()
buttonColor = 512
 colorSetText()
end
 
function purpleCol()
buttonColor = 1024
 colorSetText()
end
 
function blueCol()
buttonColor = 2048
 colorSetText()
end
 
function brownCol()
buttonColor = 4096
 colorSetText()
end
 
function greenCol()
buttonColor = 8192
 colorSetText()
end
 
function redCol()
buttonColor = 16384
 colorSetText()
end
 
function blackCol()
buttonColor = 32768
 colorSetText()
end
 
--#Text Color Functions#--
function twhiteCol()
textColor = 1
 colorSetBackground()
end
 
function torangeCol()
textColor = 2
 colorSetBackground()
end
 
function tmagentaCol()
textColor = 4
 colorSetBackground()
end
 
function tlblueCol()
textColor = 8
 colorSetBackground()
end
 
function tyellowCol()
textColor = 16
 colorSetBackground()
end
 
function tlimeCol()
textColor = 32
 colorSetBackground()
end
 
function tpinkCol()
textColor = 64
 colorSetBackground()
end
 
function tgrayCol()
textColor = 128
 colorSetBackground()
end
 
function tlgrayCol()
textColor = 256
 colorSetBackground()
end
 
function tcyanCol()
textColor = 512
 colorSetBackground()
end
 
function tpurpleCol()
textColor = 1024
 colorSetBackground()
end
 
function tblueCol()
textColor = 2048
 colorSetBackground()
end
 
function tbrownCol()
textColor = 4096
 colorSetBackground()
end
 
function tgreenCol()
textColor = 8192
 colorSetBackground()
end
 
function tredCol()
textColor = 16384
 colorSetBackground()
end
 
function tblackCol()
textColor = 32768
 colorSetBackground()
end
 
--#Background color functions#--
function bwhiteCol()
backgroundColor = 1
 colWrite()
end
 
function borangeCol()
backgroundColor = 2
 colWrite()
end
 
function bmagentaCol()
backgroundColor = 4
 colWrite()
end
 
function blblueCol()
backgroundColor = 8
 colWrite()
end
 
function byellowCol()
backgroundColor = 16
 colWrite()
end
 
function blimeCol()
backgroundColor = 32
 colWrite()
end
 
function bpinkCol()
backgroundColor = 64
 colWrite()
end
 
function bgrayCol()
backgroundColor = 128
 colWrite()
end
 
function blgrayCol()
backgroundColor = 256
 colWrite()
end
 
function bcyanCol()
backgroundColor = 512
 colWrite()
end
 
function bpurpleCol()
backgroundColor = 1024
 colWrite()
end
 
function bblueCol()
backgroundColor = 2048
 colWrite()
end
 
function bbrownCol()
backgroundColor = 4096
 colWrite()
end
 
function bgreenCol()
backgroundColor = 8192
 colWrite()
end
 
function bredCol()
backgroundColor = 16384
 colWrite()
end
 
function bblackCol()
backgroundColor = 32768
 colWrite()
end
 
function resCol()
t:flash("Reset")
 shell.run("rm musicsystem.cfg")
 os.reboot()
end
 
function main()
 tpage = home
 header = "Radio Random"
 tpoint()
end
 
function menu()
 tpage = settings
 header = "Settings"
 tpoint()
end
 
function colorSetButton()
 tpage = buttonColor
 header = "Select Button Color"
 tpoint()
end
 
function colorSetText()
 tpage = textColor
 header = "Select Text Color"
 tpoint()
end
 
function colorSetBackground()
 tpage = backgroundColor
 header = "Select Background Color"
 tpoint()
end

function empty()

end
 
do
--#Main Page Buttons#--
 home:add("Play", play, 14,5,23,7, mainCol, textCol, textCol , mainCol)
 home:add("Stop", stop, 14,9,23,11, mainCol, textCol, textCol , mainCol)
 home:add("Settings", menu, 14,13,23,15, mainCol, textCol, textCol , mainCol)
 
 home:add("-", volDN, 6,19,8,19, mainCol, textCol, textCol , mainCol)
 home:add(tostring(volLabel) .. "%", empty, 9,19,14,19, mainCol, textCol, textCol , mainCol)
 home:add("+", volUP, 15,19,17,19, mainCol, textCol, textCol , mainCol)
 
 home:add("<", spdDN, 19,19,21,19, mainCol, textCol, textCol , mainCol)
 home:add(tostring(spdLabel), empty, 22,19,27,19, mainCol, textCol, textCol , mainCol)
 home:add(">", spdUP, 28,19,30,19, mainCol, textCol, textCol , mainCol)
 
 settings:add("Update", update, 3,3,13,5, mainCol, textCol, textCol , mainCol)
 settings:add("Customize", colorSetButton, 15,3,25,5, mainCol, textCol, textCol , mainCol)
 settings:add("Reset", resCol, 27,3,37,5, mainCol, textCol, textCol, mainCol)
 settings:add("Back", main, 1,19,11,19, mainCol, textCol, textCol, mainCol)
 
--#Button Color#--
 buttonColor:add("White", whiteCol, 1,2,9,4, colors.white, colors.black, colors.black, colors.white)
 buttonColor:add("Orange", orangeCol, 11,2,19,4, colors.orange, colors.black, colors.black, colors.orange)
 buttonColor:add("Magenta", magentaCol, 21,2,29,4, colors.magenta, colors.black, colors.black, colors.magenta)
 buttonColor:add("L-Blue", lblueCol, 31,2,39,4, colors.lightBlue, colors.black, colors.black, colors.lightBlue)
 buttonColor:add("Yellow", yellowCol, 1,6,9,8, colors.yellow, colors.black, colors.black, colors.yellow)
 buttonColor:add("Lime", limeCol, 11,6,19,8, colors.lime, colors.black, colors.black, colors.lime)
 buttonColor:add("Pink", pinkCol, 21,6,29,8, colors.pink, colors.black, colors.black, colors.pink)
 buttonColor:add("Gray", grayCol, 31,6,39,8, colors.gray, colors.black, colors.black, colors.gray)
 buttonColor:add("L-Gray", lgrayCol, 1,10,9,12, colors.lightGray, colors.black, colors.black, colors.lightGray)
 buttonColor:add("Cyan", cyanCol, 11,10,19,12, colors.cyan, colors.black, colors.black, colors.cyan)
 buttonColor:add("Purple", purpleCol, 21,10,29,12, colors.purple, colors.black, colors.black, colors.purple)
 buttonColor:add("Blue", blueCol, 31,10,39,12, colors.blue, colors.black, colors.black, colors.blue)
 buttonColor:add("Brown", brownCol, 1,14,9,16, colors.brown, colors.black, colors.black, colors.brown)
 buttonColor:add("Green", greenCol, 11,14,19,16, colors.green, colors.black, colors.black, colors.green)
 buttonColor:add("Red", redCol, 21,14,29,16, colors.red, colors.black, colors.black, colors.red)
 buttonColor:add("Black", blackCol, 31,14,39,16, colors.black, colors.black, colors.white, colors.white)
 buttonColor:add("Back", menu, 1,19,11,19, mainCol, colors.lime, colors.orange, colors.orange)
 
--#Text Color#--
 textColor:add("White", twhiteCol, 1,2,9,4, colors.white, colors.black, colors.black, colors.white)
 textColor:add("Orange", torangeCol, 11,2,19,4, colors.orange, colors.black, colors.black, colors.orange)
 textColor:add("Magenta", tmagentaCol, 21,2,29,4, colors.magenta, colors.black, colors.black, colors.magenta)
 textColor:add("L-Blue", tlblueCol, 31,2,39,4, colors.lightBlue, colors.black, colors.black, colors.lightBlue)
 textColor:add("Yellow", tyellowCol, 1,6,9,8, colors.yellow, colors.black, colors.black, colors.yellow)
 textColor:add("Lime", tlimeCol, 11,6,19,8, colors.lime, colors.black, colors.black, colors.lime)
 textColor:add("Pink", tpinkCol, 21,6,29,8, colors.pink, colors.black, colors.black, colors.pink)
 textColor:add("Gray", tgrayCol, 31,6,39,8, colors.gray, colors.black, colors.black, colors.gray)
 textColor:add("L-Gray", tlgrayCol, 1,10,9,12, colors.lightGray, colors.black, colors.black, colors.lightGray)
 textColor:add("Cyan", tcyanCol, 11,10,19,12, colors.cyan, colors.black, colors.black, colors.cyan)
 textColor:add("Purple", tpurpleCol, 21,10,29,12, colors.purple, colors.black, colors.black, colors.purple)
 textColor:add("Blue", tblueCol, 31,10,39,12, colors.blue, colors.black, colors.black, colors.blue)
 textColor:add("Brown", tbrownCol, 1,14,9,16, colors.brown, colors.black, colors.black, colors.brown)
 textColor:add("Green", tgreenCol, 11,14,19,16, colors.green, colors.black, colors.black, colors.green)
 textColor:add("Red", tredCol, 21,14,29,16, colors.red, colors.black, colors.black, colors.red)
 textColor:add("Black", tblackCol, 31,14,39,16, colors.black, colors.black, colors.white, colors.white)
 
 
--#Background Color#--
 backgroundColor:add("White", bwhiteCol, 1,2,9,4, colors.white, colors.black, colors.black, colors.white)
 backgroundColor:add("Orange", borangeCol, 11,2,19,4, colors.orange, colors.black, colors.black, colors.orange)
 backgroundColor:add("Magenta", bmagentaCol, 21,2,29,4, colors.magenta, colors.black, colors.black, colors.magenta)
 backgroundColor:add("L-Blue", blblueCol, 31,2,39,4, colors.lightBlue, colors.black, colors.black, colors.lightBlue)
 backgroundColor:add("Yellow", byellowCol, 1,6,9,8, colors.yellow, colors.black, colors.black, colors.yellow)
 backgroundColor:add("Lime", blimeCol, 11,6,19,8, colors.lime, colors.black, colors.black, colors.lime)
 backgroundColor:add("Pink", bpinkCol, 21,6,29,8, colors.pink, colors.black, colors.black, colors.pink)
 backgroundColor:add("Gray", bgrayCol, 31,6,39,8, colors.gray, colors.black, colors.black, colors.gray)
 backgroundColor:add("L-Gray", blgrayCol, 1,10,9,12, colors.lightGray, colors.black, colors.black, colors.lightGray)
 backgroundColor:add("Cyan", bcyanCol, 11,10,19,12, colors.cyan, colors.black, colors.black, colors.cyan)
 backgroundColor:add("Purple", bpurpleCol, 21,10,29,12, colors.purple, colors.black, colors.black, colors.purple)
 backgroundColor:add("Blue", bblueCol, 31,10,39,12, colors.blue, colors.black, colors.black, colors.blue)
 backgroundColor:add("Brown", bbrownCol, 1,14,9,16, colors.brown, colors.black, colors.black, colors.brown)
 backgroundColor:add("Green", bgreenCol, 11,14,19,16, colors.green, colors.black, colors.black, colors.green)
 backgroundColor:add("Red", bredCol, 21,14,29,16, colors.red, colors.black, colors.black, colors.red)
 backgroundColor:add("Black", bblackCol, 31,14,39,16, colors.black, colors.black, colors.white, colors.white)
end
 
main()
while true do
    t:draw()
    local event, p1 = t:handleEvents(os.pullEvent())
    if event == "button_click" then
        t.buttonList[p1].func()
    end
end