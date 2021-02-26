#conversion
scoreboard players operation Timer info = Timer-1 Timer
scoreboard players operation 逃脱者击杀数 info = @s[team=Green] Kills

#loop
scoreboard players add Timer-1 Timer1 1
scoreboard players add Timer-1 TimerStarting 1
execute if score Timer-1 Timer1 matches 19..21 run scoreboard players add Timer-1 Timer 1
execute if score Timer-1 Timer1 matches 19..21 run scoreboard players add Timer-1 Timer2 1
execute if score Timer-1 Timer1 matches 19..21 run scoreboard players add Timer-1 Timer3 1
execute if score Timer-1 Timer3 matches 14..16 run scoreboard players add Timer-1 Timer4 1
execute if score Timer-1 Timer4 matches 74 run scoreboard players add Timer-1 Timer4 1
execute if score Timer-1 Timer4 matches 74 run function random:random
scoreboard players operation Timer-1 TimerRandom = @r random
execute if score Timer-1 Timer matches 1 run effect give @a[team=Red] blindness 45 1
execute if score Timer-1 Timer matches 1 run effect give @a[team=Red] slowness 75 3
execute if score Timer-1 Timer matches 1 run effect give @a[team=Red] regeneration 75 49
execute if score Timer-1 Timer matches 1 run effect give @a[team=Red] saturation 75 
#compass setting
execute if score Timer-1 Timer3 matches 15 at @a[team=Green] run setworldspawn ~ ~ ~ 
execute if score Timer-1 Timer3 matches 15 run title @a[team=Red] actionbar [{"text":"[Time]","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"Timer","name":"Timer-1"},"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"s","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"   [提示]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"逃脱者位置已更新","color":"light_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score Timer-1 Timer3 matches 15 run scoreboard players set Timer-1 Timer4 0
execute if score Timer-1 Timer3 matches 75 run scoreboard players set Timer-1 TimerRandom 0

execute if score Timer-1 Timer2 matches 0 run bossbar set stage name [{"text": " 阶 段 - I       随机效果       下个阶段：600s","color": "white"}] 
execute if score Timer-1 Timer2 matches 0 run bossbar set stage color white
execute if score Timer-1 Timer2 matches 200 run bossbar set stage name [{"text": " 阶 段 - I       随机效果       下个阶段：600a","color": "green"}] 
execute if score Timer-1 Timer2 matches 200 run bossbar set stage color green
execute if score Timer-1 Timer2 matches 400 run bossbar set stage name [{"text": " 阶 段 - I       随机效果       下个阶段：600s","color": "yellow"}] 
execute if score Timer-1 Timer2 matches 400 run bossbar set stage color yellow
execute if score Timer-1 Timer2 matches 570 run bossbar set stage name [{"text": " 阶 段 - I       随机效果       下个阶段：600s","color": "red"}] 
execute if score Timer-1 Timer2 matches 570 run bossbar set stage color red

execute if score Timer-1 Timer2 matches 600 run bossbar set stage max 1200
execute if score Timer-1 Timer2 matches 600 run bossbar set stage name [{"text": " 阶 段 - II      未实现       下个阶段：600s","color": "white"}] 
execute if score Timer-1 Timer2 matches 600 run bossbar set stage color white
execute if score Timer-1 Timer2 matches 800 run bossbar set stage name [{"text": " 阶 段 - II       下个阶段：600a","color": "green"}] 
execute if score Timer-1 Timer2 matches 800 run bossbar set stage color green
execute if score Timer-1 Timer2 matches 1000 run bossbar set stage name [{"text": " 阶 段 - II       下个阶段：600s","color": "yellow"}] 
execute if score Timer-1 Timer2 matches 1000 run bossbar set stage color yellow
execute if score Timer-1 Timer2 matches 1170 run bossbar set stage name [{"text": " 阶 段 - II       下个阶段：600s","color": "red"}] 
execute if score Timer-1 Timer2 matches 1170 run bossbar set stage color red

execute if score Timer-1 Timer2 matches 1200 run bossbar set stage max 1800
execute if score Timer-1 Timer2 matches 1200 run bossbar set stage name [{"text": " 阶 段 - III       下个阶段：600s","color": "white"}] 
execute if score Timer-1 Timer2 matches 1200 run bossbar set stage color white
execute if score Timer-1 Timer2 matches 1400 run bossbar set stage name [{"text": " 阶 段 - III       下个阶段：600a","color": "green"}] 
execute if score Timer-1 Timer2 matches 1400 run bossbar set stage color green
execute if score Timer-1 Timer2 matches 1600 run bossbar set stage name [{"text": " 阶 段 - III       下个阶段：600s","color": "yellow"}] 
execute if score Timer-1 Timer2 matches 1600 run bossbar set stage color yellow
execute if score Timer-1 Timer2 matches 1770 run bossbar set stage name [{"text": " 阶 段 - III       下个阶段：600s","color": "red"}] 
execute if score Timer-1 Timer2 matches 1770 run bossbar set stage color red

execute if score Timer-1 Timer2 matches 1800 run bossbar set stage max 2400
execute if score Timer-1 Timer2 matches 1800 run bossbar set stage name [{"text": " 阶 段 - IV       下个阶段：600s","color": "white"}] 
execute if score Timer-1 Timer2 matches 1800 run bossbar set stage color white
execute if score Timer-1 Timer2 matches 2000 run bossbar set stage name [{"text": " 阶 段 - IV       下个阶段：600a","color": "green"}] 
execute if score Timer-1 Timer2 matches 2000 run bossbar set stage color green
execute if score Timer-1 Timer2 matches 2200 run bossbar set stage name [{"text": " 阶 段 - IV       下个阶段：600s","color": "yellow"}] 
execute if score Timer-1 Timer2 matches 2200 run bossbar set stage color yellow
execute if score Timer-1 Timer2 matches 2370 run bossbar set stage name [{"text": " 阶 段 - IV       下个阶段：600s","color": "red"}] 
execute if score Timer-1 Timer2 matches 2370 run bossbar set stage color red

execute if score Timer-1 Timer2 matches 2400 run bossbar set stage max 3000
execute if score Timer-1 Timer2 matches 2400 run bossbar set stage name [{"text": " 阶 段 - V       下个阶段：600s","color": "white"}] 
execute if score Timer-1 Timer2 matches 2400 run bossbar set stage color white
execute if score Timer-1 Timer2 matches 2600 run bossbar set stage name [{"text": " 阶 段 - V       下个阶段：600a","color": "green"}] 
execute if score Timer-1 Timer2 matches 2600 run bossbar set stage color green
execute if score Timer-1 Timer2 matches 2800 run bossbar set stage name [{"text": " 阶 段 - V       下个阶段：600s","color": "yellow"}] 
execute if score Timer-1 Timer2 matches 2800 run bossbar set stage color yellow
execute if score Timer-1 Timer2 matches 2970 run bossbar set stage name [{"text": " 阶 段 - V       下个阶段：600s","color": "red"}] 
execute if score Timer-1 Timer2 matches 2970 run bossbar set stage color red

execute if score Timer-1 Timer2 matches 3000 run bossbar set stage max 3600
execute if score Timer-1 Timer2 matches 3000 run bossbar set stage name [{"text": " 阶 段 - VI       下个阶段：600s","color": "white"}] 
execute if score Timer-1 Timer2 matches 3000 run bossbar set stage color white
execute if score Timer-1 Timer2 matches 3200 run bossbar set stage name [{"text": " 阶 段 - VI       下个阶段：600a","color": "green"}] 
execute if score Timer-1 Timer2 matches 3200 run bossbar set stage color green
execute if score Timer-1 Timer2 matches 3400 run bossbar set stage name [{"text": " 阶 段 - VI       下个阶段：600s","color": "yellow"}] 
execute if score Timer-1 Timer2 matches 3400 run bossbar set stage color yellow
execute if score Timer-1 Timer2 matches 3570 run bossbar set stage name [{"text": " 阶 段 - VI       下个阶段：600s","color": "red"}] 
execute if score Timer-1 Timer2 matches 3570 run bossbar set stage color red

execute store result bossbar stage value run scoreboard players get Timer-1 Timer2
execute if score Timer-1 Timer2 matches 1800000 run scoreboard players set Timer-1 Timer2 0
execute if score Timer-1 Timer1 matches 19..21 run scoreboard players set Timer-1 Timer1 0

#compass
replaceitem entity @a[team=Red] hotbar.8 compass{display:{Name:"[{\"text\":\"定向指南针\",\"bold\":true,\"italic\":true,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"追踪逃脱者位置\\n每隔60s更新一次逃脱者的位置\",\"color\":\"dark_gray\",\"bold\":true,\"italic\":true,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1 

#green win
execute if score @s ender_dragon matches 1 run title @a title [{"text":"[","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"逃脱者","color":"dark_green","bold":false,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"]","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"胜利","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s ender_dragon matches 1 run tellraw @a [{"text":"[结束]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"Timer","name":"Timer-1"},"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s ender_dragon matches 1 run tellraw @a [{"text":"[提示]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"逃脱者","color":"dark_green","bold":false,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"]","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"胜利","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

#red win
execute if score @a[team=Green,limit=1] Death matches 1..3 run title @a title [{"text":"[","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"追杀者","color":"red","bold":false,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"]","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"胜利","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @a[team=Green,limit=1] Death matches 1..3 run tellraw @a [{"text":"[提示]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"追杀者","color":"red","bold":false,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"]","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"胜利","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @a[team=Green,limit=1] Death matches 1..3 run tellraw @a [{"text":"[结束]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"Timer","name":"Timer-1"},"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @a[team=Green,limit=1] Death matches 1..3 run scoreboard players set @a[team=Green,limit=1] Death 0

#number timer
execute if score Timer-1 TimerStarting matches 19..21 run title @a title {"text": "10","color": "white"}
execute if score Timer-1 TimerStarting matches 99..101 run title @a title {"text": "5","color": "green"}
execute if score Timer-1 TimerStarting matches 139..141 run title @a title {"text": "3","color": "yellow"}
execute if score Timer-1 TimerStarting matches 159..161 run title @a title {"text": "2","color": "gold"}
execute if score Timer-1 TimerStarting matches 179..181 run title @a title {"text": "1","color": "red"}
execute if score Timer-1 TimerStarting matches 199..201 run title @a title {"text": "GO！","color": "red"}

execute if score Timer-1 TimerStarting matches 199..201 run scoreboard objectives add Timer dummy 
execute if score Timer-1 TimerStarting matches 199..201 run scoreboard objectives add Timer1 dummy
execute if score Timer-1 TimerStarting matches 199..201 run scoreboard objectives add Timer2 dummy
execute if score Timer-1 TimerStarting matches 199..201 run scoreboard objectives add Timer3 dummy
execute if score Timer-1 TimerStarting matches 199..201 run scoreboard objectives add TimerRandom dummy

# Red tip
execute if score Timer-1 Timer matches 30 run title @a[team=Red] actionbar [{"text":"[游戏提示]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"上量好对策：追人，发育等分工明确","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score Timer-1 Timer matches 60 run title @a[team=Red] actionbar [{"text":"[游戏提示]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"床可以设置重生点哟","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score Timer-1 Timer matches 330 run title @a[team=Red] actionbar [{"text":"[游戏提示]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"时刻准备好床，设置重生点的物品","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score Timer-1 Timer matches 630 run title @a[team=Red] actionbar [{"text":"[游戏提示]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"跟不上人？先发展发展装备","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score Timer-1 Timer matches 930 run title @a[team=Red] actionbar [{"text":"[游戏提示]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"先去地狱，末地要塞等逃脱者自投罗网","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

# Green tip
execute if score Timer-1 Timer matches 30 run title @a[team=Green] actionbar [{"text":"[游戏提示]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"趁追杀者还在出生点，快速远离，慢慢发育","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score Timer-1 Timer matches 330 run title @a[team=Green] actionbar [{"text":"[游戏提示]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"与追杀者保持一定距离","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score Timer-1 Timer matches 630 run title @a[team=Green] actionbar [{"text":"[游戏提示]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"全追杀保持一个“快”字","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score Timer-1 Timer matches 930 run title @a[team=Green] actionbar [{"text":"[游戏提示]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"紧急时刻：急中生智","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score Timer-1 Timer matches 1230 run title @a[team=Green] actionbar [{"text":"[游戏提示]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"食物是比不可少的","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score Timer-1 Timer matches 1530 run title @a[team=Green] actionbar [{"text":"[游戏提示]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"多去地图中的遗迹，获取保命的物品","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score Timer-1 Timer matches 100 run title @a actionbar [{"text":"[游戏提示]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"床，重生锚在一些维度可一次性造成大量伤害","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score Timer-1 Timer matches 1830 run title @a[team=Green] actionbar [{"text":"[游戏提示]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"金锭是不可或缺的，与猪灵交换一些好东西","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score Timer-1 Timer matches 2130 run title @a[team=Green] actionbar [{"text":"[游戏提示]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"多于猪灵交换些珍珠，以被不时之需","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score Timer-1 Timer matches 2430 run title @a[team=Green] actionbar [{"text":"[游戏提示]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":":","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"炼药台是个不错的东西哦","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score Timer-1 TimerRandom matches 16 run effect give @r[team=Red] slowness 5 5
execute if score Timer-1 TimerRandom matches 1 run effect give @r[team=Red] mining_fatigue 15 1
execute if score Timer-1 TimerRandom matches 2 run effect give @r[team=Red] nausea 10 5
execute if score Timer-1 TimerRandom matches 3 run effect give @r[team=Red] blindness 5 5
execute if score Timer-1 TimerRandom matches 4 run effect give @r[team=Red] weakness 7 5
execute if score Timer-1 TimerRandom matches 5 run effect give @r[team=Red] wither 3 5
execute if score Timer-1 TimerRandom matches 6 run effect give @r[team=Red] glowing 25 1
execute if score Timer-1 TimerRandom matches 7 run effect give @r[team=Red] slowness 5 1
execute if score Timer-1 TimerRandom matches 8 run effect give @r[team=Red] levitation 5 1
execute if score Timer-1 TimerRandom matches 9 run effect give @r[team=Red] unluck 15 5
execute if score Timer-1 TimerRandom matches 10 run effect give @r[team=Red] bad_omen 45 1
execute if score Timer-1 TimerRandom matches 11 run effect give @r[team=Red] hunger 25 2
execute if score Timer-1 TimerRandom matches 12 run effect give @r[team=Red] poison 10 1
execute if score Timer-1 TimerRandom matches 13 run effect give @r[team=Red] strength 5 1
execute if score Timer-1 TimerRandom matches 14 run effect give @r[team=Red] nausea 25 5
execute if score Timer-1 TimerRandom matches 15 run effect give @r[team=Red] bad_omen 45 1
execute if score Timer-1 TimerRandom matches 1 run effect give @r[team=Green] speed 5 1
execute if score Timer-1 TimerRandom matches 2 run effect give @r[team=Green] strength 10 2
execute if score Timer-1 TimerRandom matches 3 run effect give @r[team=Green] jump_boost 5 1
execute if score Timer-1 TimerRandom matches 4 run effect give @r[team=Green] fire_resistance 20 1
execute if score Timer-1 TimerRandom matches 5 run effect give @r[team=Green] luck 10 1
execute if score Timer-1 TimerRandom matches 6 run effect give @r[team=Green] conduit_power 10 1
execute if score Timer-1 TimerRandom matches 7 run effect give @r[team=Green] dolphins_grace 10 1
