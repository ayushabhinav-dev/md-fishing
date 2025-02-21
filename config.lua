Config = {}

Config.debug = false  --- For debugging zones only
Config.PoliceChance = 20 -- needs to be 1-99 
Config.MaterialBreakdown = vector3(1087.63, -2001.71, 30.88) -- where you break down rusty materials for materials
Config.FishBuyer = vector4(-1814.64, -1194.00, 13.02, 238.98) -- where you sell your fish
Config.ChumLoc = vector4(1026.52, -3037.92, 8.69, 350.03) -- where you break down your fish to make chum for illegal fishing bait
Config.ShopLoc = vector4(1314.10, 4282.58, 33.91, 240.26) -- where the shop is located to buy poles and bait
Config.AutoRecast = true -- if false players will have to reclick their pole for every catch
Config.TreasureChestObject = true -- this will put a chest on the ground people can punch and kick to break open if false it will run the event as a usuable item and not put a chest on the ground
Config.TreasureChestchance = 5 -- must be 1-100 chance to get a treasure chest while fishing
Config.LevelUpAmount = 60 -- amount of fish required to level up
Config.StarIllLvl = 5 -- level required of regular fishing to be allowed to start illegal fishing

---------------------------------- BRIDGE 
Config.Minigames = {
    ps_circle =     {amount = 2,     speed = 8,},
    ps_maze =       {timelimit = 15},
    ps_scrambler =  {type = 'numeric', time = 15, mirrored = 0},
    ps_var =        {numBlocks = 5, time = 10},
    ps_thermite =   {time = 10, gridsize = 5, incorrect = 3},
    ox =            {'easy', 'easy'},   --easy medium or hard each one corresponds to how many skillchecks and the difficulty
    blcirprog =     {amount = 2,     speed = 50},       -- speed = 1-100
    blprog =        {amount = 1,     speed = 50},       -- speed = 1-100
    blkeyspam =     {amount = 1,     difficulty = 50}, -- difficulty = 1-100
    blkeycircle =   {amount = 1,     difficulty = 50, keynumbers = 3},
    blnumberslide = {amount = 1,     difficulty = 50, keynumbers = 3},
    blrapidlines =  {amount = 1,     difficulty = 50, numberofline = 3},
    blcircleshake = {amount = 1,     difficulty = 50, stages = 3},
    glpath =        {gridSize = 19,  lives = 3,     timelimit = 10000},
    glspot =        {gridSize = 6, timeLimit = 999999, charSet = "alphabet", required = 10},
    glmath =        {timeLimit = 300000},
}

Config.minigametype = 'ox' -- look above for options or choose none if you dont want any minigames 
Config.Notify = 'ox' -- qb or ox (okok is experimental)
Config.progressbartype = 'qb' -- qb or oxbar or oxcir
Config.Dispatch = 'ps' -- ps or cd or core or aty
Config.FreezePlayerWhileFishing = true -- keeps players from moving while fishing 
Config.Target = 'ox'

Config.Blips = {
    {loc =  Config.FishBuyer,                   sprite = 500, scale = 0.55, color = 2, label = 'Fish Buyer',   enabled = true},
    {loc =  Config.ShopLoc,                     sprite = 356, scale = 0.55, color = 2, label = 'Fishing Store',enabled = true},
}

-----ILLEGAL FISHING---------
Config.FishingZone = 'poly' -- poly or sphere

Config.FishingSphereZones = { -- these locations will have blips and can do legal and magnet fishing
    {loc = vector3(-1849.2, -1230.44, 13.02), radius = 30, debug = Config.Debug, enabled = true },
    {loc = vector3(-3427.21, 967.53, 8.35),   radius = 30, debug = Config.Debug, enabled = true },
    {loc = vector3(1313.22, 4229.9, 33.92),   radius = 30, debug = Config.Debug, enabled = true },
    {loc = vector3(40.83, 848.72, 197.73),    radius = 30, debug = Config.Debug, enabled = true },
}

