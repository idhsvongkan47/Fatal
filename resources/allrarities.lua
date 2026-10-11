-- path: game:GetService("ReplicatedStorage").shared.modules.library.rarities
-- Script Path: game:GetService("ReplicatedStorage").shared.modules.library.rarities
-- Took 0.02s to decompile.
-- Executor: Potassium (v2.5.2)

-- Decompiled with Potassium's decompiler.

local v1 = {
    Rarities = {
        Trash = {
            Name = "Trash",
            Order = 1,
            ChanceGroup = "Trash",
            NoAnglerQuest = true,
            AnnounceInChat = false,
            Color = Color3.fromRGB(145, 145, 145)
        },
        Common = {
            Name = "Common",
            Order = 2,
            ChanceGroup = "Common",
            AnnounceInChat = false,
            Color = Color3.fromRGB(142, 187, 191)
        },
        Uncommon = {
            Name = "Uncommon",
            Order = 3,
            ChanceGroup = "Common",
            AnnounceInChat = false,
            Color = Color3.fromRGB(161, 255, 169)
        },
        Unusual = {
            Name = "Unusual",
            Order = 4,
            ChanceGroup = "Rare",
            AnnounceInChat = false,
            Color = Color3.fromRGB(192, 135, 198)
        },
        Rare = {
            Name = "Rare",
            Order = 5,
            ChanceGroup = "Rare",
            AnnounceInChat = false,
            Color = Color3.fromRGB(119, 108, 181)
        },
        Legendary = {
            Name = "Legendary",
            Order = 6,
            BiteSoundName = "bitelegendary",
            ChanceGroup = "Legendary",
            AnglerQuestRequirement = 10,
            AnnounceInChat = true,
            Color = Color3.fromRGB(240, 181, 109)
        },
        Mythical = {
            Name = "Mythical",
            Order = 7,
            BiteSoundName = "bitelegendary",
            ChanceGroup = "Mythical",
            AnglerQuestRequirement = 25,
            AnnounceInChat = true,
            Color = Color3.fromRGB(255, 62, 120)
        },
        Exotic = {
            Name = "Exotic",
            Order = 8,
            BiteSoundName = "biteexotic",
            ChanceGroup = "Exotic",
            AnglerQuestRequirement = 50,
            AnnounceInChat = true,
            Color = Color3.fromRGB(255, 255, 255),
            ColorGradient = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.fromHSV(0, 0.5, 1)),
                ColorSequenceKeypoint.new(0.125, Color3.fromHSV(0.125, 0.5, 1)),
                ColorSequenceKeypoint.new(0.25, Color3.fromHSV(0.25, 0.5, 1)),
                ColorSequenceKeypoint.new(0.375, Color3.fromHSV(0.375, 0.5, 1)),
                ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.5, 0.5, 1)),
                ColorSequenceKeypoint.new(0.625, Color3.fromHSV(0.625, 0.5, 1)),
                ColorSequenceKeypoint.new(0.75, Color3.fromHSV(0.75, 0.5, 1)),
                ColorSequenceKeypoint.new(0.875, Color3.fromHSV(0.875, 0.5, 1)),
                ColorSequenceKeypoint.new(1, Color3.fromHSV(1, 0.5, 1))
            })
        },
        Secret = {
            Name = "Secret",
            Order = 9,
            BiteSoundName = "biteexotic",
            NoParticleLight = true,
            ChanceGroup = "Secret",
            FinalChanceDivisor = 25,
            AnglerQuestRequirement = 75,
            AnnounceInChat = true,
            HideInBestiary = true,
            Color = Color3.fromRGB(255, 255, 255),
            ColorGradient = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0, 0, 1)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0, 0, 0.25)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0, 0, 1)) })
        },
        Limited = {
            Name = "Limited",
            Order = 10,
            BiteSoundName = "bitelegendary",
            ChanceGroup = "Exotic",
            AnnounceInChat = false,
            HideInBestiary = true,
            Color = Color3.fromRGB(74, 100, 217)
        },
        ["Limited+"] = {
            Name = "Limited+",
            Order = 11,
            BiteSoundName = "biteexotic",
            ChanceGroup = "Secret",
            AnnounceInChat = true,
            HideInBestiary = true,
            Color = Color3.fromRGB(255, 255, 255),
            ColorGradient = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(74, 100, 217)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 185, 73)), ColorSequenceKeypoint.new(1, Color3.fromRGB(74, 100, 217)) })
        },
        Relic = {
            Name = "Relic",
            Order = 12,
            BiteSoundName = "bitelegendary",
            ChanceGroup = "Mythical",
            AnglerQuestRequirement = 50,
            AnnounceInChat = true,
            Color = Color3.fromRGB(120, 255, 183)
        },
        Fragment = {
            Name = "Fragment",
            Order = 13,
            ChanceGroup = "Exotic",
            NoAnglerQuest = true,
            AnnounceInChat = true,
            Color = Color3.fromRGB(255, 63, 5)
        },
        Seed = {
            Name = "Seed",
            Order = 14,
            BiteSoundName = "bitelegendary",
            ChanceGroup = "Exotic",
            NoAnglerQuest = true,
            AnnounceInChat = true,
            Color = Color3.fromRGB(175, 255, 47)
        },
        Gemstone = {
            Name = "Gemstone",
            Order = 15,
            BiteSoundName = "bitelegendary",
            ChanceGroup = "Exotic",
            NoAnglerQuest = true,
            AnnounceInChat = true,
            Color = Color3.fromRGB(172, 57, 255)
        },
        Apex = {
            Name = "Apex",
            Order = 16,
            BiteSoundName = "bitecataclysmic",
            ChanceGroup = "Exotic",
            AnglerQuestRequirement = 100,
            AnnounceInChat = true,
            HideInBestiary = true,
            Color = Color3.fromRGB(255, 0, 0)
        },
        Extinct = {
            Name = "Extinct",
            Order = 17,
            NoAnglerQuest = true,
            AnnounceInChat = false,
            Protected = true,
            HideInBestiary = true,
            Color = Color3.fromRGB(255, 178, 178)
        },
        Cataclysmic = {
            Name = "Cataclysmic",
            Order = 18,
            NonFish = true,
            BiteSoundName = "bitecataclysmic",
            NoParticleLight = true,
            AnnounceInChat = true,
            Protected = true,
            HideInBestiary = true,
            Color = Color3.fromRGB(255, 255, 255),
            ColorGradient = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.fromRGB(127, 24, 28)),
                ColorSequenceKeypoint.new(0.176, Color3.fromRGB(67, 21, 6)),
                ColorSequenceKeypoint.new(0.344, Color3.fromRGB(95, 35, 3)),
                ColorSequenceKeypoint.new(0.49, Color3.fromRGB(158, 40, 0)),
                ColorSequenceKeypoint.new(0.649, Color3.fromRGB(95, 35, 3)),
                ColorSequenceKeypoint.new(0.83, Color3.fromRGB(75, 22, 8)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(127, 24, 28))
            })
        },
        Special = {
            Name = "Special",
            Order = 19,
            BiteSoundName = "bitespecial",
            NoParticleLight = true,
            AnnounceInChat = true,
            Protected = true,
            HideInBestiary = true,
            Color = Color3.fromRGB(255, 255, 255),
            ColorGradient = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 171, 255)),
                ColorSequenceKeypoint.new(0.1, Color3.fromRGB(147, 125, 255)),
                ColorSequenceKeypoint.new(0.6, Color3.fromRGB(255, 214, 117)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 171, 255))
            })
        },
        Nuclear = {
            Name = "Nuclear",
            Order = 20,
            NonFish = true,
            Color = Color3.fromRGB(255, 255, 255),
            ColorGradient = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(26, 141, 0)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(214, 196, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(26, 141, 0)) })
        },
        Unique = {
            Name = "Unique",
            Order = 21,
            NonFish = true,
            Color = Color3.fromRGB(255, 255, 255),
            ColorGradient = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)) })
        },
        Whistle = {
            Name = "Whistle",
            Order = 22,
            NonFish = true,
            Color = Color3.fromRGB(255, 255, 255),
            ColorGradient = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(230, 230, 230)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)) })
        },
        Mirror = {
            Name = "Mirror",
            Order = 23,
            NonFish = true,
            Color = Color3.fromRGB(255, 255, 255),
            ColorGradient = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(183, 214, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)) })
        },
        ["Divine Secret"] = {
            Name = "Divine Secret",
            Order = 24,
            BiteSoundName = "bitedivine",
            NoParticleLight = true,
            NoAnglerQuest = true,
            HasSerial = true,
            Protected = true,
            AnnounceInChat = true,
            HideInBestiary = true,
            Color = Color3.fromRGB(255, 255, 255),
            ColorGradient = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(117, 117, 255)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(224, 188, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(138, 92, 255)) })
        },
        ["Witch\'s"] = {
            Name = "Witch\'s",
            Order = 25,
            NonFish = true,
            Color = Color3.fromRGB(163, 115, 190)
        }
    },
    OrderedRarities = {},
    ChanceGroups = {
        Trash = {
            Name = "Trash",
            Order = 1,
            BaseChance = 100,
            LuckFactor = -35,
            RoamerChanceMultiplier = 2
        },
        Common = {
            Name = "Common",
            Order = 2,
            BaseChance = 200,
            LuckFactor = -20,
            RoamerChanceMultiplier = 10
        },
        Rare = {
            Name = "Rare",
            Order = 3,
            BaseChance = 35,
            LuckFactor = -1.5,
            RoamerChanceMultiplier = 10
        },
        Legendary = {
            Name = "Legendary",
            Order = 4,
            BaseChance = 10,
            LuckFactor = 1.27,
            RoamerChanceMultiplier = 5
        },
        Mythical = {
            Name = "Mythical",
            Order = 5,
            BaseChance = 0.1,
            LuckFactor = 1.5,
            RoamerChanceMultiplier = 5
        },
        Exotic = {
            Name = "Exotic",
            Order = 6,
            BaseChance = 0.01,
            LuckFactor = 0.5,
            RoamerChanceMultiplier = 3
        },
        Secret = {
            Name = "Secret",
            Order = 7,
            BaseChance = 0.01,
            LuckFactor = 0.5,
            RoamerChanceMultiplier = 5
        }
    },
    OrderedChanceGroups = {},
    OrderedRarityNames = {},
    StaticColors = {},
    GradientColors = {},
    AnyColors = {}
};

for _, v in v1.Rarities do
    if v1.OrderedRarities[v.Order] then
        warn((`Rarity order collission between {v.Name} and {v1.OrderedRarities[v.Order].Name}!`));
    else
        v1.OrderedRarities[v.Order] = v;
        v1.OrderedRarityNames[v.Order] = v.Name;
        v1.StaticColors[v.Name] = v.Color;
        v1.GradientColors[v.Name] = v.ColorGradient or ColorSequence.new(v.Color);
        v1.AnyColors[v.Name] = v.ColorGradient or v.Color;
    end;
end;

for _, v in v1.ChanceGroups do
    if v1.OrderedChanceGroups[v.Order] then
        warn((`Chance Group order collission between {v.Name} and {v1.OrderedChanceGroups[v.Order].Name}!`));
    else
        v1.OrderedChanceGroups[v.Order] = v;
    end;
end;

return v1;
