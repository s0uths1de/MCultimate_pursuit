
tellraw @a [{"text": "============================================================"}]
tellraw @a [{"text":"   作者：ChengNan  联系方式:1598562070（QQ）","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a [{"text":"   玩法介绍：","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a [{"text":"       总则：极限生存，挖矿发育，两方对决,可以认为UHC吧","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a [{"text":"       逃脱者：躲避追杀者，进地狱，找要塞，击败末影龙","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a [{"text":"       追杀者：想尽一切办法在逃脱者之前杀死逃脱者","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a [{"text":"       逃脱者只有一次生命的机会，追杀者可以无限复活","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a [{"text":"       赞助链接:https://afdian.net/album/d2c04c108fcf11eb8e0d52540025c377","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
say @a 链接:https://afdian.net/album/d2c04c108fcf11eb8e0d52540025c377
tellraw @a [{"text":"   推荐人数： 3 ~ 6    1 ~ 2名逃脱者，2 ~ 5名追杀者","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a [{"text":"   游戏时长： 30 ~ 90 min       ","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a [{"text":"   有些功能并未完全开发,处于早期测试阶段，暂不支持重置","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a [{"text":"   请勿输入任何命令","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

gamemode survival @a
gamerule spawnRadius 1
gamerule spectatorsGenerateChunks false
difficulty hard
clear @a

team add Red 
team add Green
team add Bystander
team add Green-1
team add Red-1
team modify Red-1 color red
team modify Red-1 prefix "       "
team modify Green-1 prefix "       "
team modify Red-1 suffix "       "
team modify Green-1 suffix "       "
team join Green-1 逃脱者击杀数
team join Red-1 Timer
team join Red-1 作者：AdverseWind
team join Red-1 数据包版本B：0.6
team join Red-1 数据包还未完善将继续更新
team join Red-1 部分功能暂未实现
team modify Red color red
team modify Green color green
team modify Bystander color white
team modify Green-1 color green
team modify Red friendlyFire true
spawnpoint @a ~ ~ ~

bossbar add stage [{"text": " 阶 段 - I       随机效果       下个阶段：600s","color": "white"}]
bossbar set stage max 600
bossbar set stage visible true
bossbar set stage players @a
bossbar set stage style notched_10
bossbar set stage color white

gamerule doImmediateRespawn true

scoreboard objectives add info dummy [{"text":"极","color":"dark_green","bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"限","color":"dark_blue","bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"追","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"杀","color":"dark_red","bold":true,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]
scoreboard objectives add Death deathCount {"text": "死亡榜"}
scoreboard objectives setdisplay sidebar info
scoreboard objectives add ender_dragon minecraft.killed:ender_dragon 
scoreboard objectives add Kills playerKillCount

scoreboard players set 作者：AdverseWind info 9
scoreboard players set 数据包版本B：0.6 info 8 
scoreboard players set 逃脱者击杀数 info 0
scoreboard players set 数据包还未完善将继续更新 info 7
scoreboard players set 部分功能暂未实现 info 6

scoreboard players set #random_min random 0
scoreboard players set #random_min random 20

team modify Green prefix [{"text":"   逃脱者:","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
team modify Red prefix [{"text":"   追杀者:","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
team modify Bystander prefix [{"text":"   旁观者:","color":"dark_gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a [{"text":"   点击此处选择","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"：","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Team","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/function ultimate_pursuit:settings"}},{"text":"]","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a [{"text": "============================================================"}]