Config.FishingPolyZones = { -- these locations will have blips and can do legal and magnet fishing
   {
        points = {
            vec3(-3259.0, 1309.0, 1.0),
            vec3(-3270.0, 1267.0, 1.0),
            vec3(-3283.0, 1200.0, 1.0),
            vec3(-3289.0, 1144.0, 1.0),
            vec3(-3293.0, 1112.0, 1.0),
            vec3(-3303.0, 1067.0, 1.0),
            vec3(-3305.0, 1029.0, 1.0),
            vec3(-3314.0, 976.0, 1.0),
            vec3(-3314.0, 971.0, 1.0),
            vec3(-3409.0, 971.0, 1.0),
            vec3(-3409.0, 983.0, 1.0),
            vec3(-3428.0, 982.0, 1.0),
            vec3(-3428.0, 952.0, 1.0),
            vec3(-3410.0, 953.0, 1.0),
            vec3(-3409.0, 964.0, 1.0),
            vec3(-3314.0, 964.0, 1.0),
            vec3(-3289.0, 922.0, 1.0),
            vec3(-3262.0, 903.0, 1.0),
            vec3(-3252.0, 841.0, 1.0),
            vec3(-3242.0, 814.0, 1.0),
            vec3(-3501.0, 763.0, 1.0),
            vec3(-3532.0, 1339.0, 1.0),
        },
        thickness = 20.0,
        debug = Config.Debug,
        enabled = true
    },

    {
        points = {
            vec3(1676.0, 43.0, 162.0),
            vec3(1677.0, 39.0, 162.0),
            vec3(1695.0, 41.0, 162.0),
            vec3(1696.0, 46.0, 162.0),
            vec3(1707.0, 46.0, 162.0),
            vec3(1709.0, 31.0, 162.0),
            vec3(1676.0, 27.0, 162.0),
        },
        thickness = 10.0,
        debug = Config.Debug,
        enabled = true
    },
    {
        points = {
            vec3(3838.0, 4462.0, 3.0),
            vec3(3851.0, 4462.0, 3.0),
            vec3(3851.0, 4459.0, 3.0),
            vec3(3859.0, 4459.0, 3.0),
            vec3(3859.0, 4463.0, 3.0),
            vec3(3867.0, 4462.0, 3.0),
            vec3(3867.0, 4465.0, 3.0),
            vec3(3840.0, 4465.0, 3.0),
            vec3(3839.0, 4495.0, 3.0),
            vec3(3873.0, 4500.0, 3.0),
            vec3(3884.0, 4445.0, 3.0),
            vec3(3837.0, 4436.0, 3.0),
        },
        thickness = 10.0,
        debug = Config.Debug,
        enabled = true
    },
    {
        points = {
            vec3(-1564.0, 5202.0, 4.0),
            vec3(-1579.0, 5196.0, 4.0),
            vec3(-1609.0, 5262.0, 4.0),
            vec3(-1614.0, 5260.0, 4.0),
            vec3(-1592.0, 5211.0, 4.0),
            vec3(-1607.0, 5202.0, 4.0),
            vec3(-1631.0, 5187.0, 4.0),
            vec3(-1653.0, 5254.0, 4.0),
            vec3(-1610.0, 5283.0, 4.0),
        },
        thickness = 10.0,
        debug = Config.Debug,
        enabled = true
    },
}

Config.BlipsZone = {
    {loc =  vector3(-3387.03, 967.96, 8.29),    sprite = 88, scale = 0.55, color = 2, label = 'Fishing Zone', enabled = true},
    {loc =  vector3(1685.82, 40.56, 161.77),    sprite = 88, scale = 0.55, color = 2, label = 'Fishing Zone', enabled = true},
    {loc =  vector3(3851.76, 4463.42, 2.73),    sprite = 88, scale = 0.55, color = 2, label = 'Fishing Zone', enabled = true},
    {loc =  vector3(-1607.26, 5252.35, 3.98),   sprite = 88, scale = 0.55, color = 2, label = 'Fishing Zone', enabled = true},
}


---------ILLEGAL FISHING---------

Config.IllegalFishingZone = 'sphere' -- poly or sphere

Config.IllegalfishingSpherezones = { -- these will have no blips and will only work with illegal fishing
    {loc =  vector3(1788.64, -3525.29, 0.54), radius = 250, debug = Config.Debug, enabled = true },
    {loc =  vector3(3190.5, -974.99, 0.37),   radius = 250, debug = Config.Debug, enabled = true },
    {loc =  vector3(1235.08, 7926.63, -1.26), radius = 250, debug = Config.Debug, enabled = true },
    {loc =  vector3(-3196.07, 2601.24, 1.33), radius = 250, debug = Config.Debug, enabled = true },
}

Config.IllegalfishingPolyzones = { -- these will have no blips and will only work with illegal fishing
    { 
        points = {
            vector3(2876.6862792969, -3109.7094726562, 9.0),
            vector3(3081.5297851562, -2761.5297851562, 9.0),
            vector3(3214.7622070312, -2475.5261230469, 9.0),
            vector3(3481.1667480469, -2537.5913085938, 9.0),
            vector3(3888.4541015625, -2668.0129394531, 9.0),
            vector3(3784.0603027344, -3168.0671386719, 9.0),
            vector3(3485.1748046875, -3352.5358886719, 9.0),
            vector3(3266.7312011719, -3353.3537597656, 9.0)
        },
        thickness = 20.0,
        debug = Config.Debug, 
        enabled = true
    },
    {
        points = {
            vector3(-754.97198486328, 6782.1547851562, 10.0),
            vector3(-1326.3525390625, 7172.0576171875, 10.0),
            vector3(-851.41107177734, 7922.220703125, 10.0),
            vector3(-280.48522949219, 7437.46484375, 10.0),
            vector3(-396.58135986328, 7002.6279296875, 10.0)
        },
        thickness = 25.0,
        debug = Config.Debug, 
        enabled = true
    },
}

Config.Materialamount = 5 -- how many materials per item
Config.Levels = { -- in seconds how long it takes to catch 1 fish by your level.
    [0] =  {time = 5},
    [1] =  {time = 50},
    [2] =  {time = 45},
    [3] =  {time = 40},
    [4] =  {time = 35},
    [5] =  {time = 30},
    [6] =  {time = 25},
    [7] =  {time = 20},
    [8] =  {time = 15},
    [9] =  {time = 10},
    [10] = {time = 5},
}
