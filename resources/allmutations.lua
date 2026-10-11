-- path: game:GetService("ReplicatedStorage").shared.modules.fishing.mutations
-- Script Path: game:GetService("ReplicatedStorage").shared.modules.fishing.mutations
-- Took 20.81s to decompile.
-- Executor: Potassium (v2.5.2)

-- Decompiled with Potassium's decompiler.

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Players = game:GetService("Players");
local u1 = {};
local fish = require(ReplicatedStorage.shared.modules:WaitForChild("library"):WaitForChild("fish"));
local RngUtil = require(ReplicatedStorage.shared:WaitForChild("utils"):WaitForChild("RngUtil"));
local packages = ReplicatedStorage:WaitForChild("packages");
local Cache = require(packages.Cache);
u1.Mutations = {
    Webbed = {
        PriceMultiply = 2.5,
        Chance = 0,
        Priority = 3,
        Display = "Webbed",
        Obtainable = false,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(230, 230, 235)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(200, 30, 40)), ColorSequenceKeypoint.new(1, Color3.fromRGB(230, 230, 235)) })
    },
    Myriapodic = {
        PriceMultiply = 10,
        Chance = 0,
        Display = "Myriapodic",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(92, 92, 92)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(159, 62, 63)), ColorSequenceKeypoint.new(1, Color3.fromRGB(92, 92, 92)) })
    },
    Electrified = {
        PriceMultiply = 4.9,
        Chance = 0,
        Display = "Electrified",
        RoamingSpeedMultiplier = 2,
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(255, 245, 99), Color3.fromRGB(255, 255, 255))
    },
    Scavenged = {
        PriceMultiply = 3,
        Chance = 0,
        Display = "Scavenged",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(222, 204, 167)
    },
    Singularity = {
        PriceMultiply = 10.618,
        Chance = 0,
        Display = "Singularity",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(114, 3, 145)),
            ColorSequenceKeypoint.new(0.3, Color3.fromRGB(255, 186, 80)),
            ColorSequenceKeypoint.new(0.7, Color3.fromRGB(255, 101, 93)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 214, 66))
        })
    },
    Melody = {
        PriceMultiply = 8.18,
        Chance = 0,
        Display = "Melody",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(255, 190, 79)
    },
    Synth = {
        PriceMultiply = 8.8,
        Chance = 0,
        Display = "Synth",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(213, 183, 255)
    },
    Darkheart = {
        PriceMultiply = 11.8,
        Chance = 0,
        Display = "Darkheart",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(0, 0, 0)
    },
    Bathyal = {
        PriceMultiply = 7,
        Chance = 0,
        Display = "Bathyal",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(93, 203, 243), Color3.fromRGB(59, 72, 168))
    },
    Thalassic = {
        PriceMultiply = 9,
        Chance = 0,
        Display = "Thalassic",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(49, 39, 124), Color3.fromRGB(24, 33, 113))
    },
    Hadal = {
        PriceMultiply = 11,
        Chance = 0,
        Display = "Hadal",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(9, 7, 136), Color3.fromRGB(3, 2, 53))
    },
    Luminous = {
        PriceMultiply = 9,
        Chance = 0,
        Display = "Luminous",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(28, 32, 74), Color3.fromRGB(96, 214, 255))
    },
    Bioluminescent = {
        PriceMultiply = 6,
        Chance = 20,
        Display = "Bioluminescent",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = true,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(37, 74, 31), Color3.fromRGB(126, 227, 255)),
        SpecificZones = { "Outer Deep", "Lower Deep", "Gloomy Crevice" }
    },
    Entrenched = {
        PriceMultiply = 4,
        Chance = 10,
        Display = "Entrenched",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = true,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(40, 49, 74), Color3.fromRGB(51, 60, 115)),
        SpecificZones = { "Outer Deep", "Lower Deep", "Gloomy Crevice" }
    },
    Titanium = {
        PriceMultiply = 9,
        Chance = 0,
        Display = "Titanium",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(96, 104, 118), Color3.fromRGB(198, 214, 232))
    },
    Scalded = {
        PriceMultiply = 9,
        Chance = 0,
        Display = "Scalded",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(227, 227, 227), Color3.fromRGB(154, 154, 154))
    },
    Monstrous = {
        PriceMultiply = 9,
        Chance = 0,
        Display = "Monstrous",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(57, 55, 70), Color3.fromRGB(71, 70, 88))
    },
    Refracted = {
        PriceMultiply = 7,
        Chance = 0,
        Display = "Refracted",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(90, 208, 253)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(246, 170, 183)) })
    },
    Prism = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Prism",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = true,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(80, 194, 255), Color3.fromRGB(67, 255, 120))
    },
    Skeletal = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Skeletal",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = true,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(255, 192, 83), Color3.fromRGB(255, 240, 193))
    },
    Refined = {
        PriceMultiply = 6.5,
        Chance = 0,
        Display = "Refined",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(255, 85, 0)
    },
    Relic = {
        PriceMultiply = 6.5,
        Chance = 0,
        Display = "Relic",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(165, 155, 117)
    },
    Crystalline = {
        PriceMultiply = 7.1,
        Chance = 0,
        Display = "Crystalline",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
            ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 26, 255)),
            ColorSequenceKeypoint.new(0.66, Color3.fromRGB(255, 0, 242)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 8))
        })
    },
    Frostbite = {
        PriceMultiply = 6,
        Chance = 0,
        Display = "Frostbite",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(164, 228, 255)
    },
    Counterfeit = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Counterfeit",
        Priority = 2,
        Untradeable = true,
        Unremovable = true,
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(109, 109, 109)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(44, 44, 44)), ColorSequenceKeypoint.new(1, Color3.fromRGB(109, 109, 109)) })
    },
    Contraband = {
        PriceMultiply = 9.088,
        Chance = 0,
        Display = "Contraband",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(182, 41, 41)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(61, 0, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(182, 41, 41)) })
    },
    Liberty = {
        PriceMultiply = 7.42026,
        Chance = 0.5,
        Display = "Liberty",
        Obtainable = false,
        Limited = true,
        DateRange = {
            Start = DateTime.fromUniversalTime(2026, 7, 4),
            End = DateTime.fromUniversalTime(2026, 7, 6, 16)
        },
        Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 255)) })
    },
    Marrow = {
        PriceMultiply = 4,
        Chance = 0,
        Display = "Marrow",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(153, 114, 76)
    },
    Dune = {
        PriceMultiply = 6,
        Chance = 0,
        Display = "Dune",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(193, 162, 119)
    },
    Terro = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Terro",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(67, 42, 48), Color3.fromRGB(48, 30, 34))
    },
    Photical = {
        PriceMultiply = 10,
        Chance = 0,
        Display = "Photical",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(255, 0, 123), Color3.fromRGB(255, 0, 166))
    },
    Tanned = {
        PriceMultiply = 1.5,
        Chance = 0,
        Display = "Tanned",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = Color3.fromRGB(162, 74, 52)
    },
    ["Super-Tanned"] = {
        PriceMultiply = 10,
        Chance = 0,
        Display = "Super-Tanned",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = Color3.fromRGB(62, 18, 12)
    },
    Beached = {
        PriceMultiply = 6,
        Chance = 0,
        Display = "Beached",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = Color3.fromRGB(255, 204, 123)
    },
    Tropical = {
        PriceMultiply = 7,
        Chance = 0,
        Display = "Tropical",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(90, 220, 60), Color3.fromRGB(83, 203, 255))
    },
    Paradise = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Paradise",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(255, 142, 90), Color3.fromRGB(255, 137, 194))
    },
    Splashed = {
        PriceMultiply = 2.5,
        Chance = 0,
        Display = "Splashed",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = Color3.fromRGB(116, 201, 255)
    },
    Tiki = {
        PriceMultiply = 4,
        Chance = 0,
        Display = "Tiki",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = Color3.fromRGB(196, 119, 56)
    },
    Creamsicle = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Creamsicle",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = Color3.fromRGB(255, 170, 92)
    },
    Floatie = {
        PriceMultiply = 3,
        Chance = 0,
        Display = "Floatie",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = Color3.fromRGB(255, 138, 196)
    },
    ["Beach Ball"] = {
        PriceMultiply = 3.5,
        Chance = 0,
        Display = "Beach Ball",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = Color3.fromRGB(255, 89, 94)
    },
    Starshell = {
        PriceMultiply = 7,
        Chance = 0,
        Display = "Starshell",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = Color3.fromRGB(255, 224, 130)
    },
    ["Sand Castled"] = {
        PriceMultiply = 6,
        Chance = 0,
        Display = "Sand Castled",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = Color3.fromRGB(232, 201, 152)
    },
    Lemon = {
        PriceMultiply = 6.5,
        Chance = 0,
        Priority = 1,
        Display = "Lemon",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(235, 255, 147), Color3.fromRGB(255, 233, 111))
    },
    Lime = {
        PriceMultiply = 6.5,
        Chance = 0,
        Priority = 1,
        Display = "Lime",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = Color3.fromRGB(168, 255, 97)
    },
    Strawberry = {
        PriceMultiply = 6.5,
        Chance = 0,
        Priority = 1,
        Display = "Strawberry",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(255, 111, 149), Color3.fromRGB(255, 108, 110))
    },
    Banana = {
        PriceMultiply = 6.5,
        Chance = 0,
        Priority = 1,
        Display = "Banana",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = Color3.fromRGB(255, 248, 169)
    },
    Blueberry = {
        PriceMultiply = 6.5,
        Chance = 0,
        Priority = 1,
        Display = "Blueberry",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = Color3.fromRGB(74, 116, 255)
    },
    Lavender = {
        PriceMultiply = 6.5,
        Chance = 0,
        Priority = 1,
        Display = "Lavender",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = Color3.fromRGB(216, 188, 255)
    },
    Sour = {
        PriceMultiply = 8,
        Chance = 0,
        Priority = 1,
        Display = "Sour",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(155, 255, 73), Color3.fromRGB(255, 249, 71))
    },
    Rhythmic = {
        PriceMultiply = 11,
        Chance = 0,
        Priority = 1,
        Display = "Rhythmic",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Untradeable = false,
        Color = ColorSequence.new(Color3.fromRGB(56, 255, 182), Color3.fromRGB(0, 0, 0))
    },
    Soultorn = {
        PriceMultiply = 8.5,
        Chance = 0,
        Priority = 1,
        Display = "Soultorn",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Untradeable = false,
        Color = ColorSequence.new(Color3.fromRGB(56, 255, 182), Color3.fromRGB(67, 255, 130))
    },
    Flowed = {
        PriceMultiply = 6.5,
        Chance = 0,
        Priority = 0,
        Display = "Flowed",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Untradeable = false,
        Color = ColorSequence.new(Color3.fromRGB(56, 255, 182), Color3.fromRGB(9, 33, 17))
    },
    Blackwater = {
        PriceMultiply = 4.5,
        Chance = 0,
        Display = "Blackwater",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(22, 33, 38), Color3.fromRGB(38, 71, 71))
    },
    Barnacle = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Barnacle",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = true,
        Color = Color3.fromRGB(132, 132, 0)
    },
    Shady = {
        PriceMultiply = 2,
        Chance = 0,
        Display = "Shady",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(82, 82, 82), Color3.fromRGB(150, 150, 150))
    },
    Sludged = {
        PriceMultiply = 2.5,
        Chance = 0,
        Priority = -1,
        Display = "Sludged",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = Color3.fromRGB(94, 49, 116)
    },
    Sovereign = {
        PriceMultiply = 8.5,
        Chance = 0,
        Display = "Sovereign",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = Color3.fromRGB(173, 166, 255)
    },
    Sanctified = {
        PriceMultiply = 9.5,
        Chance = 0,
        Display = "Sanctified",
        Obtainable = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(255, 206, 128), Color3.fromRGB(222, 208, 193))
    },
    Veilfallen = {
        PriceMultiply = 7,
        Chance = 0,
        Display = "Veilfallen",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(69, 68, 94)
    },
    Clockwork = {
        PriceMultiply = 5.25,
        Chance = 0,
        Display = "Clockwork",
        Obtainable = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(255, 206, 128), Color3.fromRGB(112, 90, 56))
    },
    Acidic = {
        PriceMultiply = 7.3,
        Chance = 0,
        Display = "Acidic",
        Obtainable = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(0, 231, 8), Color3.fromRGB(106, 0, 255))
    },
    Fury = {
        PriceMultiply = 11.7,
        Chance = 0,
        Display = "Fury",
        Obtainable = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(255, 231, 66), Color3.fromRGB(254, 158, 35), Color3.fromRGB(254, 105, 47))
    },
    Energy = {
        PriceMultiply = 10.85,
        Chance = 0,
        Display = "Energy",
        Obtainable = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(193, 255, 219), Color3.fromRGB(0, 242, 170), Color3.fromRGB(0, 160, 170))
    },
    Nebula = {
        PriceMultiply = 9.2,
        Chance = 0,
        Display = "Nebula",
        Obtainable = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(254, 190, 243), Color3.fromRGB(255, 126, 228), Color3.fromRGB(191, 30, 209))
    },
    Cosmos = {
        PriceMultiply = 8.55,
        Chance = 0,
        Display = "Cosmos",
        Obtainable = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(104, 214, 255), Color3.fromRGB(0, 174, 238), Color3.fromRGB(0, 107, 185))
    },
    Departed = {
        PriceMultiply = 10.5,
        Chance = 0,
        Display = "Departed",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(25, 25, 25)
    },
    Fluttering = {
        PriceMultiply = 7,
        Chance = 0,
        Display = "Fluttering",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(216, 216, 216)
    },
    Prismatic = {
        PriceMultiply = 6.5,
        Chance = 0,
        Display = "Prismatic",
        Obtainable = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(160, 135, 203), Color3.fromRGB(210, 165, 255))
    },
    Paranormal = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Paranormal",
        Obtainable = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(124, 147, 202), Color3.fromRGB(146, 170, 202))
    },
    Olympian = {
        PriceMultiply = 10,
        Chance = 0,
        Priority = 2,
        Display = "Olympian",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(80, 67, 59), Color3.fromRGB(33, 31, 30))
    },
    Sunlit = {
        PriceMultiply = 6.8,
        Chance = 0,
        Display = "Sunlit",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(255, 157, 58), Color3.fromRGB(255, 207, 61))
    },
    ["Poseidon\'s Blessing"] = {
        PriceMultiply = 9.55,
        Chance = 0,
        Priority = 2,
        Display = "Poseidon\'s Blessing",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(62, 229, 255), Color3.fromRGB(42, 138, 255))
    },
    ["Zeus\'s Storm"] = {
        PriceMultiply = 9.3,
        Chance = 0,
        Display = "Zeus\'s Storm",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 238, 51)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 189)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 238, 51)) })
    },
    Cragged = {
        PriceMultiply = 7,
        Chance = 0,
        Priority = 0,
        Display = "Cragged",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(56, 49, 67), Color3.fromRGB(42, 50, 67))
    },
    Gravitas = {
        PriceMultiply = 9.81,
        Chance = 0,
        Display = "Gravitas",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(191, 146, 255)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(217, 111, 167)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 162, 48)) })
    },
    ["Hades\' Curse"] = {
        PriceMultiply = 11.1,
        Chance = 0,
        Priority = 2,
        Display = "Hades\' Curse",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(108, 255, 206), Color3.fromRGB(112, 255, 124))
    },
    Soultouched = {
        PriceMultiply = 7.5,
        Chance = 0,
        Display = "Soultouched",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(167, 255, 214)
    },
    ["Bellona\'s Fury"] = {
        PriceMultiply = 7,
        Chance = 0,
        Display = "Bellona\'s Fury",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(255, 117, 82)
    },
    ["Tidal Surge"] = {
        PriceMultiply = 8.5,
        Chance = 0,
        Display = "Tidal Surge",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = true,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(82, 180, 255)
    },
    Marshmallow = {
        PriceMultiply = 2.5,
        Chance = 0,
        Display = "Marshmallow",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(251, 246, 255)
    },
    Bunny = {
        PriceMultiply = 4.5,
        Chance = 0,
        Display = "Bunny",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(247, 228, 255)
    },
    Aether = {
        PriceMultiply = 15,
        Chance = 0.1,
        BlockAppraisal = true,
        Priority = 2,
        Display = "Aether",
        RoamingSpeedMultiplier = 4,
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(137, 218, 255), Color3.fromRGB(255, 255, 255))
    },
    Rotting = {
        PriceMultiply = 0.88,
        Chance = 0,
        Priority = 2,
        Display = "Rotting",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(86, 79, 55)
    },
    ["Forest Spirit"] = {
        PriceMultiply = 7.5,
        Chance = 0,
        Display = "Forest Spirit",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(74, 208, 64)
    },
    ["Lucky Gold"] = {
        PriceMultiply = 6.14,
        Chance = 0,
        Priority = 1,
        Display = "Lucky Gold",
        Obtainable = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(159, 255, 57), Color3.fromRGB(255, 222, 124))
    },
    Floral = {
        PriceMultiply = 8.4,
        Chance = 2,
        BlockAppraisal = true,
        Display = "Floral",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        SpecificZones = { "Living Garden" },
        Color = Color3.fromRGB(242, 190, 255)
    },
    Decayed = {
        PriceMultiply = 0.45,
        Chance = 5,
        Display = "Decayed",
        RoamingSpeedMultiplier = 0.25,
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        SpecificZones = { "Toxic Grove" },
        Color = Color3.fromRGB(63, 59, 75)
    },
    Honey = {
        PriceMultiply = 2.6,
        Chance = 3,
        Display = "Honey",
        RoamingSpeedMultiplier = 0.25,
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        SpecificZones = { "Nectar Den" },
        Color = Color3.fromRGB(255, 180, 51)
    },
    Vitalic = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Vitalic",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(116, 255, 160)
    },
    Tainted = {
        PriceMultiply = 6.5,
        Chance = 0,
        Display = "Tainted",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(168, 92, 255)
    },
    Dreaming = {
        PriceMultiply = 3.5,
        Chance = 0,
        Display = "Dreaming",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(222, 193, 255)
    },
    Bliss = {
        PriceMultiply = 7,
        Chance = 0,
        Display = "Bliss",
        Obtainable = false,
        Limited = true,
        Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(216, 160, 249)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(151, 249, 249)), ColorSequenceKeypoint.new(1, Color3.fromRGB(141, 255, 135)) })
    },
    Verdant = {
        PriceMultiply = 9.5,
        Chance = 0,
        Display = "Verdant",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(73, 221, 10)), ColorSequenceKeypoint.new(1, Color3.fromRGB(175, 223, 0)) })
    },
    Blossomed = {
        PriceMultiply = 4.6,
        Chance = 0,
        Display = "Blossomed",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(160, 255, 35)
    },
    Noxious = {
        PriceMultiply = 0.3,
        Chance = 0,
        Priority = 3,
        Display = "Noxious",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(148, 37, 217)
    },
    Plagued = {
        PriceMultiply = 10,
        Chance = 0,
        Display = "Plagued",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(32, 27, 52)), ColorSequenceKeypoint.new(1, Color3.fromRGB(14, 13, 20)) })
    },
    Amped = {
        PriceMultiply = 4,
        Chance = 0,
        Display = "Amped",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(238, 238, 238)
    },
    Obsidian = {
        PriceMultiply = 8.3,
        Chance = 0,
        Display = "Obsidian",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(50, 28, 59)
    },
    Igneous = {
        PriceMultiply = 8.65,
        Chance = 0,
        Display = "Igneous",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 102, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 199, 56)) })
    },
    Solar = {
        PriceMultiply = 5.3,
        Chance = 0,
        Display = "Solar",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(255, 225, 117)
    },
    Sweet = {
        PriceMultiply = 7,
        Chance = 0,
        Display = "Sweet",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 176, 225)
    },
    Lovely = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Lovely",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(241, 190, 255)
    },
    Candy = {
        PriceMultiply = 2,
        Chance = 0,
        Display = "Candy",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 184, 185)
    },
    Rose = {
        PriceMultiply = 4.5,
        Chance = 0,
        Priority = 1,
        Display = "Rose",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(179, 42, 42)
    },
    Embraced = {
        PriceMultiply = 9.1,
        Chance = 0,
        Display = "Embraced",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 227, 198)
    },
    Lovestruck = {
        PriceMultiply = 4,
        Chance = 0,
        Display = "Lovestruck",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(234, 0, 255)
    },
    Heartburst = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Heartburst",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 0, 174)
    },
    Ascended = {
        PriceMultiply = 12,
        Chance = 0,
        Priority = 2,
        Display = "Ascended",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(203, 230, 255)
    },
    Brined = {
        PriceMultiply = 3.5,
        Chance = 0,
        Display = "Brined",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(0, 255, 157)
    },
    Rusty = {
        PriceMultiply = 0.7,
        Chance = 0,
        Priority = 2,
        Display = "Rusty",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(139, 90, 43)
    },
    Coral = {
        PriceMultiply = 1.8,
        Chance = 5,
        Display = "Coral",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = true,
        ObtainableCages = false,
        Limited = false,
        SpecificZones = { "Coral Bastion" },
        Color = Color3.fromRGB(222, 155, 255)
    },
    Mourned = {
        PriceMultiply = 7.5,
        Chance = 1,
        Display = "Mourned",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        SpecificZones = { "Tidefall" },
        Color = Color3.fromRGB(10, 20, 39)
    },
    ["Ocean\'s Ruin"] = {
        PriceMultiply = 10.2,
        Chance = 0,
        Display = "Ocean\'s Ruin",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(39, 13, 13)
    },
    Forgotten = {
        PriceMultiply = 2,
        Chance = 0,
        Display = "Forgotten",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(4, 3, 3)
    },
    Husk = {
        PriceMultiply = 0.14,
        Chance = 0,
        Priority = 2,
        Display = "Husk",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(149, 133, 115)
    },
    Requies = {
        PriceMultiply = 9.8,
        Chance = 0,
        Priority = 2,
        Display = "Requies",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(40, 207, 137)
    },
    Fallen = {
        PriceMultiply = 6,
        Chance = 2,
        Display = "Fallen",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(98, 96, 86)
    },
    Withered = {
        PriceMultiply = 9.5,
        Chance = 0,
        Display = "Withered",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = true,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(43, 33, 30)
    },
    Royal = {
        PriceMultiply = 9.4,
        Chance = 0,
        Display = "Royal",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = true,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(243, 188, 93)
    },
    ["New Years"] = {
        PriceMultiply = 2.6,
        Chance = 0,
        Display = "New Years",
        Priority = 1,
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 251, 149),
        SpecificZones = { "New Years" }
    },
    Astraeus = {
        PriceMultiply = 9.6,
        Chance = 0,
        Display = "Astraeus",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 170, 0)
    },
    Noctic = {
        PriceMultiply = 8.5,
        Chance = 0,
        Priority = 4,
        Display = "Noctic",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 255, 255)
    },
    Corvid = {
        PriceMultiply = 5,
        Chance = 0,
        Priority = 4,
        Display = "Corvid",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(176, 97, 255)
    },
    Frostnova = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Frostnova",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(106, 151, 255)
    },
    Merry = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Merry",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(22, 131, 26)
    },
    ["Jingle Bell"] = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Jingle Bell",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 217, 102)
    },
    Boreal = {
        PriceMultiply = 4,
        Chance = 2,
        Display = "Boreal",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(54, 46, 39),
        SpecificZones = { "Boreal Pines", "Boreal Pines - Ice Fishing", "Boreal Pines - Cave", "Boreal Pines - Peak" }
    },
    Peppermint = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Peppermint",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 73, 73)
    },
    Gingerbread = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Gingerbread",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(140, 70, 43)
    },
    Frostbitten = {
        PriceMultiply = 9,
        Chance = 0,
        Display = "Frostbitten",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(153, 184, 255)
    },
    Permafrost = {
        PriceMultiply = 9.5,
        Chance = 0,
        Display = "Permafrost",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(64, 96, 131)
    },
    Santa = {
        PriceMultiply = 8.5,
        Chance = 0,
        Display = "Santa",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(172, 4, 4)
    },
    Honked = {
        PriceMultiply = 2,
        Chance = 0,
        Priority = 1,
        Display = "Honked",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 255, 0)
    },
    Gravy = {
        PriceMultiply = 6,
        Chance = 0,
        Display = "Gravy",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(85, 49, 31)
    },
    Pancake = {
        PriceMultiply = 0,
        Chance = 0,
        Priority = 1,
        Display = "Pancake",
        Obtainable = false,
        Color = Color3.fromRGB(241, 255, 222)
    },
    Putrid = {
        PriceMultiply = -0.5,
        Chance = 0,
        Priority = 4,
        Display = "Putrid",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(67, 88, 49)
    },
    Magical = {
        PriceMultiply = 7.2,
        Chance = 0,
        Display = "Magical",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(195, 14, 255)
    },
    Gleebous = {
        PriceMultiply = 8,
        Chance = 50,
        BlockAppraisal = true,
        Display = "Gleebous",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        SpecificZones = { "Roslit Bay Alien" },
        Color = Color3.fromRGB(169, 255, 98)
    },
    Distraught = {
        PriceMultiply = 8.5,
        Chance = 0,
        Display = "Distraught",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(15, 15, 15)
    },
    Lucid = {
        PriceMultiply = 3.5,
        Chance = 0,
        Display = "Lucid",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(161, 124, 255)
    },
    Phantom = {
        PriceMultiply = 4.5,
        Chance = 0,
        Display = "Phantom",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(26, 31, 38)
    },
    Fabulous = {
        PriceMultiply = 9.6,
        Chance = 0,
        Display = "Fabulous",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(223, 149, 255)
    },
    Unlucky = {
        PriceMultiply = 0.5,
        Chance = 0,
        Display = "Unlucky",
        Priority = 2,
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(34, 34, 34)
    },
    Jackpot = {
        PriceMultiply = 7.77,
        Chance = 0,
        Display = "Jackpot",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(75, 255, 111)
    },
    Frightful = {
        PriceMultiply = 6,
        Chance = 0,
        Display = "Frightful",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(123, 104, 165)
    },
    Spooky = {
        PriceMultiply = 6,
        Chance = 0,
        Display = "Spooky",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(220, 151, 81)
    },
    Eerie = {
        PriceMultiply = 6,
        Chance = 0,
        Display = "Eerie",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(84, 211, 114)
    },
    Necrotic = {
        PriceMultiply = 7.4,
        Chance = 0,
        Display = "Necrotic",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(80, 56, 56)
    },
    Batty = {
        PriceMultiply = 2.5,
        Chance = 0,
        Priority = 3,
        Display = "Batty",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(33, 23, 23)
    },
    Wicked = {
        PriceMultiply = 7.7,
        Chance = 0,
        Display = "Wicked",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 200, 0)
    },
    ["Jack\'s Curse"] = {
        PriceMultiply = 8.5,
        Chance = 0,
        Display = "Jack\'s Curse",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(194, 74, 33)
    },
    Nightmare = {
        PriceMultiply = 8.8,
        Chance = 0,
        Display = "Nightmare",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(29, 73, 193)
    },
    Breezed = {
        PriceMultiply = 8.6,
        Chance = 0,
        Display = "Breezed",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(247, 255, 164)
    },
    Terra = {
        PriceMultiply = 8.6,
        Chance = 0,
        Display = "Terra",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(163, 129, 74)
    },
    Ignited = {
        PriceMultiply = 8.6,
        Chance = 0,
        Display = "Ignited",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(255, 115, 39)
    },
    Stormy = {
        PriceMultiply = 8.6,
        Chance = 0,
        Display = "Stormy",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(94, 148, 255)
    },
    ["Upside-Down"] = {
        PriceMultiply = 1,
        Chance = 0,
        Display = "Upside-Down",
        Priority = 2,
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(207, 195, 178)
    },
    Part = {
        PriceMultiply = 0.01,
        Chance = 0,
        Display = "Part",
        Priority = 2,
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(207, 207, 207)
    },
    ["Golden Part"] = {
        PriceMultiply = 11,
        Chance = 0,
        Display = "Golden Part",
        Priority = 2,
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 189, 34)
    },
    Birthday = {
        PriceMultiply = 8,
        Chance = 0,
        Priority = 1,
        Display = "Birthday",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(218, 188, 145),
        DateRange = {
            Start = DateTime.fromUniversalTime(2025, 10, 5, 18, 0, 0),
            End = DateTime.fromUniversalTime(2025, 10, 6, 18, 0, 0)
        }
    },
    ["Birthday Candle"] = {
        PriceMultiply = 8,
        Chance = 0,
        Priority = 1,
        Display = "Birthday Candle",
        Obtainable = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(255, 236, 179), Color3.fromRGB(255, 170, 200))
    },
    Poisoned = {
        PriceMultiply = 0.9,
        Priority = 2,
        Chance = 5,
        Display = "Poisoned",
        RoamingSpeedMultiplier = 0.25,
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        SpecificZones = { "Lost Jungle", "MossjawHunt" },
        Color = Color3.fromRGB(103, 73, 145)
    },
    Vined = {
        PriceMultiply = 3.5,
        Chance = 4,
        Display = "Vined",
        RoamingSpeedMultiplier = 0.5,
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        SpecificZones = { "Lost Jungle", "MossjawHunt" },
        Color = Color3.fromRGB(120, 206, 122)
    },
    Shrouded = {
        PriceMultiply = 7,
        Chance = 1,
        Display = "Shrouded",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        SpecificZones = { "Lost Jungle", "MossjawHunt" },
        Color = Color3.fromRGB(54, 67, 53)
    },
    Mossy = {
        PriceMultiply = 8.7,
        Chance = 0,
        Display = "Mossy",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(93, 135, 107)
    },
    Toxic = {
        PriceMultiply = 6,
        Chance = 0,
        Priority = 0,
        Display = "Toxic",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(98, 36, 197)
    },
    Glowy = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Glowy",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(254, 255, 197)
    },
    Dirty = {
        PriceMultiply = 0.3,
        Chance = 0,
        Display = "Dirty",
        Priority = 2,
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(89, 71, 58)
    },
    Stone = {
        PriceMultiply = 1.1,
        Chance = 0,
        Display = "Stone",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(89, 89, 89)
    },
    Mastered = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Mastered",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(84, 101, 255)
    },
    Luminescent = {
        PriceMultiply = 6.5,
        Chance = 0,
        Display = "Luminescent",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(82, 226, 255)
    },
    Crimson = {
        PriceMultiply = 4,
        Chance = 3,
        Display = "Crimson",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        SpecificZones = { "Crimson Cavern", "Colossal Ancient Dragon" },
        Color = Color3.fromRGB(145, 34, 34)
    },
    Crimsonwrath = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Crimsonwrath",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(208, 19, 19)
    },
    Exploded = {
        PriceMultiply = 0.1,
        Chance = 0,
        Display = "Exploded",
        Priority = 2,
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(55, 62, 93)
    },
    Galaxy = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Galaxy",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(68, 72, 145)
    },
    Atomic = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Atomic",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(255, 255, 0)
    },
    Alien = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Alien",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(0, 255, 30)
    },
    Fragmented = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Fragmented",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(73, 255, 210)
    },
    Mayhem = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Mayhem",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(197, 169, 169)
    },
    Madness = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Madness",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(134, 132, 132)
    },
    SixSeven = {
        PriceMultiply = 0.67,
        Chance = 0,
        Display = "67",
        Priority = 2,
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(116, 106, 54)
    },
    Tryhard = {
        PriceMultiply = 10,
        Chance = 0,
        Display = "Tryhard",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(216, 0, 0)
    },
    Darkness = {
        PriceMultiply = 9.4,
        Chance = 0,
        Display = "Darkness",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(48, 48, 37)
    },
    Light = {
        PriceMultiply = 7.2,
        Chance = 0,
        Display = "Light",
        Obtainable = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(255, 255, 255), Color3.fromRGB(255, 251, 220))
    },
    Mango = {
        PriceMultiply = 7,
        Chance = 0,
        Display = "Mango",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 184, 69)
    },
    Oblivion = {
        PriceMultiply = 8.5,
        Chance = 0,
        Priority = 1,
        Display = "Oblivion",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 82, 47)
    },
    Summer = {
        PriceMultiply = 6.2,
        Chance = 0,
        Display = "Summer",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 235, 123)
    },
    Popsicle = {
        PriceMultiply = 8.16,
        Chance = 0,
        Display = "Popsicle",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(0, 200, 255)
    },
    Beachy = {
        PriceMultiply = 2,
        Chance = 0,
        Priority = 1,
        Display = "Beachy",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 217, 157)
    },
    Nova = {
        PriceMultiply = 6,
        Chance = 0,
        Display = "Nova",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(147, 120, 255)
    },
    ["Nico\'s Nyantics"] = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Nico\'s Nyantics",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(235, 184, 255)
    },
    Skrunkly = {
        PriceMultiply = 2.5,
        Chance = 0,
        Display = "Skrunkly",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(176, 170, 147)
    },
    Nullified = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Nullified",
        Priority = 4,
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(94, 255, 66)
    },
    Galactic = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Galactic",
        Priority = 4,
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(207, 182, 106)
    },
    Spirit = {
        PriceMultiply = 5.2,
        Chance = 1.5,
        Display = "Spirit",
        RoamingSpeedMultiplier = 1.5,
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(98, 81, 149)
    },
    Lightened = {
        PriceMultiply = 1.01,
        Chance = 0,
        Priority = 1,
        Display = "Lightened",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 248, 175)
    },
    RainbowCluster = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Rainbow Cluster",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(255, 147, 194)
    },
    Mace = {
        PriceMultiply = 2,
        Chance = 0,
        Display = "Mace",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(158, 93, 255)
    },
    Tormented = {
        PriceMultiply = 6.66,
        Chance = 0,
        Display = "Tormented",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(34, 27, 27)
    },
    Surreal = {
        Chance = 0,
        Display = "Surreal",
        Obtainable = false,
        Limited = true,
        PriceMultiply = RngUtil.ServerSharedRandom("SurrealMultiply"):NextInteger(0, 8),
        Color = Color3.fromRGB(214, 214, 214)
    },
    Chilled = {
        PriceMultiply = 6,
        Chance = 0,
        Display = "Chilled",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(172, 232, 232)
    },
    Glacial = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Glacial",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(216, 255, 254)
    },
    Rooted = {
        PriceMultiply = 0.66,
        Chance = 0,
        Display = "Rooted",
        Priority = 2,
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(47, 58, 32)
    },
    Botanic = {
        PriceMultiply = 2.5,
        Chance = 0,
        Display = "Botanic",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(145, 255, 128)
    },
    Venomous = {
        PriceMultiply = 6.5,
        Chance = 0,
        Display = "Venomous",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(129, 90, 177)
    },
    Chlorowoken = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Chlorowoken",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(82, 255, 70)
    },
    Soulless = {
        PriceMultiply = 0.66,
        Chance = 0,
        Display = "Soulless",
        Priority = 2,
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(146, 83, 197)
    },
    Wisp = {
        PriceMultiply = 5.5,
        Chance = 0,
        Display = "Wisp",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(2, 230, 255)
    },
    Haunted = {
        PriceMultiply = 6,
        Chance = 0,
        Display = "Haunted",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(144, 88, 60)
    },
    Spectral = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Spectral",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(92, 59, 121)
    },
    Golden = {
        PriceMultiply = 2,
        Chance = 0,
        Display = "Golden",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(255, 234, 0)
    },
    Fortune = {
        PriceMultiply = 6,
        Chance = 0,
        Display = "Fortune",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 204, 0)
    },
    Lustrous = {
        PriceMultiply = 7,
        Chance = 0,
        Display = "Lustrous",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 232, 147)
    },
    Radiant = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Radiant",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = Color3.fromRGB(176, 174, 147)
    },
    ["Siren\'s Spite"] = {
        PriceMultiply = 6.66,
        Chance = 0,
        Display = "Siren\'s Spite",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(176, 0, 0)
    },
    Evil = {
        PriceMultiply = 8.5,
        Chance = 0,
        Display = "Evil",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(48, 0, 0)
    },
    Serene = {
        PriceMultiply = 8.5,
        Chance = 0,
        Display = "Serene",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(0, 255, 225)
    },
    Quiet = {
        PriceMultiply = 3,
        Chance = 0,
        Display = "Quiet",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(28, 56, 71)
    },
    Nocturnal_Night = {
        PriceMultiply = 9,
        Chance = 0,
        Display = "Nocturnal",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(20, 20, 20)
    },
    Nocturnal_Day = {
        PriceMultiply = 7,
        Chance = 0,
        Display = "Diurnal",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(122, 122, 122)
    },
    Flora = {
        PriceMultiply = 10,
        Chance = 0,
        Display = "Flora",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(218, 71, 255)
    },
    Infernal = {
        PriceMultiply = 10,
        Chance = 0,
        Display = "Infernal",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 44, 2)
    },
    Patriotic = {
        PriceMultiply = 7.4,
        Chance = 0,
        Display = "Patriotic",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(0, 0, 255)
    },
    Snowy = {
        PriceMultiply = 10,
        Chance = 0,
        Display = "Snowy",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(213, 232, 255)
    },
    Smurf = {
        PriceMultiply = 2,
        Chance = 0,
        Priority = 1,
        Display = "Smurf",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(0, 167, 239)
    },
    Puritas = {
        PriceMultiply = 8.7,
        Chance = 0,
        Display = "Puritas",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(172, 221, 239)
    },
    Sacratus = {
        PriceMultiply = 7,
        Chance = 0,
        Display = "Sacratus",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(107, 142, 255)
    },
    Levitas = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Levitas",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(181, 192, 255)
    },
    Gemstone = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Gemstone",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(167, 0, 239)
    },
    Oscar = {
        PriceMultiply = 6.4,
        Chance = 0,
        Display = "Oscar",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(171, 0, 26)
    },
    Carrot = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Carrot",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(255, 162, 0)
    },
    Umbra = {
        PriceMultiply = 9,
        Chance = 0,
        Display = "Umbra",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(232, 159, 0)
    },
    LEGO = {
        PriceMultiply = 3,
        Chance = 0,
        Priority = 1,
        Display = "Awesome",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 0, 0)
    },
    Brother = {
        PriceMultiply = 3,
        Chance = 0,
        Priority = 1,
        Display = "Brother",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(0, 251, 255)
    },
    Sanguine = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Sanguine",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(74, 8, 8)
    },
    Chaotic = {
        PriceMultiply = 6.2,
        Chance = 0,
        Display = "Chaotic",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(20, 19, 22)
    },
    Lost = {
        PriceMultiply = 4.5,
        Chance = 0,
        Priority = 1,
        Display = "Lost",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(160, 255, 131)
    },
    ["Moon-Kissed"] = {
        PriceMultiply = 4,
        Chance = 0,
        Display = "Moon-Kissed",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = Color3.fromRGB(125, 225, 255)
    },
    Ember = {
        PriceMultiply = 3,
        Chance = 0,
        Display = "Ember",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(255, 170, 0)
    },
    Cracked = {
        PriceMultiply = 4,
        Chance = 0,
        Display = "Cracked",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(36, 0, 54)
    },
    Emberflame = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Emberflame",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(255, 170, 0)
    },
    ["Cursed Touch"] = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Cursed Touch",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(0, 255, 0)
    },
    Bloom = {
        PriceMultiply = 6,
        Chance = 0,
        Display = "Bloom",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(85, 85, 127)
    },
    ["Mother Nature"] = {
        PriceMultiply = 3,
        Chance = 0,
        Display = "Mother Nature",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(170, 170, 255)
    },
    ["Green Leaf"] = {
        PriceMultiply = 3,
        Chance = 0,
        Display = "Green Leaf",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(85, 170, 0)
    },
    ["Brown Wood"] = {
        PriceMultiply = 3,
        Chance = 0,
        Display = "Brown Wood",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(143, 96, 57)
    },
    Oak = {
        PriceMultiply = 2.3,
        Chance = 0,
        Priority = 1,
        Display = "Oak",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(118, 83, 54)
    },
    Cement = {
        PriceMultiply = 1.5,
        Chance = 0,
        Priority = 2,
        Display = "Cement",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(156, 156, 156)
    },
    Female = {
        PriceMultiply = 1,
        Chance = 0,
        Display = "Female",
        Priority = 2,
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 0, 255)
    },
    Zora = {
        PriceMultiply = 1.25,
        Chance = 0,
        Priority = 1,
        Display = "Mission Specialist",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 85, 0)
    },
    Duncan = {
        PriceMultiply = 1.25,
        Chance = 0,
        Priority = 1,
        Display = "Fixer",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(0, 85, 255)
    },
    Henry = {
        PriceMultiply = 1.25,
        Chance = 0,
        Priority = 1,
        Display = "Paleontologist",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(170, 0, 0)
    },
    Cursed = {
        PriceMultiply = 4,
        Chance = 0,
        Display = "Cursed",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(102, 255, 138)
    },
    ["Ashen Fortune"] = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Ashen Fortune",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(255, 170, 0)
    },
    Prismize = {
        PriceMultiply = 6.5,
        Chance = 0,
        Display = "Prismize",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(41, 0, 62)
    },
    ["King’s Blessing"] = {
        PriceMultiply = 5.5,
        Chance = 0,
        Priority = 1,
        Display = "King\'s Blessing",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(255, 255, 127)
    },
    ["Tentacle Surge"] = {
        PriceMultiply = 7.8,
        Chance = 0,
        Display = "Tentacle Surge",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(170, 170, 255)
    },
    ["Electric Shock"] = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Electric Shock",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(138, 22, 221)
    },
    Charred = {
        PriceMultiply = 0.5,
        Chance = 0,
        Display = "Charred",
        Priority = 2,
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(76, 76, 76)
    },
    Crystalized = {
        PriceMultiply = 3.5,
        Chance = 0,
        Display = "Crystalized",
        RoamingSpeedMultiplier = 0.5,
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(255, 114, 20)
    },
    Heavenly = {
        PriceMultiply = 6,
        Chance = 0,
        Display = "Heavenly",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(255, 248, 197)
    },
    Sleet = {
        PriceMultiply = 2.4,
        Chance = 0,
        Display = "Sleet",
        RoamingSpeedMultiplier = 0.5,
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(67, 76, 106)
    },
    Blighted = {
        PriceMultiply = 3,
        Chance = 0,
        Display = "Blighted",
        RoamingSpeedMultiplier = 0.5,
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(106, 80, 207)
    },
    Albino = {
        PriceMultiply = 1.5,
        Chance = 30,
        Display = "Albino",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(252, 254, 255)
    },
    Darkened = {
        PriceMultiply = 1.5,
        Chance = 30,
        Display = "Darkened",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(58, 61, 62)
    },
    Electric = {
        PriceMultiply = 2.1,
        Chance = 15,
        Display = "Electric",
        RoamingSpeedMultiplier = 2,
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(255, 245, 99)
    },
    Glossy = {
        PriceMultiply = 1.6,
        Chance = 25,
        Display = "Glossy",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(146, 226, 255)
    },
    Midas = {
        PriceMultiply = 2.5,
        Chance = 3,
        Display = "Midas",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = true,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(255, 154, 71)
    },
    Silver = {
        PriceMultiply = 1.8,
        Chance = 15,
        Display = "Silver",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(206, 238, 255)
    },
    Translucent = {
        PriceMultiply = 1.3,
        Chance = 20,
        Display = "Translucent",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(135, 255, 191)
    },
    Negative = {
        PriceMultiply = 1.3,
        Chance = 30,
        Display = "Negative",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(117, 103, 226)
    },
    Mythical = {
        PriceMultiply = 5.5,
        Chance = 1,
        Display = "Mythical",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(255, 82, 148)
    },
    Frozen = {
        PriceMultiply = 1.5,
        Chance = 10,
        Display = "Frozen",
        RoamingSpeedMultiplier = 0,
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(131, 255, 230)
    },
    Atlantean = {
        PriceMultiply = 4,
        Chance = 0,
        Display = "Atlantean",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(34, 153, 149)
    },
    Mosaic = {
        PriceMultiply = 1.5,
        Chance = 10,
        Display = "Mosaic",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(251, 193, 255)
    },
    Aurora = {
        PriceMultiply = 6.5,
        Chance = 0,
        Display = "Aurora",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(78, 255, 217)
    },
    Nuclear = {
        PriceMultiply = 6,
        Chance = 0,
        Display = "Nuclear",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(0, 255, 0)
    },
    Hexed = {
        PriceMultiply = 3,
        Chance = 15,
        Display = "Hexed",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(166, 0, 0)
    },
    Sunken = {
        PriceMultiply = 6.3,
        Chance = 0,
        Display = "Sunken",
        Priority = 0,
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(23, 93, 255)
    },
    Greedy = {
        PriceMultiply = 5,
        Chance = 1.5,
        Display = "Greedy",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(255, 194, 38)
    },
    Tidal = {
        PriceMultiply = 7,
        Chance = 0,
        Display = "Tidal",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(47, 182, 255)
    },
    Lunar = {
        PriceMultiply = 2.5,
        Chance = 20,
        Display = "Lunar",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(189, 169, 255)
    },
    Abyssal = {
        PriceMultiply = 5.5,
        Chance = 5,
        Display = "Abyssal",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        SpecificZones = { "The Depths", "The Depths - Serpent" },
        Color = Color3.fromRGB(12, 15, 212)
    },
    Fungal = {
        PriceMultiply = 4,
        Chance = 0,
        Display = "Fungal",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(138, 255, 106)
    },
    Solarblaze = {
        PriceMultiply = 3.5,
        Chance = 0,
        Display = "Solarblaze",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(255, 106, 0)
    },
    Celestial = {
        PriceMultiply = 4,
        Chance = 0,
        Display = "Celestial",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(255, 226, 108)
    },
    Fossilized = {
        PriceMultiply = 3.3,
        Chance = 4,
        Display = "Fossilized",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(208, 181, 255)
    },
    Amber = {
        PriceMultiply = 1.2,
        Chance = 8,
        Display = "Amber",
        RoamingSpeedMultiplier = 0,
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        SpecificZones = { "Ancient Isle Ocean", "Ancient Isle Pond", "Ancient Isle Waterfall", "Ancient Archives", "Megalodon Default", "Megalodon Ancient" },
        Color = Color3.fromRGB(255, 116, 51)
    },
    Scorched = {
        PriceMultiply = 3,
        Chance = 9,
        Display = "Scorched",
        RoamingSpeedMultiplier = 0.5,
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = true,
        Limited = false,
        Color = Color3.fromRGB(71, 30, 17)
    },
    Spicy = {
        PriceMultiply = 8,
        Chance = 0,
        Display = "Spicy",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = Color3.fromRGB(71, 9, 9)
    },
    Purified = {
        PriceMultiply = 2.5,
        Chance = 0,
        Display = "Purified",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(110, 255, 120)
    },
    Revitalized = {
        PriceMultiply = 4,
        Chance = 0,
        Display = "Revitalized",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(164, 255, 170)
    },
    Seasonal = {
        PriceMultiply = 1.3,
        Chance = 0,
        Display = "Seasonal",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(225, 37, 37)
    },
    Aurous = {
        PriceMultiply = 1.5,
        Chance = 0,
        Display = "Aurous",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(115, 10, 10)
    },
    Aurelian = {
        PriceMultiply = 2,
        Chance = 0,
        Display = "Aurelian",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(144, 39, 7)
    },
    Studded = {
        PriceMultiply = 1.8,
        Chance = 0,
        Display = "Studded",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(163, 162, 165)
    },
    Aureate = {
        PriceMultiply = 2.5,
        Chance = 0,
        Display = "Aureate",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(140, 62, 7)
    },
    Aurulent = {
        PriceMultiply = 3,
        Chance = 0,
        Display = "Aurulent",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(162, 92, 6)
    },
    Aureolin = {
        PriceMultiply = 3.5,
        Chance = 0,
        Display = "Aureolin",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(220, 154, 1)
    },
    Sandstormy = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Sandstormy",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 219, 187)
    },
    Sandy = {
        PriceMultiply = 1.2,
        Chance = 0,
        Display = "Sandy",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(255, 195, 161)
    },
    Blessed = {
        PriceMultiply = 8.5,
        Chance = 0,
        Display = "Blessed",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(249, 255, 211)
    },
    Unsellable = {
        PriceMultiply = 0,
        Chance = 0,
        Display = "Unsellable",
        Priority = 5,
        Untradeable = true,
        Unremovable = true,
        Obtainable = false,
        Limited = false,
        Color = Color3.fromRGB(255, 76, 76)
    },
    Fabricated = {
        PriceMultiply = 1,
        Chance = 0,
        Display = "Fabricated",
        Priority = 5,
        Untradeable = true,
        Unremovable = true,
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 205, 205)
    },
    Subspace = {
        PriceMultiply = 6.4,
        Chance = 0,
        Display = "Subspace",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(255, 0, 200)
    },
    Anomalous = {
        PriceMultiply = 5.55,
        Chance = 0,
        Priority = 0,
        Display = "Anomalous",
        Obtainable = true,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(255, 43, 43)
    },
    Glyphed = {
        PriceMultiply = 5.2,
        Chance = 0,
        Display = "Glyphed",
        Priority = 1,
        Untradeable = true,
        BlockCatchMessage = true,
        Obtainable = false,
        Limited = false,
        Color = Color3.fromRGB(109, 135, 143)
    },
    Harmonized = {
        PriceMultiply = 4.2,
        Chance = 0,
        Display = "Harmonized",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(178, 202, 255), Color3.fromRGB(218, 175, 255))
    },
    Mesmerized = {
        PriceMultiply = 3.2,
        Chance = 0,
        Priority = 1,
        Display = "Mesmerized",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 230, 3)
    },
    Supersonic = {
        PriceMultiply = 8.01,
        Chance = 0,
        Display = "Supersonic",
        RoamingSpeedMultiplier = 10,
        Obtainable = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(255, 171, 171), Color3.fromRGB(255, 83, 83))
    },
    Bouka = {
        PriceMultiply = 8.01,
        Chance = 0,
        Priority = 1,
        Display = "Bouka",
        Obtainable = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(255, 240, 162), Color3.fromRGB(255, 225, 103))
    },
    Idol = {
        PriceMultiply = 8.01,
        Chance = 0,
        Priority = 1,
        Display = "Idol",
        Obtainable = false,
        Limited = true,
        Color = ColorSequence.new(Color3.fromRGB(62, 255, 216), Color3.fromRGB(64, 220, 255))
    },
    Sinister = {
        PriceMultiply = 2.9,
        Chance = 0,
        Priority = 1,
        Display = "Sinister",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(200, 88, 44)
    },
    Ghastly = {
        PriceMultiply = 3,
        Chance = 0,
        Priority = 1,
        Display = "Ghastly",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(97, 255, 94)
    },
    Jolly = {
        PriceMultiply = 2.2,
        Chance = 0,
        Priority = 1,
        Display = "Jolly",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(16, 94, 19)
    },
    Festive = {
        PriceMultiply = 2.4,
        Chance = 0,
        Priority = 1,
        Display = "Festive",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 124, 124)
    },
    Minty = {
        PriceMultiply = 3.2,
        Chance = 0,
        Priority = 1,
        Display = "Minty",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(128, 255, 185)
    },
    Firework = {
        PriceMultiply = 4,
        Chance = 0,
        Priority = 1,
        Display = "Firework",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(135, 126, 255)
    },
    Wrath = {
        PriceMultiply = 4.5,
        Chance = 0,
        Display = "Wrath",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(0, 170, 127)
    },
    Lightning = {
        PriceMultiply = 2,
        Chance = 0,
        Display = "Lightning",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(229, 183, 0)
    },
    Astral = {
        PriceMultiply = 3,
        Chance = 0,
        Display = "Astral",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(115, 0, 255)
    },
    Stardust = {
        PriceMultiply = 4,
        Chance = 0,
        Display = "Stardust",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(0, 34, 255)
    },
    Clover = {
        PriceMultiply = 4.5,
        Chance = 0,
        Priority = 1,
        Display = "Clover",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(123, 255, 0)
    },
    Blarney = {
        PriceMultiply = 4.5,
        Chance = 0,
        Priority = 1,
        Display = "Blarney",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(56, 159, 19)
    },
    Chocolate = {
        PriceMultiply = 2.5,
        Chance = 0,
        Priority = 1,
        Display = "Chocolate",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(108, 77, 65)
    },
    Doomsday = {
        PriceMultiply = 4,
        Chance = 0,
        Priority = 1,
        Display = "Doomsday",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 95, 0)
    },
    Easter = {
        PriceMultiply = 4,
        Chance = 0,
        Priority = 1,
        Display = "Easter",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(217, 183, 255)
    },
    ["Mila\'s Magic"] = {
        PriceMultiply = 0.5,
        Chance = 0,
        Display = "Charred",
        Untradeable = true,
        Obtainable = false,
        Limited = false,
        Color = Color3.fromRGB(76, 76, 76)
    },
    Red = {
        PriceMultiply = 1,
        Chance = 0,
        Display = "Red",
        Priority = 2,
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 52, 66)
    },
    Green = {
        PriceMultiply = 1,
        Chance = 0,
        Display = "Green",
        Priority = 2,
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(92, 255, 106)
    },
    Blue = {
        PriceMultiply = 1,
        Chance = 0,
        Display = "Blue",
        Priority = 2,
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(71, 169, 255)
    },
    Pink = {
        PriceMultiply = 1,
        Chance = 0,
        Display = "Pink",
        Priority = 2,
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 103, 252)
    },
    Yellow = {
        PriceMultiply = 1,
        Chance = 0,
        Display = "Yellow",
        Priority = 2,
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 231, 96)
    },
    Bubblegum = {
        PriceMultiply = 4,
        Chance = 0,
        Display = "Bubblegum",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 99, 208)
    },
    Lumpy = {
        PriceMultiply = 4,
        Chance = 0,
        Display = "Lumpy",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(160, 105, 255)
    },
    Rockstar = {
        PriceMultiply = 4,
        Chance = 0,
        Display = "Rockstar",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(188, 35, 35)
    },
    ["Colossal Ink"] = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Colossal Ink",
        Priority = 4,
        CommerceMutation = true,
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(221, 241, 255)
    },
    Neon = {
        PriceMultiply = 1,
        Chance = 0,
        Display = "Neon",
        Priority = 4,
        CommerceMutation = true,
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 229, 126)
    },
    Lobster = {
        PriceMultiply = 5,
        Chance = 0,
        Priority = 1,
        Display = "Lobster",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 60, 42)
    },
    BlueMoon = {
        PriceMultiply = 4,
        Chance = 0,
        Display = "Blue Moon",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(78, 149, 255)
    },
    Rainbow = {
        PriceMultiply = 6,
        Chance = 0,
        Display = "Rainbow",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 158, 234)
    },
    ["Bellona\'s Infliction"] = {
        PriceMultiply = 3,
        Chance = 0,
        Display = "Bellona\'s Infliction",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(200, 50, 50)
    },
    ["Apollo\'s Infliction"] = {
        PriceMultiply = 3.2,
        Chance = 0,
        Display = "Apollo\'s Infliction",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 200, 50)
    },
    ["Poseidon\'s Infliction"] = {
        PriceMultiply = 3.5,
        Chance = 0,
        Display = "Poseidon\'s Infliction",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(50, 120, 220)
    },
    ["Zeus\'s Infliction"] = {
        PriceMultiply = 3.8,
        Chance = 0,
        Display = "Zeus\'s Infliction",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(255, 255, 100)
    },
    ["Hades\' Infliction"] = {
        PriceMultiply = 4,
        Chance = 0,
        Display = "Hades\' Infliction",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(100, 40, 150)
    },
    ["Olympian Infliction"] = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Olympian Infliction",
        Obtainable = false,
        Limited = true,
        Color = Color3.fromRGB(220, 200, 255)
    },
    ["Kaito\'s Blessing"] = {
        PriceMultiply = 2.8,
        Chance = 0,
        Display = "Kaito\'s Blessing",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = true,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(214, 89, 66)
    },
    Gusty = {
        PriceMultiply = 7.5,
        Chance = 5,
        Display = "Gusty",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        SpecificZones = { "Skycrest" },
        Color = Color3.fromRGB(198, 233, 255)
    },
    Squalled = {
        PriceMultiply = 6,
        Chance = 0,
        Display = "Squalled",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = Color3.fromRGB(76, 106, 140)
    },
    Petrified = {
        PriceMultiply = 8,
        Chance = 3,
        Display = "Petrified",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        SpecificZones = { "Skycrest" },
        Color = Color3.fromRGB(140, 136, 128)
    },
    ["Idol\'s Spirit"] = {
        PriceMultiply = 5,
        Chance = 0,
        Display = "Idol\'s Spirit",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(169, 144, 230), Color3.fromRGB(255, 233, 148))
    },
    ["Abaia\'s Spite"] = {
        PriceMultiply = 10.5,
        Chance = 0,
        Display = "Abaia\'s Spite",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(64, 110, 63), Color3.fromRGB(172, 76, 28))
    },
    ["Fruit-Crowned"] = {
        PriceMultiply = 6.7,
        Chance = 0,
        Display = "Fruit-Crowned",
        Obtainable = false,
        ObtainableRods = false,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = true,
        Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 108, 128)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 214, 92)), ColorSequenceKeypoint.new(1, Color3.fromRGB(126, 217, 87)) })
    },
    Empyrean = {
        PriceMultiply = 9,
        Chance = 0,
        Display = "Empyrean",
        Obtainable = true,
        ObtainableRods = true,
        ObtainableSpears = false,
        ObtainableCages = false,
        Limited = false,
        Color = ColorSequence.new(Color3.fromRGB(115, 222, 255), Color3.fromRGB(196, 229, 255))
    }
};
local u2 = 1;
local u3 = 1;
local u4 = 1;
local u5 = 0;
game:GetService("RunService").Heartbeat:Connect(function(p6) -- Line: 4619
    -- upvalues: u5 (ref), u2 (ref), u3 (ref), u4 (ref)
    u5 = u5 + 1;
    u2 = math.sin(u5 * 0.025) / 6 + 0.8;
    u3 = math.sin(u5 * 0.025) / 2 + 0.5;
    u4 = math.sin(u5 * 0.025) / 4.5 + 0.5;
end);
local u7 = {};
local u8 = {};

if game:GetService("RunService"):IsServer() then
    Players.PlayerAdded:Connect(function(p9) -- Line: 4631
        -- upvalues: u7 (copy)
        local DoneLoading = p9:WaitForChild("DoneLoading", 30);

        if DoneLoading and DoneLoading.Value == false then
            DoneLoading.Changed:Wait();
        end;

        for i, v in u7 do
            if i and i.Parent then
                local v10, v11;

                if DoneLoading.Value then
                    v10 = v;
                    v11 = i;
                else
                    v10 = v;
                    v11 = i;

                    repeat
                        wait();
                    until DoneLoading.Value == true;
                end;

                game:GetService("ReplicatedStorage").events.fishMutation:FireClient(p9, v11, v10);
            end;
        end;
    end);
end;

local table_freeze_ret = table.freeze({
    Hitbox = true,
    Center = true,
    handle = true,
    RootPart = true,
    HumanoidRootPart = true
});

function u1.CanNaturalCatch(p12: table, p13: string, p14: string?) -- Line: 4662
    -- upvalues: u1 (copy), Cache (copy)
    local v15 = u1.Mutations[p13];

    if not v15 or v15.Chance <= 0 then
        return false;
    end;

    if v15.DateRange then
        local DateTime_now_ret = DateTime.now();

        if DateTime_now_ret.UnixTimestampMillis < v15.DateRange.Start.UnixTimestampMillis or DateTime_now_ret.UnixTimestampMillis > v15.DateRange.End.UnixTimestampMillis then
            return false;
        end;
    end;

    if p14 == "_appraisal_" then
        if v15.BlockAppraisal then
            return false;
        end;
    else
        if p13 == "Lunar" and Cache:Get("MoonlitMirage"):Get("Enabled") ~= true then
            return false;
        end;

        if p14 ~= "_wormhole_" and (v15.SpecificZones and not table.find(v15.SpecificZones, p14)) then
            return false;
        end;
    end;

    return true;
end;

local function quickColorPulse(p16: userdata, p17: number, p18: table?, p19: table?) -- Line: 4703
    p16:SetAttribute("PulseTime", p17);

    if p18 then
        for i, v in p18 do
            p16:SetAttribute(`PulseColor{i}`, v);
        end;
    end;

    if p19 then
        for i, v in p19 do
            p16:SetAttribute(`PulseTrans{i}`, v);
        end;
    end;

    p16:AddTag("ColorPulse");
end;

local function resizeMutationTemplate(p20: userdata, p21: vector, p22: number) -- Line: 4718
    local v23 = math.max(p21.X, p21.Y, p21.Z) / p22;

    for _, descendant in ipairs(p20:GetDescendants()) do
        if descendant:IsA("ParticleEmitter") then
            local table_create_ret = table.create(#descendant.Size.Keypoints);

            for i, v in ipairs(descendant.Size.Keypoints) do
                table_create_ret[i] = NumberSequenceKeypoint.new(v.Time, v.Value * v23, v.Envelope * v23);
            end;

            descendant.Size = NumberSequence.new(table_create_ret);
        end;
    end;
end;

function u1.MutateModel(p24: table, u25: userdata, p26: string, p27: any) -- Line: 4738
    -- upvalues: u1 (copy), ReplicatedStorage (copy), table_freeze_ret (copy), resizeMutationTemplate (copy), quickColorPulse (copy), u8 (copy), u4 (ref), fish (copy)
    if not u25 then
        return;
    end;

    local v28 = p27 and p27.Name or u25.Name;

    if u1.Mutations[p26] then
        local general = ReplicatedStorage:WaitForChild("resources"):WaitForChild("replicated"):WaitForChild("instances"):WaitForChild("general");

        if p26 == "Webbed" then
            local Color3_fromRGB_ret = Color3.fromRGB(225, 225, 230);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Material = Enum.Material.Fabric;
                    descendant.Color = descendant.Color:Lerp(Color3_fromRGB_ret, 0.6);
                end;
            end;
        elseif p26 == "Ashen Fortune" then
            Color3.fromRGB(65, 65, 65);
            local Color3_fromRGB_ret = Color3.fromRGB(255, 170, 0);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Material = Enum.Material.CrackedLava;
                    local v29 = { Color3_fromRGB_ret, descendant.Color };
                    descendant:SetAttribute("PulseTime", 1);
                    local v30;

                    if v29 then
                        v30 = descendant;

                        for i, v in v29 do
                            v30:SetAttribute(`PulseColor{i}`, v);
                        end;
                    else
                        v30 = descendant;
                    end;

                    v30:AddTag("ColorPulse");
                end;
            end;
        elseif p26 == "Prismize" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name])) then
                    local math_random_ret = math.random(1, 4);
                    local v31;

                    if math_random_ret == 1 then
                        v31 = Color3.fromRGB(92, 105, 134);
                    elseif math_random_ret == 2 then
                        v31 = Color3.fromRGB(129, 67, 231);
                    elseif math_random_ret == 3 then
                        v31 = Color3.fromRGB(126, 181, 231);
                    else
                        v31 = Color3.fromRGB(231, 58, 137);
                    end;

                    descendant.Transparency = 0.2;
                    descendant.Reflectance = 0.2;
                    descendant.Color = v31;
                    descendant.Material = Enum.Material.Glass;
                end;
            end;
        elseif p26 == "Crystalline" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name])) then
                    local math_random_ret = math.random(1, 4);
                    local v32;

                    if math_random_ret == 1 then
                        v32 = Color3.fromRGB(0, 0, 255);
                    elseif math_random_ret == 2 then
                        v32 = Color3.fromRGB(0, 255, 0);
                    elseif math_random_ret == 3 then
                        v32 = Color3.fromRGB(255, 0, 255);
                    else
                        v32 = Color3.fromRGB(255, 0, 0);
                    end;

                    descendant.Transparency = 0.5;
                    descendant.Reflectance = 0.3;
                    descendant.Color = v32;
                    descendant.Material = Enum.Material.Glass;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v33 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v34 = general:WaitForChild("crystallinetemplate"):Clone();
                v34.Size = v33;
                v34.weld.Part1 = v34;
                v34.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v34.Parent = u25;
            end;
        elseif p26 == "RainbowCluster" then
            local v35 = {
                Color3.fromRGB(255, 112, 112),
                Color3.fromRGB(255, 184, 112),
                Color3.fromRGB(255, 231, 112),
                Color3.fromRGB(193, 255, 112),
                Color3.fromRGB(112, 255, 136),
                Color3.fromRGB(112, 255, 203),
                Color3.fromRGB(112, 138, 255),
                Color3.fromRGB(148, 112, 255)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant:SetAttribute("PulseTime", 1);
                    local v36;

                    if v35 then
                        v36 = descendant;

                        for i, v in v35 do
                            v36:SetAttribute(`PulseColor{i}`, v);
                        end;
                    else
                        v36 = descendant;
                    end;

                    v36:AddTag("ColorPulse");
                    v36.Material = Enum.Material.Neon;
                    v36.Color = v35[1];
                end;
            end;
        elseif p26 == "Moon-Kissed" then
            local Color3_fromRGB_ret = Color3.fromRGB(148, 255, 255);
            local Color3_fromRGB_ret2 = Color3.fromRGB(73, 222, 255);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v37 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, _ = descendant.Color:ToHSV();
                    local v38, v39, v40 = (Random.new(v37):NextInteger(0, 1) == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret2):ToHSV();
                    local Color3_fromHSV = Color3.fromHSV;
                    local v41 = v39 * Random.new(v37):NextNumber(0.9, 1.1);
                    local math_clamp_ret = math.clamp(v41, 0, 1);
                    local v42 = v40 * Random.new(v37):NextNumber(0.95, 1.05);
                    descendant.Color = Color3_fromHSV(v38, math_clamp_ret, (math.clamp(v42, 0, 1)));
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v43 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v44 = general:WaitForChild("moonkissedtemplate"):Clone();
                v44.Size = v43;
                v44.weld.Part1 = v44;
                v44.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v44.Parent = u25;
            end;
        elseif p26 == "Part" then
            local Hitbox = u25:FindFirstChild("Hitbox");

            if not Hitbox then
                return;
            end;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant ~= Hitbox then
                    descendant.Transparency = 1;
                elseif descendant:IsA("ParticleEmitter") or (descendant:IsA("Beam") or (descendant:IsA("Trail") or descendant:IsA("Light"))) then
                    descendant.Enabled = false;
                end;
            end;

            Hitbox.Transparency = 1;
            local v45 = Hitbox:Clone();
            v45.Name = "MoonKissedVisual";
            v45.Transparency = 0;
            v45.Color = Color3.fromRGB(163, 162, 165);
            v45.Material = Enum.Material.Plastic;
            v45.Parent = u25;
            local WeldConstraint = Instance.new("WeldConstraint");
            WeldConstraint.Part0 = Hitbox;
            WeldConstraint.Part1 = v45;
            WeldConstraint.Parent = u25;
        elseif p26 == "Golden Part" then
            local Hitbox = u25:FindFirstChild("Hitbox");

            if not Hitbox then
                return;
            end;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant ~= Hitbox then
                    descendant.Transparency = 1;
                elseif descendant:IsA("ParticleEmitter") or (descendant:IsA("Beam") or (descendant:IsA("Trail") or descendant:IsA("Light"))) then
                    descendant.Enabled = false;
                end;
            end;

            Hitbox.Transparency = 1;
            local v46 = Hitbox:Clone();
            v46.Name = "MoonKissedVisual";
            v46.Transparency = 0;
            v46.Color = Color3.fromRGB(255, 168, 61);
            v46.Material = Enum.Material.Metal;
            v46.Parent = u25;
            local WeldConstraint = Instance.new("WeldConstraint");
            WeldConstraint.Part0 = Hitbox;
            WeldConstraint.Part1 = v46;
            WeldConstraint.Parent = u25;

            if u25:FindFirstChild("handle") then
                local Hitbox2 = u25:FindFirstChild("Hitbox");

                if not Hitbox2 then
                    return;
                end;

                local _ = Hitbox2.CFrame;
                local Size = Hitbox2.Size;
                local v47 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v48 = general:WaitForChild("atlanteantemplate"):Clone();
                v48.Size = v47;
                v48.weld.Part1 = v48;
                v48.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v48.Parent = u25;
            end;
        elseif p26 == "Lost" then
            local v49 = { Color3.fromRGB(160, 255, 131), Color3.fromRGB(144, 255, 110), Color3.fromRGB(175, 255, 151) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v49[math.random(1, #v49)];
                    descendant.Material = Enum.Material.Neon;
                end;
            end;
        elseif p26 == "Blessed" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v50 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, _ = descendant.Color:ToHSV();
                    descendant.Material = Enum.Material.Neon;
                    descendant.Color = Color3.fromHSV(0.17, Random.new(v50):NextNumber(0, 0.4), 0.7);
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v51 = u25:GetBoundingBox();
                local v52 = general:WaitForChild("blessedtemplate"):Clone();
                v52.Size = v51 * 0.75;
                v52.weld.Part1 = v52;
                v52.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v52, v51, 4.5);
                v52.Parent = u25;
            end;
        elseif p26 == "Chaotic" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v53 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + u25:GetScale();
                    local Random_new_ret = Random.new(v53);
                    descendant.Material = Enum.Material.Neon;
                    descendant.Color = Random_new_ret:NextInteger(0, 1) == 0 and Color3.fromRGB(0, 0, 0) or Color3.fromRGB(255, 255, 255);
                    descendant.Transparency = 0.05;
                    local v54 = { 0.25, 0.05 };
                    descendant:SetAttribute("PulseTime", 1);
                    local v55;

                    if v54 then
                        v55 = descendant;

                        for i, v in v54 do
                            v55:SetAttribute(`PulseTrans{i}`, v);
                        end;
                    else
                        v55 = descendant;
                    end;

                    v55:AddTag("ColorPulse");
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v56 = u25:GetBoundingBox();
                local v57 = general:WaitForChild("chaotictemplate"):Clone();
                v57.Size = v56 * 0.75;
                v57.weld.Part1 = v57;
                v57.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v57, v56, 4.5);
                v57.Parent = u25;
            end;
        elseif p26 == "Soulless" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v58 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + u25:GetScale();
                    local Random_new_ret = Random.new(v58);
                    descendant.Material = Enum.Material.Neon;
                    descendant.Color = Random_new_ret:NextInteger(0, 1) == 0 and Color3.fromRGB(172, 89, 255) or Color3.fromRGB(103, 69, 141);
                    local v59 = { 0.5, 0.35 };
                    descendant:SetAttribute("PulseTime", 1);
                    local v60;

                    if v59 then
                        v60 = descendant;

                        for i, v in v59 do
                            v60:SetAttribute(`PulseTrans{i}`, v);
                        end;
                    else
                        v60 = descendant;
                    end;

                    v60:AddTag("ColorPulse");
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v61 = u25:GetBoundingBox();
                local v62 = general:WaitForChild("soullesstemplate"):Clone();
                v62.Size = v61 * 0.75;
                v62.weld.Part1 = v62;
                v62.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v62, v61, 4.5);
                v62.Parent = u25;
            end;
        elseif p26 == "Wisp" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v63 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + u25:GetScale();
                    local Random_new_ret = Random.new(v63);
                    descendant.Material = Enum.Material.Neon;
                    descendant.Color = Random_new_ret:NextInteger(0, 1) == 0 and Color3.fromRGB(107, 255, 233) or Color3.fromRGB(85, 141, 137);
                    descendant.Transparency = 0.35;
                    local v64 = { 0.5, 0.35 };
                    descendant:SetAttribute("PulseTime", 1);
                    local v65;

                    if v64 then
                        v65 = descendant;

                        for i, v in v64 do
                            v65:SetAttribute(`PulseTrans{i}`, v);
                        end;
                    else
                        v65 = descendant;
                    end;

                    v65:AddTag("ColorPulse");
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v66 = u25:GetBoundingBox();
                local v67 = general:WaitForChild("wisptemplate"):Clone();
                v67.Size = v66 * 0.75;
                v67.weld.Part1 = v67;
                v67.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v67, v66, 4.5);
                v67.Parent = u25;
            end;
        elseif p26 == "Haunted" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v68 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + u25:GetScale();
                    local Random_new_ret = Random.new(v68);
                    descendant.Material = Enum.Material.Neon;
                    descendant.Color = Random_new_ret:NextInteger(0, 1) == 0 and Color3.fromRGB(85, 65, 35) or Color3.fromRGB(109, 81, 57);
                    descendant.Transparency = 0.35;
                    local v69 = { 0.5, 0.35 };
                    descendant:SetAttribute("PulseTime", 1);
                    local v70;

                    if v69 then
                        v70 = descendant;

                        for i, v in v69 do
                            v70:SetAttribute(`PulseTrans{i}`, v);
                        end;
                    else
                        v70 = descendant;
                    end;

                    v70:AddTag("ColorPulse");
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v71 = u25:GetBoundingBox();
                local v72 = general:WaitForChild("hauntedtemplate"):Clone();
                v72.Size = v71 * 0.75;
                v72.weld.Part1 = v72;
                v72.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v72, v71, 4.5);
                v72.Parent = u25;
            end;
        elseif p26 == "Nightmare" then
            local Color3_fromRGB_ret = Color3.fromRGB(33, 53, 96);
            local Color3_fromRGB_ret2 = Color3.fromRGB(36, 57, 103);
            local Color3_fromRGB_ret3 = Color3.fromRGB(26, 43, 76);
            local Color3_fromRGB_ret4 = Color3.fromRGB(25, 40, 72);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 154, 107);
            local Color3_fromRGB_ret6 = Color3.fromRGB(229, 138, 96);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v73 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v74 = Random.new(v73):NextInteger(0, 1);
                        descendant.Material = Enum.Material.Glass;
                        local v75 = v74 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v76;

                        if v74 == 1 then
                            v76 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v76 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v75;
                        local v77 = { v76, v75 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v78;

                        if v77 then
                            v78 = descendant;

                            for i, v in v77 do
                                v78:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v78 = descendant;
                        end;

                        v78:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v79 = u25:GetBoundingBox();
                local v80 = general:WaitForChild("nightmaretemplate"):Clone();
                v80.CFrame = (u25:FindFirstChild("Center") or u25:FindFirstChild("handle")).CFrame;
                v80.Size = v79;
                v80.weld.Part1 = v80;
                v80.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v80, v79, 4.5);
                v80.Parent = u25;
            end;

            local v81 = nil;

            for _, descendant in u25:GetDescendants() do
                if descendant:IsA("BasePart") and descendant.Name == "Eyes" then
                    v81 = descendant;
                    break;
                end;
            end;

            local v82 = v81 or (u25:FindFirstChild("Center") or u25.PrimaryPart);
            local v83 = u25:FindFirstChild("Hitbox") and u25.Hitbox.Size or u25:GetExtentsSize();

            if not v82 then
                return;
            end;

            local v84 = script.Dusekkar:Clone();
            v84.Size = v84.Size * (v83.Magnitude / 6);
            local Weld = Instance.new("Weld");
            Weld.Name = "CrownWeld";
            Weld.Part0 = v82;
            Weld.Part1 = v84;
            Weld.C1 = CFrame.new((Vector3.new(0, v83.Y * -0.1, 0))) * (v82.CFrame - v82.CFrame.Position);
            v84.CFrame = v82.CFrame * Weld.C0:Inverse();
            Weld.Parent = v82;
            v84.Parent = u25:FindFirstChild("Fish") or u25;
        elseif p26 == "New Years" then
            local Color3_fromRGB_ret = Color3.fromRGB(120, 121, 101);
            local Color3_fromRGB_ret2 = Color3.fromRGB(153, 154, 128);
            local Color3_fromRGB_ret3 = Color3.fromRGB(18, 18, 15);
            local Color3_fromRGB_ret4 = Color3.fromRGB(17, 17, 15);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 242, 179);
            local Color3_fromRGB_ret6 = Color3.fromRGB(229, 184, 95);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v85 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v86 = Random.new(v85):NextInteger(0, 1);
                        descendant.Material = Enum.Material.Neon;
                        local v87 = v86 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v88;

                        if v86 == 1 then
                            v88 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v88 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v87;
                        local v89 = { v88, v87 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v90;

                        if v89 then
                            v90 = descendant;

                            for i, v in v89 do
                                v90:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v90 = descendant;
                        end;

                        v90:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v91 = u25:GetBoundingBox();
                local v92 = general:WaitForChild("newyearstemplate"):Clone();
                v92.Size = v91;
                v92.weld.Part1 = v92;
                v92.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v92, v91, 4.5);
                v92.Parent = u25;
            end;
        elseif p26 == "Noctic" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 255, 255);
            local Color3_fromRGB_ret2 = Color3.fromRGB(214, 214, 214);
            local Color3_fromRGB_ret3 = Color3.fromRGB(0, 0, 0);
            local Color3_fromRGB_ret4 = Color3.fromRGB(17, 17, 17);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 255, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(212, 212, 212);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v93 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v94 = Random.new(v93):NextInteger(0, 1);
                        descendant.Material = Enum.Material.Glass;
                        local v95 = v94 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v96;

                        if v94 == 1 then
                            v96 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v96 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v95;
                        local v97 = { v96, v95 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v98;

                        if v97 then
                            v98 = descendant;

                            for i, v in v97 do
                                v98:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v98 = descendant;
                        end;

                        v98:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v99 = u25:GetBoundingBox();
                local v100 = general:WaitForChild("noctictemplate"):Clone();
                v100.Size = v99;
                v100.weld.Part1 = v100;
                v100.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v100, v99, 4.5);
                v100.Parent = u25;
            end;
        elseif p26 == "Corvid" then
            local Color3_fromRGB_ret = Color3.fromRGB(190, 102, 234);
            local Color3_fromRGB_ret2 = Color3.fromRGB(176, 94, 217);
            local Color3_fromRGB_ret3 = Color3.fromRGB(128, 103, 153);
            local Color3_fromRGB_ret4 = Color3.fromRGB(130, 99, 153);
            local Color3_fromRGB_ret5 = Color3.fromRGB(197, 117, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(185, 135, 255);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v101 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v102 = Random.new(v101):NextInteger(0, 1);
                        descendant.Material = v102 == 1 and Enum.Material.ForceField or Enum.Material.Glacier;
                        local v103 = v102 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v104;

                        if v102 == 1 then
                            v104 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v104 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v103;
                        local v105 = { v104, v103 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v106;

                        if v105 then
                            v106 = descendant;

                            for i, v in v105 do
                                v106:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v106 = descendant;
                        end;

                        v106:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v107 = u25:GetBoundingBox();
                local v108 = general:WaitForChild("corvidtemplate"):Clone();
                v108.Size = v107;
                v108.weld.Part1 = v108;
                v108.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v108, v107, 4.5);
                v108.Parent = u25;
            end;
        elseif p26 == "Upside-Down" then
            if u25 then
                local v109 = u25:FindFirstChild("handle") or u25:FindFirstChild("Center");

                if not v109 then
                    return;
                end;

                if not u25.PrimaryPart then
                    u25.PrimaryPart = v109;
                end;

                local Center = u25:FindFirstChild("Center");
                local v110 = not (Center and v109) and Vector3.new(0, 0, 0) or v109.Position - Center.Position;
                local v111 = {};

                for _, descendant in ipairs(u25:GetDescendants()) do
                    if descendant:IsA("WeldConstraint") or descendant:IsA("JointInstance") then
                        table.insert(v111, {
                            Part0 = descendant.Part0,
                            Part1 = descendant.Part1,
                            Constraint = descendant
                        });
                        descendant:Destroy();
                    end;
                end;

                v109.CFrame = v109.CFrame * CFrame.Angles(3.141592653589793, 0, 0) + v110 * -2;

                for _, v in ipairs(v111) do
                    local Part0 = v.Part0;
                    local Part1 = v.Part1;

                    if Part0 and (Part1 and (Part0 ~= v109 and Part1 ~= v109)) then
                        local WeldConstraint = Instance.new("WeldConstraint");
                        WeldConstraint.Part0 = Part0;
                        WeldConstraint.Part1 = Part1;
                        WeldConstraint.Parent = u25;
                    elseif Part0 == v109 or Part1 == v109 then
                        if Part0 == v109 then
                            Part0 = Part1 or Part0;
                        end;

                        if Part0 then
                            local WeldConstraint = Instance.new("WeldConstraint");
                            WeldConstraint.Part0 = v109;
                            WeldConstraint.Part1 = Part0;
                            WeldConstraint.Parent = u25;
                        end;
                    end;
                end;

                local v112 = u25:IsA("Tool") and u25 or u25:FindFirstAncestorOfClass("Tool");

                if v112 and v112:FindFirstChild("handle") then
                    v112.Grip = v112.Grip * CFrame.Angles(3.141592653589793, 0, 0);
                end;

                u25:SetAttribute("UpsideDown", true);
            end;
        elseif p26 == "Spectral" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v113 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + u25:GetScale();
                    local Random_new_ret = Random.new(v113);
                    descendant.Material = Enum.Material.Neon;
                    descendant.Color = Random_new_ret:NextInteger(0, 1) == 0 and Color3.fromRGB(103, 82, 136) or Color3.fromRGB(136, 115, 168);
                    descendant.Transparency = 0.35;
                    local v114 = { 0.5, 0.35 };
                    descendant:SetAttribute("PulseTime", 1);
                    local v115;

                    if v114 then
                        v115 = descendant;

                        for i, v in v114 do
                            v115:SetAttribute(`PulseTrans{i}`, v);
                        end;
                    else
                        v115 = descendant;
                    end;

                    v115:AddTag("ColorPulse");
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v116 = u25:GetBoundingBox();
                local v117 = general:WaitForChild("spectraltemplate"):Clone();
                v117.Size = v116 * 0.75;
                v117.weld.Part1 = v117;
                v117.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v117, v116, 4.5);
                v117.Parent = u25;
            end;
        elseif p26 == "LEGO" then
            local v118 = {
                Color3.fromRGB(255, 0, 0),
                Color3.fromRGB(13, 255, 0),
                Color3.fromRGB(255, 255, 0),
                Color3.fromRGB(0, 55, 255)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 255, 127);
                        descendant.Material = Enum.Material.Neon;
                    elseif not table_freeze_ret[descendant.Name] then
                        descendant.Color = v118[math.random(1, #v118)];
                        descendant.Material = Enum.Material.SmoothPlastic;
                    end;
                end;
            end;
        elseif p26 == "Smurf" then
            local v119 = { Color3.fromRGB(255, 255, 255), Color3.fromRGB(1, 153, 255) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(186, 186, 186);
                        descendant.Material = Enum.Material.Neon;
                    elseif not table_freeze_ret[descendant.Name] then
                        descendant.Color = v119[math.random(1, #v119)];
                        descendant.Material = Enum.Material.SmoothPlastic;
                    end;
                end;
            end;
        elseif p26 == "Zora" then
            local v120 = { Color3.fromRGB(255, 170, 127), Color3.fromRGB(255, 255, 255) };
            local Random_new_ret = Random.new(u25:GetExtentsSize():Max().X or 1);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 85, 0);
                        descendant.Material = Enum.Material.Neon;
                    elseif not table_freeze_ret[descendant.Name] then
                        descendant.Color = v120[Random_new_ret:NextInteger(1, #v120)];
                        descendant.Material = Enum.Material.SmoothPlastic;
                    end;
                end;
            end;
        elseif p26 == "Duncan" then
            local v121 = { Color3.fromRGB(170, 255, 255), Color3.fromRGB(255, 255, 255) };
            local Random_new_ret = Random.new(u25:GetExtentsSize():Max().X or 1);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 85, 0);
                        descendant.Material = Enum.Material.Neon;
                    elseif not table_freeze_ret[descendant.Name] then
                        descendant.Color = v121[Random_new_ret:NextInteger(1, #v121)];
                        descendant.Material = Enum.Material.SmoothPlastic;
                    end;
                end;
            end;
        elseif p26 == "Henry" then
            local v122 = { Color3.fromRGB(255, 83, 83), Color3.fromRGB(255, 255, 255) };
            local Random_new_ret = Random.new(u25:GetExtentsSize():Max().X or 1);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 85, 0);
                        descendant.Material = Enum.Material.Neon;
                    elseif not table_freeze_ret[descendant.Name] then
                        descendant.Color = v122[Random_new_ret:NextInteger(1, #v122)];
                        descendant.Material = Enum.Material.SmoothPlastic;
                    end;
                end;
            end;
        elseif p26 == "Toxic" then
            local Color3_fromRGB_ret = Color3.fromRGB(221, 211, 255);
            local Color3_fromRGB_ret2 = Color3.fromRGB(194, 119, 255);
            local Color3_fromRGB_ret3 = Color3.fromRGB(195, 146, 255);
            local Color3_fromRGB_ret4 = Color3.fromRGB(169, 82, 255);
            local Color3_fromRGB_ret5 = Color3.fromRGB(173, 79, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(138, 89, 197);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        descendant.Material = Enum.Material.CrackedLava;
                        local v123 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v124 = Random.new(v123):NextInteger(0, 1);
                        local v125 = v124 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v126;

                        if v124 == 1 then
                            v126 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v126 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v125;
                        local v127 = { v126, v125 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v128;

                        if v127 then
                            v128 = descendant;

                            for i, v in v127 do
                                v128:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v128 = descendant;
                        end;

                        v128:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v129 = u25:GetBoundingBox();
                local v130 = general:WaitForChild("toxictemplate"):Clone();
                v130.Size = v129;
                v130.weld.Part1 = v130;
                v130.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v130, v129, 4.5);
                local Center = u25:FindFirstChild("Center");

                if Center then
                    for _, descendant in ipairs(v130:GetDescendants()) do
                        if descendant:IsA("Attachment") then
                            descendant.Parent = Center;
                        end;
                    end;
                end;

                v130.Parent = u25;
            end;
        elseif p26 == "Noxious" then
            local Color3_fromRGB_ret = Color3.fromRGB(208, 192, 231);
            local Color3_fromRGB_ret2 = Color3.fromRGB(171, 91, 202);
            local Color3_fromRGB_ret3 = Color3.fromRGB(139, 93, 165);
            local Color3_fromRGB_ret4 = Color3.fromRGB(119, 44, 148);
            local Color3_fromRGB_ret5 = Color3.fromRGB(146, 56, 184);
            local Color3_fromRGB_ret6 = Color3.fromRGB(94, 52, 118);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        descendant.Material = Enum.Material.CrackedLava;
                        local v131 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v132 = Random.new(v131):NextInteger(0, 1);
                        local v133 = v132 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v134;

                        if v132 == 1 then
                            v134 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v134 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v133;
                        local v135 = { v134, v133 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v136;

                        if v135 then
                            v136 = descendant;

                            for i, v in v135 do
                                v136:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v136 = descendant;
                        end;

                        v136:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v137 = u25:GetBoundingBox();
                local v138 = general:WaitForChild("noxioustemplate"):Clone();
                v138.Size = v137;
                v138.weld.Part1 = v138;
                v138.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v138, v137, 4.5);
                local Center = u25:FindFirstChild("Center");

                if Center then
                    for _, descendant in ipairs(v138:GetDescendants()) do
                        if descendant:IsA("Attachment") then
                            descendant.Parent = Center;
                        end;
                    end;
                end;

                v138.Parent = u25;
            end;
        elseif p26 == "Verdant" then
            local Color3_fromRGB_ret = Color3.fromRGB(242, 255, 240);
            local Color3_fromRGB_ret2 = Color3.fromRGB(222, 255, 217);
            local Color3_fromRGB_ret3 = Color3.fromRGB(232, 255, 194);
            local Color3_fromRGB_ret4 = Color3.fromRGB(221, 255, 183);
            local Color3_fromRGB_ret5 = Color3.fromRGB(160, 255, 134);
            local Color3_fromRGB_ret6 = Color3.fromRGB(157, 197, 104);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        descendant.Material = Enum.Material.Ice;
                        local v139 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v140 = Random.new(v139):NextInteger(0, 1);
                        local v141 = v140 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v142;

                        if v140 == 1 then
                            v142 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v142 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v141;
                        local v143 = { v142, v141 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v144;

                        if v143 then
                            v144 = descendant;

                            for i, v in v143 do
                                v144:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v144 = descendant;
                        end;

                        v144:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v145 = u25:GetBoundingBox();
                local v146 = general:WaitForChild("verdanttemplate"):Clone();
                v146.Size = v145;
                v146.weld.Part1 = v146;
                v146.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v146, v145, 4.5);
                local Center = u25:FindFirstChild("Center");

                if Center then
                    for _, descendant in ipairs(v146:GetDescendants()) do
                        if descendant:IsA("Attachment") then
                            descendant.Parent = Center;
                        end;
                    end;
                end;

                v146.Parent = u25;
            end;
        elseif p26 == "Puritas" then
            local Color3_fromRGB_ret = Color3.fromRGB(244, 255, 255);
            local Color3_fromRGB_ret2 = Color3.fromRGB(220, 240, 255);
            local Color3_fromRGB_ret3 = Color3.fromRGB(208, 233, 255);
            local Color3_fromRGB_ret4 = Color3.fromRGB(180, 210, 255);
            local Color3_fromRGB_ret5 = Color3.fromRGB(139, 176, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(113, 153, 197);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        descendant.Material = Enum.Material.Ice;
                        local v147 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v148 = Random.new(v147):NextInteger(0, 1);
                        local v149 = v148 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v150;

                        if v148 == 1 then
                            v150 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v150 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v149;
                        local v151 = { v150, v149 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v152;

                        if v151 then
                            v152 = descendant;

                            for i, v in v151 do
                                v152:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v152 = descendant;
                        end;

                        v152:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v153 = u25:GetBoundingBox();
                local v154 = general:WaitForChild("puritastemplate"):Clone();
                v154.Size = v153;
                v154.weld.Part1 = v154;
                v154.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v154, v153, 4.5);
                local Center = u25:FindFirstChild("Center");

                if Center then
                    for _, descendant in ipairs(v154:GetDescendants()) do
                        if descendant:IsA("Attachment") then
                            descendant.Parent = Center;
                        end;
                    end;
                end;

                v154.Parent = u25;
            end;
        elseif p26 == "Sacratus" then
            local Color3_fromRGB_ret = Color3.fromRGB(138, 185, 255);
            local Color3_fromRGB_ret2 = Color3.fromRGB(133, 159, 255);
            local Color3_fromRGB_ret3 = Color3.fromRGB(176, 194, 255);
            local Color3_fromRGB_ret4 = Color3.fromRGB(150, 165, 217);
            local Color3_fromRGB_ret5 = Color3.fromRGB(74, 83, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(90, 113, 197);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        descendant.Material = Enum.Material.Ice;
                        local v155 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v156 = Random.new(v155):NextInteger(0, 1);
                        local v157 = v156 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v158;

                        if v156 == 1 then
                            v158 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v158 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v157;
                        local v159 = { v158, v157 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v160;

                        if v159 then
                            v160 = descendant;

                            for i, v in v159 do
                                v160:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v160 = descendant;
                        end;

                        v160:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v161 = u25:GetBoundingBox();
                local v162 = general:WaitForChild("sacratustemplate"):Clone();
                v162.Size = v161;
                v162.weld.Part1 = v162;
                v162.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v162, v161, 4.5);
                local Center = u25:FindFirstChild("Center");

                if Center then
                    for _, descendant in ipairs(v162:GetDescendants()) do
                        if descendant:IsA("Attachment") then
                            descendant.Parent = Center;

                            for _, child in ipairs(descendant:GetChildren()) do
                                if child:IsA("ParticleEmitter") then
                                    child.ZOffset = math.max(v161.X, v161.Y, v161.Z) / 4.5 * 1;
                                end;
                            end;
                        end;
                    end;
                end;

                v162.Parent = u25;
            end;
        elseif p26 == "Levitas" then
            local Color3_fromRGB_ret = Color3.fromRGB(208, 222, 255);
            local Color3_fromRGB_ret2 = Color3.fromRGB(201, 206, 255);
            local Color3_fromRGB_ret3 = Color3.fromRGB(196, 205, 255);
            local Color3_fromRGB_ret4 = Color3.fromRGB(215, 221, 255);
            local Color3_fromRGB_ret5 = Color3.fromRGB(159, 156, 255);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        local v163 = { 0.25, 0.05 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v164;

                        if v163 then
                            v164 = descendant;

                            for i, v in v163 do
                                v164:SetAttribute(`PulseTrans{i}`, v);
                            end;
                        else
                            v164 = descendant;
                        end;

                        v164:AddTag("ColorPulse");
                    elseif not table_freeze_ret[descendant.Name] then
                        descendant.Material = Enum.Material.Glass;
                        local v165 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v166 = Random.new(v165):NextInteger(0, 1);
                        local v167 = v166 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v168;

                        if v166 == 1 then
                            v168 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v168 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v167;
                        descendant.Transparency = 0.1;
                        descendant.Reflectance = 0.5;
                        local v169 = { v168, v167 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v170;

                        if v169 then
                            v170 = descendant;

                            for i, v in v169 do
                                v170:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v170 = descendant;
                        end;

                        v170:AddTag("ColorPulse");
                    end;
                end;
            end;
        elseif p26 == "Lovely" then
            local Color3_fromRGB_ret = Color3.fromRGB(253, 206, 255);
            local Color3_fromRGB_ret2 = Color3.fromRGB(255, 190, 241);
            local Color3_fromRGB_ret3 = Color3.fromRGB(226, 185, 255);
            local Color3_fromRGB_ret4 = Color3.fromRGB(205, 170, 255);
            local Color3_fromRGB_ret5 = Color3.fromRGB(175, 138, 175);
            local Color3_fromRGB_ret6 = Color3.fromRGB(155, 141, 197);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        descendant.Material = Enum.Material.Ice;
                        local v171 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v172 = Random.new(v171):NextInteger(0, 1);
                        local v173 = v172 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v174;

                        if v172 == 1 then
                            v174 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v174 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v173;
                        local v175 = { v174, v173 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v176;

                        if v175 then
                            v176 = descendant;

                            for i, v in v175 do
                                v176:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v176 = descendant;
                        end;

                        v176:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v177 = u25:GetBoundingBox();
                local v178 = general:WaitForChild("lovelytemplate"):Clone();
                v178.Size = v177;
                v178.weld.Part1 = v178;
                v178.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v178, v177, 4.5);
                local Center = u25:FindFirstChild("Center");

                if Center then
                    for _, descendant in ipairs(v178:GetDescendants()) do
                        if descendant:IsA("Attachment") then
                            descendant.Parent = Center;

                            for _, child in ipairs(descendant:GetChildren()) do
                                if child:IsA("ParticleEmitter") then
                                    child.ZOffset = math.max(v177.X, v177.Y, v177.Z) / 4.5 * 1;
                                end;
                            end;
                        end;
                    end;
                end;

                v178.Parent = u25;
            end;
        elseif p26 == "Infernal" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 81, 38);
            local Color3_fromRGB_ret2 = Color3.fromRGB(135, 47, 25);
            local Color3_fromRGB_ret3 = Color3.fromRGB(255, 109, 5);
            local Color3_fromRGB_ret4 = Color3.fromRGB(217, 69, 0);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 96, 23);
            local Color3_fromRGB_ret6 = Color3.fromRGB(197, 47, 27);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        descendant.Material = Enum.Material.CrackedLava;
                        local v179 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v180 = Random.new(v179):NextInteger(0, 1);
                        local v181 = v180 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v182;

                        if v180 == 1 then
                            v182 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v182 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v181;
                        local v183 = { v182, v181 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v184;

                        if v183 then
                            v184 = descendant;

                            for i, v in v183 do
                                v184:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v184 = descendant;
                        end;

                        v184:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v185 = u25:GetBoundingBox();
                local v186 = general:WaitForChild("infernaltemplate"):Clone();
                v186.Size = v185;
                v186.weld.Part1 = v186;
                v186.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v186, v185, 4.5);
                v186.Parent = u25;
            end;
        elseif p26 == "Snowy" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Transparency == 1 or descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 255, 255);
                        descendant.Material = Enum.Material.Neon;
                    else
                        local _ = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local _, _, _ = descendant.Color:ToHSV();
                        descendant.Color = Color3.fromRGB(205, 232, 255);
                        descendant.Material = Enum.Material.Snow;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v187 = u25:GetBoundingBox();
                local v188 = general:WaitForChild("snowytemplate"):Clone();
                v188.Size = v187;
                v188.weld.Part1 = v188;
                v188.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");

                for _, descendant in ipairs(v188:GetDescendants()) do
                    if descendant:IsA("ParticleEmitter") then
                        local v189 = math.max(v187.X, v187.Y, v187.Z) / 4.5;
                        local v190 = descendant;
                        local v191 = {};

                        for _, v in ipairs(descendant.Size.Keypoints) do
                            table.insert(v191, NumberSequenceKeypoint.new(v.Time, v.Value * v189, v.Envelope * v189));
                        end;

                        v190.Size = NumberSequence.new(v191);

                        if v190.Name == "Snow" then
                            v190.Speed = NumberRange.new(v189 * -2, v189 * -0.4);
                        end;
                    end;
                end;

                v188.Parent = u25;
            end;
        elseif p26 == "Frostbite" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Transparency == 1 or descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(161, 222, 255);
                        descendant.Material = Enum.Material.Ice;
                    else
                        local _ = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local _, _, _ = descendant.Color:ToHSV();
                        descendant.Color = Color3.fromRGB(176, 230, 255);
                        descendant.Material = Enum.Material.Snow;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v192 = u25:GetBoundingBox();
                local v193 = general:WaitForChild("frostbitetemplate"):Clone();
                v193.Size = v192;
                v193.weld.Part1 = v193;
                v193.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");

                for _, descendant in ipairs(v193:GetDescendants()) do
                    if descendant:IsA("ParticleEmitter") then
                        local v194 = math.max(v192.X, v192.Y, v192.Z) / 4.5;
                        local v195 = descendant;
                        local v196 = {};

                        for _, v in ipairs(descendant.Size.Keypoints) do
                            table.insert(v196, NumberSequenceKeypoint.new(v.Time, v.Value * v194, v.Envelope * v194));
                        end;

                        v195.Size = NumberSequence.new(v196);

                        if v195.Name == "Snow" then
                            v195.Speed = NumberRange.new(v194 * -2, v194 * -0.4);
                        end;
                    end;
                end;

                v193.Parent = u25;
            end;
        elseif p26 == "Permafrost" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Transparency == 1 or descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(226, 243, 255);
                        descendant.Material = Enum.Material.Neon;
                    else
                        local _ = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local _, _, _ = descendant.Color:ToHSV();
                        descendant.Color = Color3.fromRGB(170, 191, 214);
                        descendant.Material = Enum.Material.Ice;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v197 = u25:GetBoundingBox();
                local v198 = general:WaitForChild("permafrosttemplate"):Clone();
                v198.Size = v197;
                v198.weld.Part1 = v198;
                v198.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");

                for _, descendant in ipairs(v198:GetDescendants()) do
                    if descendant:IsA("ParticleEmitter") then
                        local v199 = math.max(v197.X, v197.Y, v197.Z) / 4.5;
                        local v200 = descendant;
                        local v201 = {};

                        for _, v in ipairs(descendant.Size.Keypoints) do
                            table.insert(v201, NumberSequenceKeypoint.new(v.Time, v.Value * v199, v.Envelope * v199));
                        end;

                        v200.Size = NumberSequence.new(v201);

                        if v200.Name == "Snow" then
                            v200.Speed = NumberRange.new(v199 * -2, v199 * -0.4);
                        end;
                    end;
                end;

                v198.Parent = u25;
            end;
        elseif p26 == "Chilled" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Transparency == 1 or descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 255, 255);
                        descendant.Material = Enum.Material.Neon;
                    else
                        local _ = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local _, _, _ = descendant.Color:ToHSV();
                        descendant.Color = Color3.fromRGB(210, 251, 255);
                        descendant.Material = Enum.Material.Snow;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v202 = u25:GetBoundingBox();
                local v203 = general:WaitForChild("chilledtemplate"):Clone();
                v203.Size = v202;
                v203.weld.Part1 = v203;
                v203.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v203, v202, 4.5);
                v203.Parent = u25;
            end;
        elseif p26 == "Glacial" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Transparency == 1 or descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 255, 255);
                        descendant.Material = Enum.Material.Neon;
                    else
                        local _ = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local _, _, _ = descendant.Color:ToHSV();
                        descendant.Color = Color3.fromRGB(226, 255, 250);
                        descendant.Material = Enum.Material.Glacier;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v204 = u25:GetBoundingBox();
                local v205 = general:WaitForChild("glacialtemplate"):Clone();
                v205.Size = v204;
                v205.weld.Part1 = v205;
                v205.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v205, v204, 4.5);
                v205.Parent = u25;
            end;
        elseif p26 == "Summer" then
            local v206 = {
                Color3.fromRGB(221, 207, 149),
                Color3.fromRGB(199, 187, 141),
                Color3.fromRGB(185, 169, 130),
                Color3.fromRGB(252, 227, 169),
                Color3.fromRGB(227, 208, 158)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Transparency == 1 or descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(83, 129, 255);
                        descendant.Material = Enum.Material.Neon;
                    else
                        local v207 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        descendant.Color = v206[Random.new(v207):NextInteger(1, #v206)];
                        descendant.Material = Enum.Material.Sand;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v208 = u25:GetBoundingBox();
                local v209 = general:WaitForChild("summertemplate"):Clone();
                v209.CFrame = (u25:FindFirstChild("Center") or u25:FindFirstChild("handle")).CFrame;
                v209.Size = v208;
                v209.weld.Part1 = v209;
                v209.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v209, v208, 4.5);
                v209.Parent = u25;
                local Center = u25:FindFirstChild("Center");

                if Center then
                    for _, descendant in ipairs(v209:GetDescendants()) do
                        if descendant:IsA("Attachment") then
                            descendant.Parent = Center;

                            for _, child in ipairs(descendant:GetChildren()) do
                                if child:IsA("ParticleEmitter") then
                                    child.ZOffset = math.max(v208.X, v208.Y, v208.Z) / 4.5 * 1;
                                end;
                            end;
                        end;
                    end;
                end;

                local v210 = nil;

                for _, descendant in u25:GetDescendants() do
                    if descendant:IsA("BasePart") and descendant.Name == "Eyes" then
                        v210 = descendant;
                        break;
                    end;
                end;

                local v211 = v210 or (u25:FindFirstChild("Center") or u25.PrimaryPart);
                local ExtentsSize = u25:GetExtentsSize();

                if not v211 then
                    return;
                end;

                local v212 = script.Umbrella:Clone();
                local Mesh = v212.Mesh;
                Mesh.Scale = Mesh.Scale * (ExtentsSize.Magnitude / 5);
                local Weld = Instance.new("Weld");
                Weld.Name = "UmbrellaWeld";
                Weld.Part0 = v211;
                Weld.Part1 = v212;
                Weld.C1 = v211.CFrame - v211.Position + Vector3.new(0, -(ExtentsSize.Y / 4 - v212.Mesh.Scale.Y), 0);
                v212.CFrame = v211.CFrame * Weld.C0:Inverse();
                Weld.Parent = v211;
                v212.Parent = u25:FindFirstChild("Fish") or u25;
            end;
        elseif p26 == "Patriotic" then
            local v213 = { Color3.fromRGB(0, 0, 255), Color3.fromRGB(255, 255, 255), Color3.fromRGB(255, 0, 0) };
            game:GetService("ReplicatedStorage");
            local Scale = u25:GetScale();

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    Scale = Scale + descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B;
                end;
            end;

            local Random_new_ret = Random.new(Scale);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Transparency == 1 or descendant.Name == "Eyes" then
                        if descendant.Name == "Eyes" then
                            descendant.Material = Enum.Material.Neon;
                            descendant.Transparency = 0.15;
                            descendant.Color = v213[1];
                            descendant:SetAttribute("PulseTime", 1);
                            local v214;

                            if v213 then
                                v214 = descendant;

                                for i, v in v213 do
                                    v214:SetAttribute(`PulseColor{i}`, v);
                                end;
                            else
                                v214 = descendant;
                            end;

                            v214:AddTag("ColorPulse");
                        end;
                    else
                        descendant.Color = v213[Random_new_ret:NextInteger(1, #v213)];
                        descendant.Material = Enum.Material.Plastic;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v215 = u25:GetBoundingBox();
                local v216 = general:WaitForChild("patriotictemplate"):Clone();
                v216.Size = v215;
                v216.weld.Part1 = v216;
                v216.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v216.Patriotic.Parent = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v216, v215, 4.5);
                v216.Parent = u25;
            end;
        elseif p26 == "Serene" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                local v217, _, _ = Color3.fromRGB(0, 47, 255):ToHSV();

                if descendant:IsA("BasePart") then
                    local _, v218, v219 = descendant.Color:ToHSV();

                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(93, 123, 255);
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = Color3.fromHSV(math.clamp(v217, 0, 1), math.clamp(v218 + 0.2, 0, 1), (math.clamp(v219 * 0.65, 0, 1)));
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v220 = Hitbox.Size * 1.4;
                local v221 = general:WaitForChild("serenetemplate"):Clone();
                local Size = v221.Size;
                v221.Size = v220;

                for _, descendant in pairs(v221:GetDescendants()) do
                    if descendant:IsA("Attachment") then
                        descendant.Position = Vector3.new(descendant.Position.X * (v220.X / Size.X), descendant.Position.Y * (v220.Y / Size.Y), descendant.Position.Z * (v220.Z / Size.Z));
                    end;
                end;

                resizeMutationTemplate(v221, v220, 8);
                v221.weld.Part1 = v221;
                v221.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v221.Parent = u25;
            end;
        elseif p26 == "Quiet" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                local v222, _, _ = Color3.fromRGB(34, 44, 66):ToHSV();

                if descendant:IsA("BasePart") then
                    local _, v223, v224 = descendant.Color:ToHSV();

                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(64, 84, 99);
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = Color3.fromHSV(math.clamp(v222 + (0.622 - v222) * 0.5, 0, 1), math.clamp(v223 + 0.2 + (0.35 - (v223 + 0.2)) * 0.5, 0, 1), (math.clamp(v224 * 0.65 + (0.29 - v224 * 0.65) * 0.5, 0, 1)));
                    end;
                end;
            end;
        elseif p26 == "Astraeus" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                local v225, _, _ = Color3.fromRGB(140, 0, 255):ToHSV();

                if descendant:IsA("BasePart") then
                    local _, v226, v227 = descendant.Color:ToHSV();

                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 128, 0);
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = Color3.fromHSV(math.clamp(v225, 0, 1), math.clamp(v226 + 0.2, 0, 1), (math.clamp(v227 * 0.65, 0, 1)));
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v228 = Hitbox.Size * 1.4;
                local v229 = general:WaitForChild("astraeustemplate"):Clone();
                local Size = v229.Size;
                v229.Size = v228;

                for _, descendant in pairs(v229:GetDescendants()) do
                    if descendant:IsA("Attachment") then
                        descendant.Position = Vector3.new(descendant.Position.X * (v228.X / Size.X), descendant.Position.Y * (v228.Y / Size.Y), descendant.Position.Z * (v228.Z / Size.Z));
                    end;
                end;

                for _, descendant in ipairs(v229:GetDescendants()) do
                    local v230;

                    if descendant:IsA("ParticleEmitter") then
                        local v231 = math.max(v228.X, v228.Y, v228.Z) / 8;
                        v230 = descendant;
                        local v232 = {};

                        for _, v in ipairs(descendant.Size.Keypoints) do
                            table.insert(v232, NumberSequenceKeypoint.new(v.Time, v.Value * v231, v.Envelope * v231));
                        end;

                        v230.Size = NumberSequence.new(v232);
                    else
                        v230 = descendant;
                    end;

                    if v230:IsA("Beam") then
                        local v233 = math.max(v228.X, v228.Y, v228.Z) / 8;

                        if v230.Width0 then
                            v230.Width0 = v230.Width0 * v233;
                        end;

                        if v230.Width1 then
                            v230.Width1 = v230.Width1 * v233;
                        end;

                        if v230:FindFirstChild("Width") then
                            local Width = v230.Width;

                            if Width then
                                local v234 = {};

                                for _, v in ipairs(Width.Keypoints) do
                                    table.insert(v234, NumberSequenceKeypoint.new(v.Time, v.Value * v233, v.Envelope * v233));
                                end;

                                v230.Width = NumberSequence.new(v234);
                            end;
                        end;

                        if v230.CurveSize0 then
                            v230.CurveSize0 = v230.CurveSize0 * v233;
                        end;

                        if v230.CurveSize1 then
                            v230.CurveSize1 = v230.CurveSize1 * v233;
                        end;
                    end;
                end;

                v229.weld.Part1 = v229;
                v229.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v229.Parent = u25;
            end;
        elseif p26 == "Requies" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                local v235, _, _ = Color3.fromRGB(0, 255, 191):ToHSV();

                if descendant:IsA("BasePart") then
                    local _, v236, v237 = descendant.Color:ToHSV();

                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(0, 255, 204);
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = Color3.fromHSV(math.clamp(v235, 0, 1), math.clamp(v236 + 0.2, 0, 1), (math.clamp(v237 * 0.65, 0, 1)));
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v238 = Hitbox.Size * 1.4;
                local v239 = general:WaitForChild("requiestemplate"):Clone();
                local Size = v239.Size;
                v239.Size = v238;

                for _, descendant in pairs(v239:GetDescendants()) do
                    if descendant:IsA("Attachment") then
                        descendant.Position = Vector3.new(descendant.Position.X * (v238.X / Size.X), descendant.Position.Y * (v238.Y / Size.Y), descendant.Position.Z * (v238.Z / Size.Z));
                    end;
                end;

                resizeMutationTemplate(v239, v238, 8);
                v239.weld.Part1 = v239;
                v239.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v239.Parent = u25;
            end;
        elseif p26 == "Ascended" then
            local Color3_fromRGB_ret = Color3.fromRGB(208, 223, 255);
            local Color3_fromRGB_ret2 = Color3.fromRGB(255, 239, 221);
            local Color3_fromRGB_ret3 = Color3.fromRGB(131, 140, 148);
            local Color3_fromRGB_ret4 = Color3.fromRGB(97, 96, 96);
            local Color3_fromRGB_ret5 = Color3.fromRGB(179, 208, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(161, 158, 148);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v240 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v241 = Random.new(v240):NextInteger(0, 1);
                        descendant.Material = v241 == 1 and Enum.Material.ForceField or Enum.Material.Glass;
                        local v242 = v241 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v243;

                        if v241 == 1 then
                            v243 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v243 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v242;
                        local v244 = { v243, v242 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v245;

                        if v244 then
                            v245 = descendant;

                            for i, v in v244 do
                                v245:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v245 = descendant;
                        end;

                        v245:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v246 = Hitbox.Size * 1.4;
                local v247 = general:WaitForChild("ascendedtemplate"):Clone();
                local Size = v247.Size;
                v247.Size = v246;

                for _, descendant in pairs(v247:GetDescendants()) do
                    if descendant:IsA("Attachment") then
                        descendant.Position = Vector3.new(descendant.Position.X * (v246.X / Size.X), descendant.Position.Y * (v246.Y / Size.Y), descendant.Position.Z * (v246.Z / Size.Z));
                    end;
                end;

                resizeMutationTemplate(v247, v246, 8);
                v247.weld.Part1 = v247;
                v247.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v247.Parent = u25;
            end;
        elseif p26 == "Ocean\'s Ruin" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                local v248, _, _ = Color3.fromRGB(39, 16, 16):ToHSV();

                if descendant:IsA("BasePart") then
                    local _, v249, v250 = descendant.Color:ToHSV();

                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(118, 21, 21);
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = Color3.fromHSV(math.clamp(v248, 0, 1), math.clamp(v249 + 0.2, 0, 1), (math.clamp(v250 * 0.65, 0, 1)));
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v251 = Hitbox.Size * 1.4;
                local v252 = general:WaitForChild("oceansruintemplate"):Clone();
                local Size = v252.Size;
                v252.Size = v251;

                for _, descendant in pairs(v252:GetDescendants()) do
                    if descendant:IsA("Attachment") then
                        descendant.Position = Vector3.new(descendant.Position.X * (v251.X / Size.X), descendant.Position.Y * (v251.Y / Size.Y), descendant.Position.Z * (v251.Z / Size.Z));
                    end;
                end;

                resizeMutationTemplate(v252, v251, 8);
                v252.weld.Part1 = v252;
                v252.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v252.Parent = u25;
            end;
        elseif p26 == "Magical" then
            local Color3_fromRGB_ret = Color3.fromRGB(212, 158, 234);
            local Color3_fromRGB_ret2 = Color3.fromRGB(181, 85, 200);
            local Color3_fromRGB_ret3 = Color3.fromRGB(129, 81, 148);
            local Color3_fromRGB_ret4 = Color3.fromRGB(83, 61, 97);
            local Color3_fromRGB_ret5 = Color3.fromRGB(221, 180, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(135, 122, 161);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v253 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v254 = Random.new(v253):NextInteger(0, 1);
                        descendant.Material = v254 == 1 and Enum.Material.Rock or Enum.Material.RoofShingles;
                        local v255 = v254 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v256;

                        if v254 == 1 then
                            v256 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v256 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v255;
                        local v257 = { v256, v255 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v258;

                        if v257 then
                            v258 = descendant;

                            for i, v in v257 do
                                v258:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v258 = descendant;
                        end;

                        v258:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v259 = u25:GetBoundingBox();
                local v260 = general:WaitForChild("magicaltemplate"):Clone();
                v260.Size = v259;
                v260.weld.Part1 = v260;
                v260.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v260, v259, 4.5);
                v260.Parent = u25;
            end;
        elseif p26 == "Vined" then
            local v261 = { Color3.fromRGB(80, 52, 28), Color3.fromRGB(71, 52, 20) };
            local v262 = { Color3.fromRGB(51, 147, 17), Color3.fromRGB(50, 116, 60) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Transparency == 1 or descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(122, 255, 115);
                        descendant.Material = Enum.Material.Neon;
                    else
                        local v263 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local Random_new_ret = Random.new(v263);
                        local v264 = Random_new_ret:NextNumber(0, 1) < 0.25;
                        local v265 = v264 and v261 and v261 or v262;
                        local v266 = v264 and Enum.Material.Glacier or Enum.Material.Slate;
                        descendant.Color = v265[Random_new_ret:NextInteger(1, #v265)];
                        descendant.Material = v266;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v267 = Hitbox.Size * 1.4;
                local v268 = general:WaitForChild("vinedtemplate"):Clone();
                local Size = v268.Size;
                v268.Size = v267;

                for _, descendant in pairs(v268:GetDescendants()) do
                    if descendant:IsA("Attachment") then
                        descendant.Position = Vector3.new(descendant.Position.X * (v267.X / Size.X), descendant.Position.Y * (v267.Y / Size.Y), descendant.Position.Z * (v267.Z / Size.Z));
                    end;
                end;

                for _, descendant in ipairs(v268:GetDescendants()) do
                    if descendant:IsA("ParticleEmitter") then
                        local v269 = math.max(v267.X, v267.Y, v267.Z) / 8;
                        local v270 = {};

                        for _, v in ipairs(descendant.Size.Keypoints) do
                            table.insert(v270, NumberSequenceKeypoint.new(v.Time, v.Value * v269, v.Envelope * v269));
                        end;

                        descendant.Size = NumberSequence.new(v270);
                    elseif descendant:IsA("Beam") then
                        local v271 = math.max(v267.X, v267.Y, v267.Z) / math.max(Size.X, Size.Y, Size.Z);
                        descendant.Width0 = descendant.Width0 * v271;
                        descendant.Width1 = descendant.Width1 * v271;
                        descendant.TextureLength = descendant.TextureLength * v271;
                        descendant.CurveSize0 = descendant.CurveSize0 * v271 * 1.2;
                        descendant.CurveSize1 = descendant.CurveSize1 * v271 * 1.2;
                    end;
                end;

                v268.weld.Part1 = v268;
                v268.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v268.Parent = u25;
            end;
        elseif p26 == "Skrunkly" then
            local v272 = {
                Color3.fromRGB(226, 227, 202),
                Color3.fromRGB(146, 146, 127),
                Color3.fromRGB(94, 93, 80),
                Color3.fromRGB(61, 56, 44)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(103, 95, 86);
                        descendant.Material = Enum.Material.Neon;
                    elseif not table_freeze_ret[descendant.Name] then
                        descendant.Color = v272[math.random(1, #v272)];
                        descendant.Material = Enum.Material.SmoothPlastic;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v273 = Hitbox.Size * 1.4;
                local v274 = general:WaitForChild("skrunklytemplate"):Clone();
                local _ = v274.Size;
                v274.Size = v273;
                resizeMutationTemplate(v274, v273, 8);
                v274.weld.Part1 = v274;
                v274.weld.Part0 = u25:FindFirstChild("Center");
                v274.Parent = u25;
            end;
        elseif p26 == "Nico\'s Nyantics" then
            local v275 = {
                Color3.fromRGB(252, 140, 164),
                Color3.fromRGB(249, 202, 212),
                Color3.fromRGB(202, 233, 254),
                Color3.fromRGB(251, 226, 195)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(167, 109, 157);
                        descendant.Material = Enum.Material.Neon;
                    elseif not table_freeze_ret[descendant.Name] then
                        descendant.Color = v275[math.random(1, #v275)];
                        descendant.Material = Enum.Material.SmoothPlastic;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v276 = Hitbox.Size * 1.4;
                local v277 = general:WaitForChild("nicotemplate"):Clone();
                local _ = v277.Size;
                v277.Size = v276;
                resizeMutationTemplate(v277, v276, 8);
                v277.weld.Part1 = v277;
                v277.weld.Part0 = u25:FindFirstChild("Center");
                v277.Parent = u25;
            end;
        elseif p26 == "Nocturnal_Night" then
            local v278 = {
                Color3.fromRGB(0, 0, 0),
                Color3.fromRGB(20, 20, 20),
                Color3.fromRGB(40, 40, 40),
                Color3.fromRGB(60, 60, 60)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Transparency == 1 or descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(39, 39, 39);
                        descendant.Material = Enum.Material.Asphalt;
                    else
                        local v279 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        descendant.Color = v278[Random.new(v279):NextInteger(1, #v278)];
                        descendant.Material = Enum.Material.CrackedLava;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v280 = u25:GetBoundingBox();
                local v281 = general:WaitForChild("nocturnaltemplate"):Clone();
                v281.Size = v280 * 0.75;
                v281.weld.Part1 = v281;
                v281.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v281, v280, 4.5);
                local Center = u25:FindFirstChild("Center");

                if Center then
                    for _, descendant in ipairs(v281:GetDescendants()) do
                        if descendant:IsA("Attachment") then
                            descendant.Parent = Center;

                            for _, child in ipairs(descendant:GetChildren()) do
                                if child:IsA("ParticleEmitter") then
                                    child.ZOffset = math.max(v280.X, v280.Y, v280.Z) / 4.5 * 1;
                                end;
                            end;
                        end;
                    end;
                end;

                v281.Parent = u25;
            end;
        elseif p26 == "Nocturnal_Day" then
            local v282 = {
                Color3.fromRGB(20, 20, 20),
                Color3.fromRGB(40, 40, 40),
                Color3.fromRGB(60, 60, 60),
                Color3.fromRGB(80, 80, 80)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Transparency == 1 or descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(63, 63, 63);
                        descendant.Material = Enum.Material.Asphalt;
                    else
                        local v283 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        descendant.Color = v282[Random.new(v283):NextInteger(1, #v282)];
                        descendant.Material = Enum.Material.CrackedLava;
                    end;
                end;
            end;
        elseif p26 == "Flora" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 164, 255);
            local Color3_fromRGB_ret2 = Color3.fromRGB(255, 107, 253);
            local Color3_fromRGB_ret3 = Color3.fromRGB(192, 123, 235);
            local Color3_fromRGB_ret4 = Color3.fromRGB(141, 91, 217);
            local Color3_fromRGB_ret5 = Color3.fromRGB(207, 130, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(192, 169, 197);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        descendant.Material = Enum.Material.Glacier;
                        local v284 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v285 = Random.new(v284):NextInteger(0, 1);
                        local v286 = v285 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v287;

                        if v285 == 1 then
                            v287 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v287 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v286;
                        local v288 = { v287, v286 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v289;

                        if v288 then
                            v289 = descendant;

                            for i, v in v288 do
                                v289:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v289 = descendant;
                        end;

                        v289:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v290 = u25:GetBoundingBox();
                local v291 = general:WaitForChild("floratemplate"):Clone();
                v291.Size = v290;
                v291.weld.Part1 = v291;
                v291.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v291, v290, 4.5);
                v291.Parent = u25;
            end;
        elseif p26 == "Gemstone" then
            local v292 = {
                {
                    Color3.fromRGB(0, 255, 255),
                    Color3.fromRGB(0, 170, 255),
                    Color3.fromRGB(85, 170, 255),
                    Color3.fromRGB(0, 55, 255)
                },
                {
                    Color3.fromRGB(106, 255, 6),
                    Color3.fromRGB(120, 255, 124),
                    Color3.fromRGB(159, 255, 130),
                    Color3.fromRGB(60, 163, 15)
                },
                {
                    Color3.fromRGB(255, 7, 94),
                    Color3.fromRGB(255, 2, 48),
                    Color3.fromRGB(255, 16, 112),
                    Color3.fromRGB(163, 18, 52)
                }
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 0, 255);
                        descendant.Material = Enum.Material.Neon;
                    elseif not table_freeze_ret[descendant.Name] then
                        local v293 = v292[math.random(1, #v292)];
                        descendant.Color = v293[math.random(1, #v293)];
                        descendant.Material = Enum.Material.Glass;

                        if descendant.Transparency ~= 1 then
                            descendant.Transparency = 0.5;
                        end;
                    end;
                end;
            end;
        elseif p26 == "Carrot" then
            local v294 = {
                Color3.fromRGB(255, 234, 0),
                Color3.fromRGB(255, 191, 0),
                Color3.fromRGB(255, 140, 0),
                Color3.fromRGB(255, 106, 0)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 255, 127);
                        descendant.Material = Enum.Material.Neon;
                    elseif not table_freeze_ret[descendant.Name] then
                        descendant.Color = v294[math.random(1, #v294)];
                        descendant.Material = Enum.Material.SmoothPlastic;
                    end;
                end;
            end;
        elseif p26 == "Oscar" then
            local v295 = {
                Color3.fromRGB(167, 0, 0),
                Color3.fromRGB(148, 0, 2),
                Color3.fromRGB(182, 155, 0),
                Color3.fromRGB(193, 154, 0)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 200, 34);
                        descendant.Material = Enum.Material.Neon;
                    elseif not table_freeze_ret[descendant.Name] then
                        local v296 = v295[math.random(1, #v295)];
                        descendant.Color = v296;

                        if v296 == v295[1] or v296 == v295[2] then
                            descendant.Material = Enum.Material.SmoothPlastic;
                        elseif v296 == v295[3] or v296 == v295[4] then
                            descendant.Material = Enum.Material.Metal;
                            descendant.Reflectance = 0.8;
                        end;
                    end;
                end;
            end;
        elseif p26 == "Royal" then
            local v297 = {
                Color3.fromRGB(167, 48, 48),
                Color3.fromRGB(207, 41, 44),
                Color3.fromRGB(255, 204, 0),
                Color3.fromRGB(255, 213, 0)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 200, 34);
                        descendant.Material = Enum.Material.Neon;
                    elseif not table_freeze_ret[descendant.Name] then
                        local v298 = v297[math.random(1, #v297)];
                        descendant.Color = v298;

                        if v298 == v297[1] or v298 == v297[2] then
                            descendant.Material = Enum.Material.Fabric;
                        elseif v298 == v297[3] or v298 == v297[4] then
                            descendant.Material = Enum.Material.Metal;
                            descendant.Reflectance = 0.8;
                        end;
                    end;
                end;
            end;
        elseif p26 == "Sanguine" then
            local v299 = {
                Color3.fromRGB(54, 0, 0),
                Color3.fromRGB(27, 0, 0),
                Color3.fromRGB(168, 0, 0),
                Color3.fromRGB(74, 0, 0),
                Color3.fromRGB(148, 0, 0)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 0, 0);
                        descendant.Material = Enum.Material.Neon;
                    elseif not table_freeze_ret[descendant.Name] then
                        descendant.Color = v299[math.random(1, #v299)];
                        descendant.Material = Enum.Material.SmoothPlastic;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v300 = u25:GetBoundingBox();
                local v301 = general:WaitForChild("sanguinetemplate"):Clone();
                v301.Size = v300;
                v301.weld.Part1 = v301;
                v301.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v301, v300, 4.5);
                v301.Parent = u25;
            end;
        elseif p26 == "Bloom" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name])) then
                    local math_random_ret = math.random(1, 2);
                    local v302;

                    if math_random_ret == 1 then
                        v302 = Color3.fromRGB(118, 102, 153);
                    else
                        v302 = Color3.fromRGB(255, 204, 153);
                    end;

                    local v303;

                    if math_random_ret == 1 then
                        v303 = Enum.Material.Neon;
                    else
                        v303 = Enum.Material.Plastic;
                    end;

                    descendant.Reflectance = 0.2;
                    descendant.Transparency = 0;
                    descendant.Color = v302;
                    descendant.Material = v303;
                end;
            end;
        elseif p26 == "Tentacle Surge" then
            local Color3_fromRGB_ret = Color3.fromRGB(29, 0, 43);
            local Color3_fromRGB_ret2 = Color3.fromRGB(148, 0, 222);
            local v304 = {};

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    table.insert(v304, descendant);
                end;
            end;

            local v305 = #v304;

            for i, v in ipairs(v304) do
                v.Material = Enum.Material.Pebble;
                local v306 = { Color3_fromRGB_ret:Lerp(Color3_fromRGB_ret2, i / v305), v.Color };
                v:SetAttribute("PulseTime", 1);
                local v307;

                if v306 then
                    v307 = v;

                    for i2, v2 in v306 do
                        v307:SetAttribute(`PulseColor{i2}`, v2);
                    end;
                else
                    v307 = v;
                end;

                v307:AddTag("ColorPulse");
            end;
        elseif p26 == "Mother Nature" then
            local v308 = {
                Color3.fromRGB(106, 82, 67),
                Color3.fromRGB(114, 89, 73),
                Color3.fromRGB(100, 77, 63),
                Color3.fromRGB(127, 99, 82),
                Color3.fromRGB(144, 113, 94)
            };
            local Color3_fromRGB_ret = Color3.fromRGB(170, 255, 127);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    if math.random() > 0.5 then
                        descendant.Color = v308[math.random(1, #v308)];
                        descendant.Material = Enum.Material.Wood;
                    else
                        descendant.Color = Color3_fromRGB_ret;
                        descendant.Material = Enum.Material.LeafyGrass;
                    end;
                end;
            end;
        elseif p26 == "Cracked" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    if math.random() > 0.5 then
                        descendant.Color = Color3.fromRGB(255, 170, 0);
                        descendant.Material = Enum.Material.Glass;
                    else
                        descendant.Color = Color3.fromRGB(33, 33, 88);
                        descendant.Material = Enum.Material.Marble;
                    end;
                end;
            end;
        elseif p26 == "Ember" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    if math.random() > 0.5 then
                        descendant.Color = Color3.fromRGB(255, 144, 8);
                        descendant.Material = Enum.Material.Glass;
                    else
                        descendant.Color = Color3.fromRGB(229, 50, 50);
                        descendant.Material = Enum.Material.Glass;
                    end;
                end;
            end;
        elseif p26 == "Emberflame" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    local math_random_ret = math.random(1, 3);

                    if math_random_ret == 1 then
                        descendant.Color = Color3.fromRGB(180, 90, 0);
                        descendant.Material = Enum.Material.Neon;
                    elseif math_random_ret == 2 then
                        descendant.Color = Color3.fromRGB(56, 0, 86);
                        descendant.Material = Enum.Material.Glass;
                    else
                        descendant.Color = Color3.fromRGB(27, 27, 72);
                        descendant.Material = Enum.Material.Marble;
                    end;
                end;
            end;
        elseif p26 == "Cursed Touch" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    if math.random() > 0.5 then
                        descendant.Color = Color3.fromRGB(0, 255, 0);
                        descendant.Material = Enum.Material.Plastic;
                    else
                        descendant.Color = Color3.fromRGB(27, 0, 42);
                        descendant.Material = Enum.Material.Glass;
                    end;
                end;
            end;
        elseif p26 == "Charred" or p26 == "Mila\'s Magic" then
            local v309 = {
                Color3.fromRGB(40, 40, 40),
                Color3.fromRGB(114, 114, 114),
                Color3.fromRGB(25, 25, 25),
                Color3.fromRGB(0, 0, 0),
                Color3.fromRGB(79, 79, 79)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v309[math.random(1, #v309)];
                    descendant.Material = Enum.Material.Slate;
                end;
            end;
        elseif p26 == "Brown Wood" then
            local v310 = {
                Color3.fromRGB(106, 82, 67),
                Color3.fromRGB(114, 89, 73),
                Color3.fromRGB(100, 77, 63),
                Color3.fromRGB(127, 99, 82),
                Color3.fromRGB(144, 113, 94)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v310[math.random(1, #v310)];
                    descendant.Material = Enum.Material.Wood;
                end;
            end;
        elseif p26 == "Gravy" then
            local v311 = {
                Color3.fromRGB(106, 68, 49),
                Color3.fromRGB(114, 67, 48),
                Color3.fromRGB(84, 55, 38),
                Color3.fromRGB(127, 78, 50),
                Color3.fromRGB(144, 101, 71)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v311[math.random(1, #v311)];
                    descendant.Material = Enum.Material.Mud;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v312 = u25:GetBoundingBox();
                local v313 = general:WaitForChild("gravytemplate"):Clone();
                v313.Size = v312;
                v313.weld.Part1 = v313;
                v313.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v313, v312, 4.5);
                v313.Parent = u25;
            end;
        elseif p26 == "Oak" then
            local v314 = {
                Color3.fromRGB(93, 72, 59),
                Color3.fromRGB(108, 84, 69),
                Color3.fromRGB(100, 79, 61),
                Color3.fromRGB(127, 104, 76),
                Color3.fromRGB(134, 104, 78)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v314[math.random(1, #v314)];
                    descendant.Material = Enum.Material.Wood;
                end;
            end;
        elseif p26 == "Boreal" then
            local v315 = {
                Color3.fromRGB(39, 30, 25),
                Color3.fromRGB(26, 20, 17),
                Color3.fromRGB(49, 39, 30),
                Color3.fromRGB(47, 38, 28),
                Color3.fromRGB(29, 22, 17)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v315[math.random(1, #v315)];
                    descendant.Material = Enum.Material.Wood;
                end;
            end;
        elseif p26 == "Cement" then
            local v316 = {
                Color3.fromRGB(93, 93, 93),
                Color3.fromRGB(108, 108, 108),
                Color3.fromRGB(100, 100, 100),
                Color3.fromRGB(127, 127, 127),
                Color3.fromRGB(134, 134, 134)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v316[math.random(1, #v316)];
                    descendant.Material = Enum.Material.Concrete;
                end;
            end;
        elseif p26 == "Vitalic" then
            local v317 = { Color3.fromRGB(116, 215, 160), Color3.fromRGB(97, 188, 110) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v317[math.random(1, #v317)];
                    descendant.Material = Enum.Material.LeafyGrass;
                end;
            end;
        elseif p26 == "Tainted" then
            local v318 = { Color3.fromRGB(168, 92, 255), Color3.fromRGB(109, 61, 168) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v318[math.random(1, #v318)];
                    descendant.Material = Enum.Material.LeafyGrass;
                end;
            end;
        elseif p26 == "Dreaming" then
            local v319 = { Color3.fromRGB(222, 193, 255), Color3.fromRGB(168, 146, 193) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v319[math.random(1, #v319)];
                    descendant.Material = Enum.Material.LeafyGrass;
                end;
            end;
        elseif p26 == "Bliss" then
            local v320 = { Color3.fromRGB(216, 160, 249), Color3.fromRGB(151, 249, 249), Color3.fromRGB(141, 255, 135) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v320[math.random(1, #v320)];
                    descendant.Material = Enum.Material.LeafyGrass;
                end;
            end;
        elseif p26 == "Dirty" then
            local v321 = {
                Color3.fromRGB(135, 113, 102),
                Color3.fromRGB(144, 121, 109),
                Color3.fromRGB(118, 99, 89),
                Color3.fromRGB(102, 85, 77),
                Color3.fromRGB(173, 145, 131)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v321[math.random(1, #v321)];
                    descendant.Material = Enum.Material.Mud;
                end;
            end;
        elseif p26 == "Empyrean" then
            local v322 = {
                Color3.fromRGB(111, 166, 209),
                Color3.fromRGB(114, 172, 216),
                Color3.fromRGB(100, 150, 188),
                Color3.fromRGB(115, 163, 209)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and (not table_freeze_ret[descendant.Name] and descendant.Transparency < 1)) then
                    descendant.Color = v322[math.random(1, #v322)];
                    descendant.Material = Enum.Material.Glass;
                    descendant.Reflectance = -3;
                    descendant.Transparency = 0;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v323 = Size + Vector3.new(Size.X * 1.1, Size.Y * 1.1, Size.Z * 1.1);
                local v324 = general:WaitForChild("empyreantemplate"):Clone();
                v324.Size = v323;
                v324.weld.Part1 = v324;
                v324.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v324.Parent = u25;
            end;
        elseif p26 == "Petrified" then
            local v325 = {
                Color3.fromRGB(135, 135, 135),
                Color3.fromRGB(144, 144, 144),
                Color3.fromRGB(118, 118, 118),
                Color3.fromRGB(102, 102, 102),
                Color3.fromRGB(173, 173, 173)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v325[math.random(1, #v325)];
                    descendant.Material = Enum.Material.Slate;
                elseif descendant.Name == "Eyes" then
                    descendant.Material = Enum.Material.Neon;
                    descendant.Color = Color3.fromRGB(255, 209, 135);
                end;
            end;
        elseif p26 == "Idol\'s Spirit" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 209, 135);
            local Color3_fromRGB_ret2 = Color3.fromRGB(99, 70, 140);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret2, Color3_fromRGB_ret }, { 0.25, 0.05 });
                    else
                        local v326 = {
                            Color3.fromRGB(135, 135, 135),
                            Color3.fromRGB(144, 144, 144),
                            Color3.fromRGB(118, 118, 118),
                            Color3.fromRGB(102, 102, 102),
                            Color3.fromRGB(173, 173, 173)
                        };
                        descendant.Color = v326[math.random(1, #v326)];
                        descendant.Material = Enum.Material.Slate;
                    end;
                end;
            end;
        elseif p26 == "Monstrous" then
            local v327 = {
                Color3.fromRGB(57, 55, 70),
                Color3.fromRGB(71, 70, 88),
                Color3.fromRGB(62, 61, 77),
                Color3.fromRGB(82, 81, 102),
                Color3.fromRGB(50, 49, 62)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v327[math.random(1, #v327)];
                    descendant.Material = Enum.Material.Plastic;
                end;
            end;
        elseif p26 == "Entrenched" then
            local v328 = {
                Color3.fromRGB(40, 49, 74),
                Color3.fromRGB(42, 51, 77),
                Color3.fromRGB(51, 60, 115),
                Color3.fromRGB(48, 57, 109),
                Color3.fromRGB(46, 55, 104)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v328[math.random(1, #v328)];
                    descendant.Material = Enum.Material.Mud;
                end;
            end;
        elseif p26 == "Darkheart" then
            local v329 = { Color3.fromRGB(0, 0, 0) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and not table_freeze_ret[descendant.Name] then
                    descendant.Color = v329[math.random(1, #v329)];
                    descendant.Material = Enum.Material.SmoothPlastic;
                end;
            end;

            local v330 = nil;

            for _, descendant in u25:GetDescendants() do
                if descendant:IsA("BasePart") and descendant.Name == "Eyes" then
                    v330 = descendant;
                    break;
                end;
            end;

            local v331 = v330 or (u25:FindFirstChild("Center") or u25.PrimaryPart);
            local ExtentsSize = u25:GetExtentsSize();

            if not v331 then
                return;
            end;

            local v332 = script.Darkheart:Clone();
            local Mesh = v332.Mesh;
            Mesh.Scale = Mesh.Scale * (ExtentsSize.Magnitude / 2);
            local CFrame_fromOrientation_ret = CFrame.fromOrientation(1.5573921981395802, -0.659891536886536, 0.9143256352422694);
            v332.CFrame = v331.CFrame * CFrame.new(0, ExtentsSize.Y / 4, 0) * CFrame_fromOrientation_ret;
            local WeldConstraint = Instance.new("WeldConstraint");
            WeldConstraint.Name = "darkHeartWeld";
            WeldConstraint.Part0 = v331;
            WeldConstraint.Part1 = v332;
            WeldConstraint.Parent = v331;
            v332.Parent = u25:FindFirstChild("Fish") or u25;
        elseif p26 == "Skeletal" then
            local v333 = { Color3.fromRGB(170, 163, 125), Color3.fromRGB(158, 151, 116), Color3.fromRGB(177, 169, 130) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v333[math.random(1, #v333)];
                    descendant.Material = Enum.Material.Salt;
                end;
            end;
        elseif p26 == "Titanium" then
            local v334 = {
                Color3.fromRGB(96, 104, 118),
                Color3.fromRGB(198, 214, 232),
                Color3.fromRGB(101, 109, 124),
                Color3.fromRGB(192, 204, 238),
                Color3.fromRGB(80, 88, 109)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v334[math.random(1, #v334)];
                    descendant.Material = Enum.Material.Metal;
                    descendant.Reflectance = 0.5;
                end;
            end;
        elseif p26 == "Refined" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Material = Enum.Material.SmoothPlastic;
                    descendant.Reflectance = 2;
                end;
            end;
        elseif p26 == "Scalded" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Material = Enum.Material.Mud;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v335 = Size + Vector3.new(Size.X * 1.1, Size.Y * 1.1, Size.Z * 1.1);
                local v336 = general:WaitForChild("scaldedtemplate"):Clone();
                v336.Size = v335;
                v336.weld.Part1 = v336;
                v336.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v336.Parent = u25;
            end;
        elseif p26 == "Relic" then
            local v337 = { Color3.fromRGB(165, 155, 117), Color3.fromRGB(153, 143, 109), Color3.fromRGB(139, 130, 99) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v337[math.random(1, #v337)];
                    descendant.Material = Enum.Material.Rock;
                end;
            end;
        elseif p26 == "Terro" then
            local v338 = { Color3.fromRGB(48, 30, 34), Color3.fromRGB(128, 80, 90) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v338[math.random(1, #v338)];
                    descendant.Material = Enum.Material.Salt;
                end;
            end;
        elseif p26 == "Marrow" then
            local v339 = {
                Color3.fromRGB(106, 87, 52),
                Color3.fromRGB(130, 106, 64),
                Color3.fromRGB(100, 81, 49),
                Color3.fromRGB(147, 120, 72)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v339[math.random(1, #v339)];
                    descendant.Material = Enum.Material.Marble;
                end;
            end;
        elseif p26 == "Beached" then
            local Color3_fromRGB_ret = Color3.fromRGB(216, 161, 106);
            local v340 = {
                Color3.fromRGB(163, 163, 163),
                Color3.fromRGB(170, 170, 170),
                Color3.fromRGB(171, 156, 102),
                Color3.fromRGB(88, 158, 158),
                Color3.fromRGB(177, 77, 77)
            };
            local Sand = Enum.Material.Sand;
            local Neon = Enum.Material.Neon;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3.fromRGB(46, 192, 255);
                    elseif math.random(1, 100) <= 60 then
                        descendant.Color = Color3_fromRGB_ret;
                        descendant.Material = Sand;
                    else
                        descendant.Color = v340[math.random(1, #v340)];
                        descendant.Material = Neon;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v341 = Hitbox.Size * 1.25;
                local v342 = general:WaitForChild("beachedtemplate"):Clone();
                v342.Size = v341;
                v342.weld.Part1 = v342;
                v342.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v342.CFrame = v342.weld.Part0.CFrame;
                local _ = math.max(v341.X, v341.Y, v341.Z) / 2;
                local _ = math.max(v341.X, v341.Y, v341.Z) / 2;
                local v343 = v341.Magnitude / 2;

                for _, descendant in v342:GetDescendants() do
                    if descendant:IsA("ParticleEmitter") then
                        local v344 = {};

                        for _, v in descendant.Size.Keypoints do
                            table.insert(v344, NumberSequenceKeypoint.new(v.Time, v.Value * v343, v.Envelope * v343));
                        end;

                        descendant.Size = NumberSequence.new(v344);
                    end;
                end;

                v342.Parent = u25;
                local Center = u25:FindFirstChild("Center");

                if Center then
                    for _, descendant in ipairs(v342:GetDescendants()) do
                        if descendant:IsA("Attachment") then
                            descendant.Parent = Center;

                            for _, child in ipairs(descendant:GetChildren()) do
                                if child:IsA("ParticleEmitter") then
                                    child.ZOffset = math.max(v341.X, v341.Y, v341.Z) / 4.5 * 1;
                                end;
                            end;
                        end;
                    end;
                end;

                local v345 = nil;

                for _, descendant in u25:GetDescendants() do
                    if descendant:IsA("BasePart") and descendant.Name == "Eyes" then
                        v345 = descendant;
                        break;
                    end;
                end;

                local v346 = v345 or (u25:FindFirstChild("Center") or u25.PrimaryPart);
                local ExtentsSize = u25:GetExtentsSize();

                if not v346 then
                    return;
                end;

                local v347 = script.Umbrella:Clone();
                local Mesh = v347.Mesh;
                Mesh.Scale = Mesh.Scale * (ExtentsSize.Magnitude / 6);
                local Weld = Instance.new("Weld");
                Weld.Name = "UmbrellaWeld";
                Weld.Part0 = v346;
                Weld.Part1 = v347;
                Weld.C1 = v346.CFrame - v346.Position + Vector3.new(0, -(ExtentsSize.Y / 4 - v347.Mesh.Scale.Y), 0);
                v347.CFrame = v346.CFrame * Weld.C0:Inverse();
                Weld.Parent = v346;
                v347.Parent = u25:FindFirstChild("Fish") or u25;
            end;
        elseif p26 == "Tropical" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 213, 139);
            local v348 = { Color3.fromRGB(75, 151, 75), Color3.fromRGB(95, 191, 95), Color3.fromRGB(118, 206, 94) };
            local Slate = Enum.Material.Slate;
            local Grass = Enum.Material.Grass;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3.fromRGB(194, 148, 95);
                    elseif math.random(1, 100) <= 60 then
                        descendant.Color = Color3_fromRGB_ret;
                        descendant.Material = Slate;
                    else
                        descendant.Color = v348[math.random(1, #v348)];
                        descendant.Material = Grass;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v349 = Hitbox.Size * 1.25;
                local v350 = general:WaitForChild("tropicaltemplate"):Clone();
                v350.Size = v349;
                v350.weld.Part1 = v350;
                v350.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                local _ = math.max(v349.X, v349.Y, v349.Z) / 2;
                local _ = math.max(v349.X, v349.Y, v349.Z) / 2;
                local v351 = v349.Magnitude / 2;

                for _, descendant in v350:GetDescendants() do
                    if descendant:IsA("ParticleEmitter") then
                        local v352 = {};

                        for _, v in descendant.Size.Keypoints do
                            table.insert(v352, NumberSequenceKeypoint.new(v.Time, v.Value * v351, v.Envelope * v351));
                        end;

                        descendant.Size = NumberSequence.new(v352);
                    end;
                end;

                v350.Parent = u25;
            end;
        elseif p26 == "Paradise" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 93, 136);
            local v353 = { Color3.fromRGB(255, 160, 64), Color3.fromRGB(39, 219, 255), Color3.fromRGB(255, 128, 168) };
            local Slate = Enum.Material.Slate;
            local Slate2 = Enum.Material.Slate;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3.fromRGB(194, 148, 95);
                    elseif math.random(1, 100) <= 60 then
                        descendant.Color = Color3_fromRGB_ret;
                        descendant.Material = Slate;
                    else
                        descendant.Color = v353[math.random(1, #v353)];
                        descendant.Material = Slate2;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v354 = Hitbox.Size * 1.25;
                local v355 = general:WaitForChild("paradisetemplate"):Clone();
                v355.Size = v354;
                v355.weld.Part1 = v355;
                v355.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                local _ = math.max(v354.X, v354.Y, v354.Z) / 2;
                local _ = math.max(v354.X, v354.Y, v354.Z) / 2;
                local v356 = v354.Magnitude / 2;

                for _, descendant in v355:GetDescendants() do
                    if descendant:IsA("ParticleEmitter") then
                        local v357 = {};

                        for _, v in descendant.Size.Keypoints do
                            table.insert(v357, NumberSequenceKeypoint.new(v.Time, v.Value * v356, v.Envelope * v356));
                        end;

                        descendant.Size = NumberSequence.new(v357);
                    end;
                end;

                v355.Parent = u25;
            end;
        elseif p26 == "Luminous" then
            local Color3_fromRGB_ret = Color3.fromRGB(62, 90, 150);
            local v358 = { Color3.fromRGB(3, 138, 186), Color3.fromRGB(6, 156, 186), Color3.fromRGB(4, 101, 186) };
            local Metal = Enum.Material.Metal;
            local Neon = Enum.Material.Neon;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3.fromRGB(3, 138, 186);
                    elseif math.random(1, 100) <= 60 then
                        descendant.Color = Color3_fromRGB_ret;
                        descendant.Material = Metal;
                    else
                        descendant.Color = v358[math.random(1, #v358)];
                        descendant.Material = Neon;
                    end;
                end;
            end;
        elseif p26 == "Scavenged" then
            local Color3_fromRGB_ret = Color3.fromRGB(27, 42, 53);
            local v359 = { Color3.fromRGB(128, 187, 219) };
            local Plastic = Enum.Material.Plastic;
            local Neon = Enum.Material.Neon;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3.fromRGB(128, 187, 219);
                    elseif math.random(1, 100) <= 50 then
                        descendant.Color = Color3_fromRGB_ret;
                        descendant.Material = Plastic;
                    else
                        descendant.Color = v359[math.random(1, #v359)];
                        descendant.Material = Neon;
                    end;
                end;
            end;
        elseif p26 == "Prism" then
            local v360 = {
                Color3.fromRGB(212, 63, 63),
                Color3.fromRGB(212, 145, 63),
                Color3.fromRGB(212, 212, 62),
                Color3.fromRGB(135, 212, 62),
                Color3.fromRGB(59, 212, 130),
                Color3.fromRGB(61, 159, 212),
                Color3.fromRGB(62, 62, 212),
                Color3.fromRGB(136, 61, 212),
                Color3.fromRGB(212, 62, 192)
            };
            local v361 = {
                Color3.fromRGB(212, 112, 112),
                Color3.fromRGB(212, 167, 112),
                Color3.fromRGB(212, 212, 112),
                Color3.fromRGB(162, 212, 112),
                Color3.fromRGB(112, 212, 157),
                Color3.fromRGB(112, 177, 212),
                Color3.fromRGB(112, 112, 212),
                Color3.fromRGB(160, 112, 212),
                Color3.fromRGB(212, 112, 199)
            };
            local Glass = Enum.Material.Glass;
            local Neon = Enum.Material.Neon;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Glass;
                    elseif math.random(1, 100) <= 80 then
                        descendant.Color = v360[math.random(1, #v360)];
                        descendant.Material = Glass;
                        descendant.Transparency = 0.25;
                    else
                        descendant.Color = v361[math.random(1, #v361)];
                        descendant.Material = Neon;
                    end;
                end;
            end;
        elseif p26 == "Kaito\'s Blessing" then
            local Color3_fromRGB_ret = Color3.fromRGB(138, 112, 96);
            local v362 = { Color3.fromRGB(98, 97, 99), Color3.fromRGB(196, 105, 98) };
            local Wood = Enum.Material.Wood;
            local Metal = Enum.Material.Metal;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3.fromRGB(247, 188, 100);
                    elseif math.random(1, 100) <= 50 then
                        descendant.Color = Color3_fromRGB_ret;
                        descendant.Material = Wood;
                    else
                        descendant.Color = v362[math.random(1, #v362)];
                        descendant.Material = Metal;
                    end;
                end;
            end;
        elseif p26 == "Dune" then
            local Color3_fromRGB_ret = Color3.fromRGB(182, 150, 113);
            local v363 = { Color3.fromRGB(173, 154, 131), Color3.fromRGB(191, 169, 145), Color3.fromRGB(157, 139, 119) };
            local Sandstone = Enum.Material.Sandstone;
            local Neon = Enum.Material.Neon;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3.fromRGB(194, 148, 95);
                    elseif math.random(1, 100) <= 80 then
                        descendant.Color = Color3_fromRGB_ret;
                        descendant.Material = Sandstone;
                    else
                        descendant.Color = v363[math.random(1, #v363)];
                        descendant.Material = Neon;
                    end;
                end;
            end;
        elseif p26 == "Photical" then
            local Color3_fromRGB_ret = Color3.fromRGB(213, 62, 90);
            local v364 = { Color3.fromRGB(87, 53, 60), Color3.fromRGB(95, 54, 69), Color3.fromRGB(79, 48, 51) };
            local Neon = Enum.Material.Neon;
            local Salt = Enum.Material.Salt;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3.fromRGB(194, 148, 95);
                    elseif math.random(1, 100) <= 65 then
                        descendant.Color = Color3_fromRGB_ret;
                        descendant.Material = Neon;
                    else
                        descendant.Color = v364[math.random(1, #v364)];
                        descendant.Material = Salt;
                    end;
                end;
            end;
        elseif p26 == "Starshell" then
            local Color3_fromRGB_ret = Color3.fromRGB(252, 221, 181);
            local v365 = {
                Color3.fromRGB(255, 123, 242),
                Color3.fromRGB(83, 209, 255),
                Color3.fromRGB(98, 255, 129),
                Color3.fromRGB(255, 255, 101),
                Color3.fromRGB(255, 151, 99),
                Color3.fromRGB(255, 89, 89)
            };
            local Sand = Enum.Material.Sand;
            local Plastic = Enum.Material.Plastic;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3.fromRGB(255, 189, 56);
                    elseif math.random(1, 100) <= 60 then
                        descendant.Color = Color3_fromRGB_ret;
                        descendant.Material = Sand;
                    else
                        descendant.Color = v365[math.random(1, #v365)];
                        descendant.Material = Plastic;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v366 = u25:GetBoundingBox();
                local v367 = general:WaitForChild("starshelltemplate"):Clone();
                v367.Size = v366;
                v367.weld.Part1 = v367;
                v367.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v367, v366, 4.5);
                v367.Parent = u25;
            end;
        elseif p26 == "Sand Castled" then
            local v368 = {
                Color3.fromRGB(221, 195, 159),
                Color3.fromRGB(199, 176, 144),
                Color3.fromRGB(185, 163, 134),
                Color3.fromRGB(252, 221, 181),
                Color3.fromRGB(227, 199, 163)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    descendant.Color = v368[math.random(1, #v368)];
                    descendant.Material = Enum.Material.Sand;
                end;
            end;

            local v369 = nil;

            for _, descendant in u25:GetDescendants() do
                if descendant:IsA("BasePart") and descendant.Name == "Eyes" then
                    v369 = descendant;
                    break;
                end;
            end;

            local v370 = v369 or (u25:FindFirstChild("Center") or u25.PrimaryPart);
            local v371 = u25:FindFirstChild("Hitbox") and u25.Hitbox.Size or u25:GetExtentsSize();

            if not v370 then
                return;
            end;

            local v372 = script.SandCastle:Clone();
            v372.Size = v372.Size * (v371.Magnitude / 6);
            local Weld = Instance.new("Weld");
            Weld.Name = "CrownWeld";
            Weld.Part0 = v370;
            Weld.Part1 = v372;
            Weld.C1 = CFrame.new((Vector3.new(0, v371.Y * -0.1, 0))) * (v370.CFrame - v370.CFrame.Position);
            v372.CFrame = v370.CFrame * Weld.C0:Inverse();
            Weld.Parent = v370;
            v372.Parent = u25:FindFirstChild("Fish") or u25;
        elseif p26 == "Splashed" then
            local v373 = { Color3.fromRGB(55, 121, 165), Color3.fromRGB(66, 146, 199), Color3.fromRGB(64, 142, 191) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v373[math.random(1, #v373)];
                    descendant.Material = Enum.Material.Plastic;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v374 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v375 = general:WaitForChild("splashedtemplate"):Clone();
                v375.Size = v374;
                v375.weld.Part1 = v375;
                v375.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v375.Parent = u25;
            end;
        elseif p26 == "Tiki" then
            local v376 = {
                Color3.fromRGB(196, 119, 56),
                Color3.fromRGB(154, 94, 44),
                Color3.fromRGB(196, 101, 57),
                Color3.fromRGB(166, 101, 48),
                Color3.fromRGB(213, 129, 61)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v376[math.random(1, #v376)];
                    descendant.Material = Enum.Material.Wood;
                end;
            end;

            local v377 = nil;

            for _, descendant in u25:GetDescendants() do
                if descendant:IsA("BasePart") and descendant.Name == "Eyes" then
                    v377 = descendant;
                    break;
                end;
            end;

            local v378 = v377 or (u25:FindFirstChild("Center") or u25.PrimaryPart);
            local v379 = u25:FindFirstChild("Hitbox") and u25.Hitbox.Size or u25:GetExtentsSize();

            if not v378 then
                return;
            end;

            local v380 = script.TikiMask:Clone();
            v380.Size = v380.Size * (v379.Magnitude / 6);
            local Weld = Instance.new("Weld");
            Weld.Name = "CrownWeld";
            Weld.Part0 = v378;
            Weld.Part1 = v380;
            Weld.C1 = CFrame.new((Vector3.new(0, v379.Y * -0.1, 0))) * (v378.CFrame - v378.CFrame.Position);
            v380.CFrame = v378.CFrame * Weld.C0:Inverse();
            Weld.Parent = v378;
            v380.Parent = u25:FindFirstChild("Fish") or u25;
        elseif p26 == "Floatie" then
            local v381 = {
                Color3.fromRGB(13, 105, 172),
                Color3.fromRGB(19, 157, 255),
                Color3.fromRGB(193, 100, 187),
                Color3.fromRGB(41, 166, 207),
                Color3.fromRGB(213, 115, 61),
                Color3.fromRGB(87, 198, 101),
                Color3.fromRGB(255, 255, 0)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v381[math.random(1, #v381)];
                    descendant.Material = Enum.Material.SmoothPlastic;
                end;
            end;
        elseif p26 == "Beach Ball" then
            local v382 = {
                Color3.fromRGB(248, 248, 248),
                Color3.fromRGB(247, 247, 247),
                Color3.fromRGB(249, 249, 249),
                Color3.fromRGB(9, 137, 207),
                Color3.fromRGB(196, 40, 28),
                Color3.fromRGB(245, 205, 48)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v382[math.random(1, #v382)];
                    descendant.Material = Enum.Material.SmoothPlastic;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v383 = u25:GetBoundingBox();
                local v384 = general:WaitForChild("beachballtemplate"):Clone();
                v384.Size = v383;
                v384.weld.Part1 = v384;
                v384.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v384, v383, 4.5);
                v384.Parent = u25;
            end;
        elseif p26 == "Creamsicle" then
            local v385 = {
                Color3.fromRGB(255, 149, 57),
                Color3.fromRGB(255, 142, 62),
                Color3.fromRGB(240, 109, 70),
                Color3.fromRGB(235, 235, 235),
                Color3.fromRGB(255, 252, 247)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v385[math.random(1, #v385)];
                    descendant.Material = Enum.Material.SmoothPlastic;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v386 = u25:GetBoundingBox();
                local v387 = general:WaitForChild("creamsicletemplate"):Clone();
                v387.Size = v386;
                v387.weld.Part1 = v387;
                v387.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v387, v386, 4.5);
                v387.Parent = u25;
            end;
        elseif p26 == "Electrified" then
            local v388 = {
                Color3.fromRGB(255, 225, 74),
                Color3.fromRGB(255, 214, 65),
                Color3.fromRGB(255, 232, 147),
                Color3.fromRGB(245, 205, 62),
                Color3.fromRGB(255, 252, 247)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v388[math.random(1, #v388)];
                    descendant.Material = Enum.Material.Neon;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v389 = u25:GetBoundingBox();
                local v390 = general:WaitForChild("electrifiedtemplate"):Clone();
                v390.Size = v389;
                v390.weld.Part1 = v390;
                v390.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v390, v389, 4.5);
                v390.Parent = u25;
            end;
        elseif p26 == "Lemon" then
            local v391 = {
                Color3.fromRGB(255, 225, 74),
                Color3.fromRGB(255, 214, 65),
                Color3.fromRGB(240, 212, 70),
                Color3.fromRGB(245, 205, 62),
                Color3.fromRGB(255, 252, 247)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v391[math.random(1, #v391)];
                    descendant.Material = Enum.Material.SmoothPlastic;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v392 = u25:GetBoundingBox();
                local v393 = general:WaitForChild("lemontemplate"):Clone();
                v393.Size = v392;
                v393.weld.Part1 = v393;
                v393.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v393, v392, 4.5);
                v393.Parent = u25;
            end;
        elseif p26 == "Lime" then
            local v394 = {
                Color3.fromRGB(125, 255, 55),
                Color3.fromRGB(167, 255, 73),
                Color3.fromRGB(126, 188, 68),
                Color3.fromRGB(148, 220, 81),
                Color3.fromRGB(235, 255, 58)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v394[math.random(1, #v394)];
                    descendant.Material = Enum.Material.Leather;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v395 = u25:GetBoundingBox();
                local v396 = general:WaitForChild("limetemplate"):Clone();
                v396.Size = v395;
                v396.weld.Part1 = v396;
                v396.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v396, v395, 4.5);
                v396.Parent = u25;
            end;
        elseif p26 == "Banana" then
            local v397 = {
                Color3.fromRGB(255, 230, 139),
                Color3.fromRGB(255, 239, 179),
                Color3.fromRGB(240, 209, 155),
                Color3.fromRGB(245, 231, 174),
                Color3.fromRGB(255, 252, 247)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v397[math.random(1, #v397)];
                    descendant.Material = Enum.Material.Glacier;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v398 = u25:GetBoundingBox();
                local v399 = general:WaitForChild("bananatemplate"):Clone();
                v399.Size = v398;
                v399.weld.Part1 = v399;
                v399.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v399, v398, 4.5);
                v399.Parent = u25;
            end;
        elseif p26 == "Strawberry" then
            local v400 = {
                Color3.fromRGB(255, 79, 126),
                Color3.fromRGB(255, 131, 187),
                Color3.fromRGB(188, 69, 81),
                Color3.fromRGB(220, 71, 116),
                Color3.fromRGB(99, 45, 68)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v400[math.random(1, #v400)];
                    descendant.Material = Enum.Material.SmoothPlastic;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v401 = u25:GetBoundingBox();
                local v402 = general:WaitForChild("strawberrytemplate"):Clone();
                v402.Size = v401;
                v402.weld.Part1 = v402;
                v402.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v402, v401, 4.5);
                v402.Parent = u25;
            end;
        elseif p26 == "Lavender" then
            local v403 = {
                Color3.fromRGB(202, 149, 255),
                Color3.fromRGB(216, 181, 255),
                Color3.fromRGB(255, 184, 216),
                Color3.fromRGB(198, 163, 220),
                Color3.fromRGB(81, 68, 99)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v403[math.random(1, #v403)];
                    descendant.Material = Enum.Material.SmoothPlastic;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v404 = u25:GetBoundingBox();
                local v405 = general:WaitForChild("lavendertemplate"):Clone();
                v405.Size = v404;
                v405.weld.Part1 = v405;
                v405.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v405, v404, 4.5);
                v405.Parent = u25;
            end;
        elseif p26 == "Blueberry" then
            local v406 = {
                Color3.fromRGB(98, 187, 255),
                Color3.fromRGB(176, 184, 255),
                Color3.fromRGB(103, 123, 255),
                Color3.fromRGB(152, 185, 220),
                Color3.fromRGB(59, 59, 99)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v406[math.random(1, #v406)];
                    descendant.Material = Enum.Material.Pebble;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v407 = u25:GetBoundingBox();
                local v408 = general:WaitForChild("blueberrytemplate"):Clone();
                v408.Size = v407;
                v408.weld.Part1 = v408;
                v408.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v408, v407, 4.5);
                v408.Parent = u25;
            end;
        elseif p26 == "Sour" then
            local v409 = {
                Color3.fromRGB(190, 255, 51),
                Color3.fromRGB(167, 255, 73),
                Color3.fromRGB(126, 188, 68),
                Color3.fromRGB(190, 220, 80),
                Color3.fromRGB(235, 255, 58)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v409[math.random(1, #v409)];
                    descendant.Material = Enum.Material.Glacier;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v410 = u25:GetBoundingBox();
                local v411 = general:WaitForChild("sourtemplate"):Clone();
                v411.Size = v410;
                v411.weld.Part1 = v411;
                v411.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v411, v410, 4.5);
                v411.Parent = u25;
            end;
        elseif p26 == "Refracted" then
            local v412 = { Color3.fromRGB(255, 105, 145), Color3.fromRGB(229, 216, 255), Color3.fromRGB(74, 137, 255) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and not table_freeze_ret[descendant.Name] then
                    descendant.Material = Enum.Material.Neon;

                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 255, 255);
                    else
                        descendant.Color = v412[math.random(1, #v412)];
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v413 = u25:GetBoundingBox();
                local v414 = general:WaitForChild("refractedtemplate"):Clone();
                v414.Size = v413;
                v414.weld.Part1 = v414;
                v414.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v414, v413, 4.5);
                v414.Parent = u25;
            end;
        elseif p26 == "Tanned" then
            local v415 = {
                Color3.fromRGB(162, 74, 52),
                Color3.fromRGB(131, 60, 42),
                Color3.fromRGB(167, 76, 54),
                Color3.fromRGB(162, 89, 52),
                Color3.fromRGB(149, 64, 49)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v415[math.random(1, #v415)];
                    descendant.Material = Enum.Material.Plastic;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v416 = u25:GetBoundingBox();
                local v417 = general:WaitForChild("tannedtemplate"):Clone();
                v417.Size = v416;
                v417.weld.Part1 = v417;
                v417.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v417, v416, 4.5);
                v417.Parent = u25;
            end;
        elseif p26 == "Super-Tanned" then
            local v418 = {
                Color3.fromRGB(62, 18, 12),
                Color3.fromRGB(72, 21, 14),
                Color3.fromRGB(111, 32, 21),
                Color3.fromRGB(42, 12, 8),
                Color3.fromRGB(62, 24, 11)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v418[math.random(1, #v418)];
                    descendant.Material = Enum.Material.Plastic;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v419 = u25:GetBoundingBox();
                local v420 = general:WaitForChild("super-tannedtemplate"):Clone();
                v420.Size = v419;
                v420.weld.Part1 = v420;
                v420.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v420, v419, 4.5);
                v420.Parent = u25;
            end;
        elseif p26 == "Counterfeit" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = Color3.fromRGB(56, 52, 52);
                    descendant.Material = Enum.Material.Pebble;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v421 = u25:GetBoundingBox();
                local v422 = general:WaitForChild("counterfeittemplate"):Clone();
                v422.Size = v421;
                v422.weld.Part1 = v422;
                v422.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v422, v421, 4.5);
                v422.Parent = u25;
            end;
        elseif p26 == "Contraband" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = Color3.fromRGB(48, 4, 4);
                    descendant.Material = Enum.Material.SmoothPlastic;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v423 = u25:GetBoundingBox();
                local v424 = general:WaitForChild("contrabandtemplate"):Clone();
                v424.Size = v423;
                v424.weld.Part1 = v424;
                v424.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v424, v423, 4.5);
                v424.Parent = u25;
            end;
        elseif p26 == "Glitched" then
            local v425 = {
                Color3.fromRGB(0, 0, 0),
                Color3.fromRGB(1, 0, 0),
                Color3.fromRGB(0, 0, 1),
                Color3.fromRGB(53, 244, 53),
                Color3.fromRGB(57, 255, 57),
                Color3.fromRGB(55, 255, 72),
                Color3.fromRGB(49, 220, 49),
                Color3.fromRGB(97, 255, 194)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and not table_freeze_ret[descendant.Name] then
                    descendant.Color = v425[math.random(1, #v425)];
                    descendant.Material = Enum.Material.Neon;
                end;
            end;
        elseif p26 == "Shady" then
            local v426 = {
                Color3.fromRGB(66, 66, 66),
                Color3.fromRGB(144, 144, 144),
                Color3.fromRGB(118, 118, 118),
                Color3.fromRGB(75, 75, 75),
                Color3.fromRGB(118, 118, 118)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v426[math.random(1, #v426)];
                    descendant.Material = Enum.Material.Rock;
                end;
            end;
        elseif p26 == "Barnacle" then
            local v427 = { Color3.fromRGB(132, 132, 0), Color3.fromRGB(88, 88, 0) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v427[math.random(1, #v427)];
                    descendant.Material = Enum.Material.Limestone;
                end;
            end;
        elseif p26 == "Blackwater" then
            local v428 = { Color3.fromRGB(12, 38, 52), Color3.fromRGB(19, 61, 83), Color3.fromRGB(8, 24, 33) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v428[math.random(1, #v428)];
                    descendant.Material = Enum.Material.Foil;
                end;
            end;
        elseif p26 == "Sludged" then
            local v429 = {
                Color3.fromRGB(125, 84, 176),
                Color3.fromRGB(137, 93, 194),
                Color3.fromRGB(113, 77, 161),
                Color3.fromRGB(107, 73, 152),
                Color3.fromRGB(89, 61, 127)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v429[math.random(1, #v429)];
                    descendant.Material = Enum.Material.SmoothPlastic;
                    descendant.Transparency = 0.5;
                end;
            end;
        elseif p26 == "Stone" then
            local v430 = {
                Color3.fromRGB(135, 135, 135),
                Color3.fromRGB(144, 144, 144),
                Color3.fromRGB(118, 118, 118),
                Color3.fromRGB(102, 102, 102),
                Color3.fromRGB(173, 173, 173)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v430[math.random(1, #v430)];
                    descendant.Material = Enum.Material.Rock;
                end;
            end;
        elseif p26 == "Departed" then
            local v431 = { Color3.fromRGB(26, 26, 26) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v431[math.random(1, #v431)];
                    descendant.Material = Enum.Material.SmoothPlastic;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v432 = u25:GetBoundingBox();
                local v433 = general:WaitForChild("departedtemplate"):Clone();
                v433.Size = v432;
                v433.weld.Part1 = v433;
                v433.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v433, v432, 4.5);
                v433.Parent = u25;
            end;

            local Center = u25:FindFirstChild("Center");

            if p27 and (p27.Name == "🦋" and (p27.Shiny and Center)) then
                for _, v in u25:QueryDescendants("BasePart") do
                    v.Transparency = 1;
                end;

                local v434 = script.DepartedButterflyEmoji:Clone();
                v434.CFrame = Center.CFrame * v434.weld.C0;
                v434.weld.Part0 = Center;
                v434.Size = v434.Size * u25:GetScale();
                v434.Parent = u25;
            end;
        elseif p26 == "Fluttering" then
            local v435 = { Color3.fromRGB(226, 226, 226) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v435[math.random(1, #v435)];
                    descendant.Material = Enum.Material.SmoothPlastic;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v436 = u25:GetBoundingBox();
                local v437 = general:WaitForChild("flutteringtemplate"):Clone();
                v437.Size = v436;
                v437.weld.Part1 = v437;
                v437.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v437, v436, 4.5);
                v437.Parent = u25;
            end;

            local Center = u25:FindFirstChild("Center");

            if p27 and (p27.Name == "🦋" and (p27.Shiny and Center)) then
                for _, v in u25:QueryDescendants("BasePart") do
                    v.Transparency = 1;
                end;

                local v438 = script.DepartedButterflyEmoji:Clone();
                v438.CFrame = Center.CFrame * v438.weld.C0;
                v438.weld.Part0 = Center;
                v438.Size = v438.Size * u25:GetScale();
                v438.Parent = u25;
            end;
        elseif p26 == "Acidic" then
            local v439 = {
                Color3.fromRGB(0, 135, 0),
                Color3.fromRGB(20, 148, 0),
                Color3.fromRGB(0, 184, 0),
                Color3.fromRGB(55, 0, 173),
                Color3.fromRGB(68, 0, 214),
                Color3.fromRGB(74, 0, 165)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v439[math.random(1, #v439)];
                    descendant.Material = Enum.Material.Neon;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v440 = u25:GetBoundingBox();
                local v441 = general:WaitForChild("acidictemplate"):Clone();
                v441.Size = v440;
                v441.weld.Part1 = v441;
                v441.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v441, v440, 4.5);
                v441.Parent = u25;
            end;
        elseif p26 == "Hades\' Curse" then
            local v442 = {
                Color3.fromRGB(117, 255, 204),
                Color3.fromRGB(114, 255, 137),
                Color3.fromRGB(49, 255, 152),
                Color3.fromRGB(138, 255, 216)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and not table_freeze_ret[descendant.Name] then
                    local v443 = v442[math.random(1, #v442)];

                    if descendant.Name == "Eyes" then
                        descendant.Color = v443;
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = v443;
                        descendant.Material = Enum.Material.ForceField;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v444 = u25:GetBoundingBox();
                local v445 = general:WaitForChild("hadescursetemplate"):Clone();
                v445.Size = v444;
                v445.weld.Part1 = v445;
                v445.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v445, v444, 4.5);
                v445.Parent = u25;
            end;
        elseif p26 == "Soultouched" then
            local v446 = {
                Color3.fromRGB(201, 255, 235),
                Color3.fromRGB(199, 255, 210),
                Color3.fromRGB(179, 255, 211),
                Color3.fromRGB(216, 255, 243)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and not table_freeze_ret[descendant.Name] then
                    local v447 = v446[math.random(1, #v446)];

                    if descendant.Name == "Eyes" then
                        descendant.Color = v447;
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = v447;
                        descendant.Material = Enum.Material.ForceField;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v448 = u25:GetBoundingBox();
                local v449 = general:WaitForChild("soultouchedtemplate"):Clone();
                v449.Size = v448;
                v449.weld.Part1 = v449;
                v449.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v449, v448, 4.5);
                v449.Parent = u25;
            end;
        elseif p26 == "Bellona\'s Fury" then
            local v450 = { Color3.fromRGB(74, 46, 38), Color3.fromRGB(88, 55, 46), Color3.fromRGB(196, 123, 102) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and not table_freeze_ret[descendant.Name] then
                    local v451 = v450[math.random(1, #v450)];

                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 133, 111);
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = v451;
                        descendant.Material = Enum.Material.Rock;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v452 = u25:GetBoundingBox();
                local v453 = general:WaitForChild("bellonasfurytemplate"):Clone();
                v453.Size = v452;
                v453.weld.Part1 = v453;
                v453.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v453, v452, 4.5);
                v453.Parent = u25;
            end;
        elseif p26 == "Olympian" then
            local v454 = { Color3.fromRGB(80, 63, 56), Color3.fromRGB(99, 78, 72), Color3.fromRGB(67, 53, 49) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and not table_freeze_ret[descendant.Name] then
                    local v455 = v454[math.random(1, #v454)];

                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 173, 165);
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = v455;
                        descendant.Material = Enum.Material.Salt;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v456 = u25:GetBoundingBox();
                local v457 = general:WaitForChild("olympiantemplate"):Clone();
                v457.Size = v456;
                v457.weld.Part1 = v457;
                v457.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v457, v456, 4.5);
                v457.Parent = u25;
            end;
        elseif p26 == "Poseidon\'s Blessing" then
            local v458 = { Color3.fromRGB(32, 70, 126), Color3.fromRGB(113, 159, 255), Color3.fromRGB(79, 111, 180) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and not table_freeze_ret[descendant.Name] then
                    local v459 = v458[math.random(1, #v458)];

                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(95, 132, 255);
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = v459;
                        descendant.Material = Enum.Material.Glass;
                        descendant.Transparency = 0.4;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v460 = Hitbox.Size * 1.4;
                local v461 = general:WaitForChild("poseidonsblessingtemplate"):Clone();
                local Size = v461.Size;
                v461.Size = v460;

                for _, descendant in pairs(v461:GetDescendants()) do
                    if descendant:IsA("Attachment") then
                        descendant.Position = Vector3.new(descendant.Position.X * (v460.X / Size.X), descendant.Position.Y * (v460.Y / Size.Y), descendant.Position.Z * (v460.Z / Size.Z));
                    end;
                end;

                resizeMutationTemplate(v461, v460, 8);
                v461.weld.Part1 = v461;
                v461.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v461.Parent = u25;
            end;
        elseif p26 == "Sovereign" then
            local Color3_fromRGB_ret = Color3.fromRGB(174, 149, 255);
            local Color3_fromRGB_ret2 = Color3.fromRGB(143, 145, 255);
            local Color3_fromRGB_ret3 = Color3.fromRGB(149, 172, 255);
            local Color3_fromRGB_ret4 = Color3.fromRGB(173, 157, 255);
            local Color3_fromRGB_ret5 = Color3.fromRGB(183, 176, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(201, 194, 255);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v462 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v463 = Random.new(v462):NextInteger(0, 1);
                        descendant.Material = v463 == 1 and Enum.Material.ForceField or Enum.Material.Rock;
                        local v464 = v463 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v465;

                        if v463 == 1 then
                            v465 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v465 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v464;
                        local v466 = { v465, v464 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v467;

                        if v466 then
                            v467 = descendant;

                            for i, v in v466 do
                                v467:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v467 = descendant;
                        end;

                        v467:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v468 = Hitbox.Size * 1.4;
                local v469 = general:WaitForChild("sovereigntemplate"):Clone();
                local Size = v469.Size;
                v469.Size = v468;

                for _, descendant in pairs(v469:GetDescendants()) do
                    if descendant:IsA("Attachment") then
                        descendant.Position = Vector3.new(descendant.Position.X * (v468.X / Size.X), descendant.Position.Y * (v468.Y / Size.Y), descendant.Position.Z * (v468.Z / Size.Z));
                    end;
                end;

                resizeMutationTemplate(v469, v468, 8);
                v469.weld.Part1 = v469;
                v469.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v469.Parent = u25;
            end;
        elseif p26 == "Crimsonwrath" then
            local Color3_fromRGB_ret = Color3.fromRGB(214, 41, 41);
            local Color3_fromRGB_ret2 = Color3.fromRGB(167, 32, 32);
            local Color3_fromRGB_ret3 = Color3.fromRGB(52, 42, 42);
            local Color3_fromRGB_ret4 = Color3.fromRGB(33, 27, 27);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 0, 0);
            local Color3_fromRGB_ret6 = Color3.fromRGB(198, 39, 8);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v470 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v471 = Random.new(v470):NextInteger(0, 1);
                        descendant.Material = v471 == 1 and Enum.Material.ForceField or Enum.Material.Slate;
                        local v472 = v471 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v473;

                        if v471 == 1 then
                            v473 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v473 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v472;
                        local v474 = { v473, v472 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v475;

                        if v474 then
                            v475 = descendant;

                            for i, v in v474 do
                                v475:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v475 = descendant;
                        end;

                        v475:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v476 = Hitbox.Size * 1.4;
                local v477 = general:WaitForChild("crimsonwrathtemplate"):Clone();
                local Size = v477.Size;
                v477.Size = v476;

                for _, descendant in pairs(v477:GetDescendants()) do
                    if descendant:IsA("Attachment") then
                        descendant.Position = Vector3.new(descendant.Position.X * (v476.X / Size.X), descendant.Position.Y * (v476.Y / Size.Y), descendant.Position.Z * (v476.Z / Size.Z));
                    end;
                end;

                resizeMutationTemplate(v477, v476, 8);
                v477.weld.Part1 = v477;
                v477.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v477.Parent = u25;
            end;
        elseif p26 == "Sunlit" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 173, 123);
            local Color3_fromRGB_ret2 = Color3.fromRGB(255, 184, 121);
            local Color3_fromRGB_ret3 = Color3.fromRGB(200, 134, 96);
            local Color3_fromRGB_ret4 = Color3.fromRGB(170, 126, 83);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 166, 121);
            local Color3_fromRGB_ret6 = Color3.fromRGB(229, 149, 109);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v478 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v479 = Random.new(v478):NextInteger(0, 1);
                        descendant.Material = v479 == 1 and Enum.Material.ForceField or Enum.Material.Neon;
                        local v480 = v479 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v481;

                        if v479 == 1 then
                            v481 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v481 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v480;
                        local v482 = { v481, v480 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v483;

                        if v482 then
                            v483 = descendant;

                            for i, v in v482 do
                                v483:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v483 = descendant;
                        end;

                        v483:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v484 = u25:GetBoundingBox();
                local v485 = general:WaitForChild("sunlittemplate"):Clone();
                v485.Size = v484;
                v485.weld.Part1 = v485;
                v485.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v485, v484, 4.5);
                v485.Parent = u25;
            end;
        elseif p26 == "Sanctified" then
            local Color3_fromRGB_ret = Color3.fromRGB(174, 157, 132);
            local Color3_fromRGB_ret2 = Color3.fromRGB(188, 170, 143);
            local Color3_fromRGB_ret3 = Color3.fromRGB(165, 149, 125);
            local Color3_fromRGB_ret4 = Color3.fromRGB(255, 231, 194);
            local Color3_fromRGB_ret5 = Color3.fromRGB(174, 157, 132);
            local Color3_fromRGB_ret6 = Color3.fromRGB(191, 172, 145);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v486 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v487 = Random.new(v486):NextInteger(0, 1);
                        descendant.Material = v487 == 1 and Enum.Material.Rock or Enum.Material.Neon;
                        local v488 = v487 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v489;

                        if v487 == 1 then
                            v489 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v489 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v488;
                        local v490 = { v489, v488 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v491;

                        if v490 then
                            v491 = descendant;

                            for i, v in v490 do
                                v491:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v491 = descendant;
                        end;

                        v491:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v492 = u25:GetBoundingBox();
                local v493 = general:WaitForChild("sanctifiedtemplate"):Clone();
                v493.Size = v492;
                v493.weld.Part1 = v493;
                v493.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v493, v492, 4.5);
                v493.Parent = u25;
            end;
        elseif p26 == "Veilfallen" then
            local Color3_fromRGB_ret = Color3.fromRGB(120, 111, 131);
            local Color3_fromRGB_ret2 = Color3.fromRGB(99, 91, 108);
            local Color3_fromRGB_ret3 = Color3.fromRGB(182, 167, 198);
            local Color3_fromRGB_ret4 = Color3.fromRGB(110, 101, 120);
            local Color3_fromRGB_ret5 = Color3.fromRGB(107, 99, 117);
            local Color3_fromRGB_ret6 = Color3.fromRGB(87, 80, 95);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Mud;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v494 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v495 = Random.new(v494):NextInteger(0, 1);
                        descendant.Material = v495 == 1 and Enum.Material.Rock or Enum.Material.Mud;
                        local v496 = v495 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v497;

                        if v495 == 1 then
                            v497 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v497 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v496;
                        local v498 = { v497, v496 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v499;

                        if v498 then
                            v499 = descendant;

                            for i, v in v498 do
                                v499:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v499 = descendant;
                        end;

                        v499:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v500 = u25:GetBoundingBox();
                local v501 = general:WaitForChild("veilfallentemplate"):Clone();
                v501.Size = v500;
                v501.weld.Part1 = v501;
                v501.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v501, v500, 4.5);
                v501.Parent = u25;
            end;
        elseif p26 == "Tidal Surge" then
            local v502 = { Color3.fromRGB(38, 51, 74), Color3.fromRGB(46, 61, 88), Color3.fromRGB(102, 137, 196) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and not table_freeze_ret[descendant.Name] then
                    local v503 = v502[math.random(1, #v502)];

                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(95, 132, 255);
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = v503;
                        descendant.Material = Enum.Material.Rock;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v504 = u25:GetBoundingBox();
                local v505 = general:WaitForChild("tidalsurgetemplate"):Clone();
                v505.Size = v504;
                v505.weld.Part1 = v505;
                v505.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v505, v504, 4.5);
                v505.Parent = u25;
            end;
        elseif p26 == "Zeus\'s Storm" then
            local v506 = { Color3.fromRGB(169, 151, 88), Color3.fromRGB(194, 173, 102), Color3.fromRGB(255, 225, 135) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and not table_freeze_ret[descendant.Name] then
                    local v507 = v506[math.random(1, #v506)];

                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 193, 142);
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = v507;
                        descendant.Material = Enum.Material.Neon;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v508 = u25:GetBoundingBox();
                local v509 = general:WaitForChild("zeusstormtemplate"):Clone();
                v509.Size = v508;
                v509.weld.Part1 = v509;
                v509.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v509, v508, 4.5);
                v509.Parent = u25;
            end;
        elseif p26 == "Cragged" then
            local v510 = {
                Color3.fromRGB(75, 68, 64),
                Color3.fromRGB(79, 71, 68),
                Color3.fromRGB(67, 59, 56),
                Color3.fromRGB(57, 51, 47),
                Color3.fromRGB(94, 86, 81)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v510[math.random(1, #v510)];
                    descendant.Material = Enum.Material.Rock;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v511 = u25:GetBoundingBox();
                local v512 = general:WaitForChild("craggedtemplate"):Clone();
                v512.Size = v511;
                v512.weld.Part1 = v512;
                v512.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v512, v511, 4.5);
                v512.Parent = u25;
            end;
        elseif p26 == "Gravitas" then
            Color3.fromRGB(75, 68, 64);
            local Color3_fromRGB_ret = Color3.fromRGB(100, 73, 255);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Material = Enum.Material.CrackedLava;
                    local v513 = { Color3_fromRGB_ret, descendant.Color };
                    descendant:SetAttribute("PulseTime", 1);
                    local v514;

                    if v513 then
                        v514 = descendant;

                        for i, v in v513 do
                            v514:SetAttribute(`PulseColor{i}`, v);
                        end;
                    else
                        v514 = descendant;
                    end;

                    v514:AddTag("ColorPulse");
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v515 = u25:GetBoundingBox();
                local v516 = general:WaitForChild("gravitastemplate"):Clone();
                v516.Size = v515;
                v516.weld.Part1 = v516;
                v516.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v516, v515, 4.5);
                v516.Parent = u25;
            end;
        elseif p26 == "Marshmallow" then
            local v517 = { Color3.fromRGB(231, 231, 231), Color3.fromRGB(251, 233, 255), Color3.fromRGB(255, 255, 202) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v517[math.random(1, #v517)];
                    descendant.Material = Enum.Material.Plastic;
                end;
            end;
        elseif p26 == "Rotting" then
            local v518 = { Color3.fromRGB(86, 79, 55), Color3.fromRGB(86, 78, 60), Color3.fromRGB(74, 71, 48) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v518[math.random(1, #v518)];
                    descendant.Material = Enum.Material.Wood;
                end;
            end;
        elseif p26 == "Decayed" then
            local v519 = { Color3.fromRGB(55, 46, 51), Color3.fromRGB(49, 46, 55), Color3.fromRGB(43, 36, 40) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v519[math.random(1, #v519)];
                    descendant.Material = Enum.Material.Wood;
                end;
            end;
        elseif p26 == "Honey" then
            local v520 = {
                Color3.fromRGB(255, 192, 121),
                Color3.fromRGB(255, 167, 108),
                Color3.fromRGB(255, 213, 114),
                Color3.fromRGB(255, 201, 134),
                Color3.fromRGB(255, 183, 83)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v520[math.random(1, #v520)];
                    descendant.Material = Enum.Material.SmoothPlastic;
                    descendant.Transparency = 0.5;
                end;
            end;
        elseif p26 == "Plagued" then
            local v521 = {
                Color3.fromRGB(42, 38, 47),
                Color3.fromRGB(38, 38, 47),
                Color3.fromRGB(26, 23, 27),
                Color3.fromRGB(32, 28, 47),
                Color3.fromRGB(29, 18, 36)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v521[math.random(1, #v521)];
                    descendant.Material = Enum.Material.Rock;
                end;
            end;
        elseif p26 == "Brined" then
            local v522 = { Color3.fromRGB(0, 255, 157), Color3.fromRGB(0, 255, 119), Color3.fromRGB(0, 255, 179) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v522[math.random(1, #v522)];
                    descendant.Material = Enum.Material.Neon;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v523 = Hitbox.Size * 1.4;
                local v524 = general:WaitForChild("brinedtemplate"):Clone();
                local Size = v524.Size;
                v524.Size = v523;

                for _, descendant in pairs(v524:GetDescendants()) do
                    if descendant:IsA("Attachment") then
                        descendant.Position = Vector3.new(descendant.Position.X * (v523.X / Size.X), descendant.Position.Y * (v523.Y / Size.Y), descendant.Position.Z * (v523.Z / Size.Z));
                    end;
                end;

                resizeMutationTemplate(v524, v523, 8);
                v524.weld.Part1 = v524;
                v524.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v524.Parent = u25;
            end;
        elseif p26 == "Green Leaf" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = Color3.fromRGB(170, 255, 127);
                    descendant.Material = Enum.Material.LeafyGrass;
                end;
            end;
        elseif p26 == "Rose" then
            local v525 = u25:GetExtentsSize().Magnitude + u25:GetScale();
            local v526 = Random.new(v525):NextInteger(1, 2);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    if v526 == 1 then
                        descendant.Color = Color3.fromRGB(170, 255, 127);
                        descendant.Material = Enum.Material.LeafyGrass;
                    else
                        descendant.Color = Color3.fromRGB(163, 0, 0);
                        descendant.Material = Enum.Material.SmoothPlastic;
                    end;
                end;
            end;
        elseif p26 == "King’s Blessing" then
            local v527 = nil;

            for _, descendant in u25:GetDescendants() do
                if descendant:IsA("BasePart") and descendant.Name == "Eyes" then
                    v527 = descendant;
                    break;
                end;
            end;

            local v528 = v527 or (u25:FindFirstChild("Center") or u25.PrimaryPart);
            local ExtentsSize = u25:GetExtentsSize();

            if not v528 then
                return;
            end;

            local v529 = script.Crown:Clone();
            local Mesh = v529.Mesh;
            Mesh.Scale = Mesh.Scale * (ExtentsSize.Magnitude / 2);
            v529.CFrame = v528.CFrame + Vector3.new(0, ExtentsSize.Y / 4, 0);
            local WeldConstraint = Instance.new("WeldConstraint");
            WeldConstraint.Name = "CrownWeld";
            WeldConstraint.Part0 = v528;
            WeldConstraint.Part1 = v529;
            WeldConstraint.Parent = v528;
            v529.Parent = u25:FindFirstChild("Fish") or u25;
            local v530 = { 1, v529.Transparency };
            v529:SetAttribute("PulseTime", 1);

            if v530 then
                for i, v in v530 do
                    v529:SetAttribute(`PulseTrans{i}`, v);
                end;
            end;

            v529:AddTag("ColorPulse");
        elseif p26 == "Nova" then
            local Color3_fromRGB_ret = Color3.fromRGB(244, 255, 255);
            local Color3_fromRGB_ret2 = Color3.fromRGB(153, 153, 255);
            local Color3_fromRGB_ret3 = Color3.fromRGB(215, 224, 255);
            local Color3_fromRGB_ret4 = Color3.fromRGB(161, 149, 255);
            local Color3_fromRGB_ret5 = Color3.fromRGB(125, 125, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(89, 85, 197);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        descendant.Material = Enum.Material.Ice;
                        local v531 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v532 = Random.new(v531):NextInteger(0, 1);
                        local v533 = v532 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v534;

                        if v532 == 1 then
                            v534 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v534 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v533;
                        local v535 = { v534, v533 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v536;

                        if v535 then
                            v536 = descendant;

                            for i, v in v535 do
                                v536:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v536 = descendant;
                        end;

                        v536:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v537 = u25:GetBoundingBox();
                local v538 = general:WaitForChild("novatemplate"):Clone();
                v538.Size = v537;
                v538.weld.Part1 = v538;
                v538.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v538, v537, 4.5);
                v538.Parent = u25;
            end;
        elseif p26 == "Galaxy" then
            local Color3_fromRGB_ret = Color3.fromRGB(0, 0, 0);
            local Color3_fromRGB_ret2 = Color3.fromRGB(120, 120, 200);
            local Color3_fromRGB_ret3 = Color3.fromRGB(0, 0, 0);
            local Color3_fromRGB_ret4 = Color3.fromRGB(93, 87, 149);
            local Color3_fromRGB_ret5 = Color3.fromRGB(89, 39, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(79, 76, 176);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        descendant.Material = Enum.Material.ForceField;
                        local v539 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v540 = Random.new(v539):NextInteger(0, 1);
                        local v541 = v540 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v542;

                        if v540 == 1 then
                            v542 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v542 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v541;
                        local v543 = { v542, v541 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v544;

                        if v543 then
                            v544 = descendant;

                            for i, v in v543 do
                                v544:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v544 = descendant;
                        end;

                        v544:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v545 = u25:GetBoundingBox();
                local v546 = general:WaitForChild("galaxytemplate"):Clone();
                v546.Size = v545;
                v546.weld.Part1 = v546;
                v546.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v546, v545, 4.5);
                v546.Parent = u25;
            end;
        elseif p26 == "Singularity" then
            local Color3_fromRGB_ret = Color3.fromRGB(206, 155, 104);
            local Color3_fromRGB_ret2 = Color3.fromRGB(229, 147, 89);
            local Color3_fromRGB_ret3 = Color3.fromRGB(0, 0, 0);
            local Color3_fromRGB_ret4 = Color3.fromRGB(8, 8, 8);
            local Color3_fromRGB_ret5 = Color3.fromRGB(206, 154, 111);
            local Color3_fromRGB_ret6 = Color3.fromRGB(185, 138, 99);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v547 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v548 = Random.new(v547):NextInteger(0, 1);
                        descendant.Material = v548 == 1 and Enum.Material.Neon or Enum.Material.Metal;
                        descendant.Transparency = 0.4;
                        local v549 = v548 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v550;

                        if v548 == 1 then
                            v550 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v550 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v549;
                        local v551 = { v550, v549 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v552;

                        if v551 then
                            v552 = descendant;

                            for i, v in v551 do
                                v552:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v552 = descendant;
                        end;

                        v552:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v553 = u25:GetBoundingBox();
                local v554 = general:WaitForChild("singularitytemplate"):Clone();
                v554.Size = v553;
                v554.weld.Part1 = v554;
                v554.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                local v555 = math.max(v553.X, v553.Y, v553.Z) / 4.5;

                for _, descendant in ipairs(v554:GetDescendants()) do
                    if descendant:IsA("ParticleEmitter") then
                        local v556 = {};

                        for _, v in ipairs(descendant.Size.Keypoints) do
                            table.insert(v556, NumberSequenceKeypoint.new(v.Time, v.Value * v555, v.Envelope * v555));
                        end;

                        descendant.Size = NumberSequence.new(v556);
                    elseif descendant:IsA("Trail") then
                        local Attachment0 = descendant.Attachment0;
                        local Attachment1 = descendant.Attachment1;

                        if Attachment0 then
                            Attachment0.Position = Attachment0.Position * v555;
                        end;

                        if Attachment1 then
                            Attachment1.Position = Attachment1.Position * v555;
                        end;

                        if descendant.TextureLength > 0 then
                            descendant.TextureLength = descendant.TextureLength * v555;
                        end;
                    end;
                end;

                v554.Parent = u25;
            end;
        elseif p26 == "Aether" then
            local Color3_fromRGB_ret = Color3.fromRGB(137, 218, 255);
            local Color3_fromRGB_ret2 = Color3.fromRGB(255, 255, 255);
            local Color3_fromRGB_ret3 = Color3.fromRGB(128, 194, 222);
            local Color3_fromRGB_ret4 = Color3.fromRGB(214, 214, 214);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 255, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(112, 217, 255);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v557 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v558 = Random.new(v557):NextInteger(0, 1);
                        descendant.Material = v558 == 1 and Enum.Material.ForceField or Enum.Material.Snow;
                        descendant.Transparency = 0.4;
                        local v559 = v558 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v560;

                        if v558 == 1 then
                            v560 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v560 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v559;
                        local v561 = { v560, v559 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v562;

                        if v561 then
                            v562 = descendant;

                            for i, v in v561 do
                                v562:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v562 = descendant;
                        end;

                        v562:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v563 = u25:GetBoundingBox();
                local v564 = general:WaitForChild("aethertemplate"):Clone();
                v564.Size = v563;
                v564.weld.Part1 = v564;
                v564.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                local v565 = math.max(v563.X, v563.Y, v563.Z) / 4.5;

                for _, descendant in ipairs(v564:GetDescendants()) do
                    if descendant:IsA("ParticleEmitter") then
                        local v566 = {};

                        for _, v in ipairs(descendant.Size.Keypoints) do
                            table.insert(v566, NumberSequenceKeypoint.new(v.Time, v.Value * v565, v.Envelope * v565));
                        end;

                        descendant.Size = NumberSequence.new(v566);
                    elseif descendant:IsA("Trail") then
                        local Attachment0 = descendant.Attachment0;
                        local Attachment1 = descendant.Attachment1;

                        if Attachment0 then
                            Attachment0.Position = Attachment0.Position * v565;
                        end;

                        if Attachment1 then
                            Attachment1.Position = Attachment1.Position * v565;
                        end;

                        if descendant.TextureLength > 0 then
                            descendant.TextureLength = descendant.TextureLength * v565;
                        end;
                    end;
                end;

                v564.Parent = u25;
            end;
        elseif p26 == "Gusty" then
            local Color3_fromRGB_ret = Color3.fromRGB(229, 248, 255);
            local Color3_fromRGB_ret2 = Color3.fromRGB(255, 255, 255);
            local Color3_fromRGB_ret3 = Color3.fromRGB(193, 214, 222);
            local Color3_fromRGB_ret4 = Color3.fromRGB(214, 214, 214);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 255, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(181, 238, 255);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v567 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v568 = Random.new(v567):NextInteger(0, 1);
                        descendant.Material = v568 == 1 and Enum.Material.ForceField or Enum.Material.SmoothPlastic;
                        descendant.Transparency = 0.5;
                        local v569 = v568 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v570;

                        if v568 == 1 then
                            v570 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v570 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v569;
                        local v571 = { v570, v569 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v572;

                        if v571 then
                            v572 = descendant;

                            for i, v in v571 do
                                v572:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v572 = descendant;
                        end;

                        v572:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v573 = u25:GetBoundingBox();
                local v574 = general:WaitForChild("gustytemplate"):Clone();
                v574.Size = v573;
                v574.weld.Part1 = v574;
                v574.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                local v575 = math.max(v573.X, v573.Y, v573.Z) / 4.5;

                for _, descendant in ipairs(v574:GetDescendants()) do
                    if descendant:IsA("ParticleEmitter") then
                        local v576 = {};

                        for _, v in ipairs(descendant.Size.Keypoints) do
                            table.insert(v576, NumberSequenceKeypoint.new(v.Time, v.Value * v575, v.Envelope * v575));
                        end;

                        descendant.Size = NumberSequence.new(v576);
                    elseif descendant:IsA("Trail") then
                        local Attachment0 = descendant.Attachment0;
                        local Attachment1 = descendant.Attachment1;

                        if Attachment0 then
                            Attachment0.Position = Attachment0.Position * v575;
                        end;

                        if Attachment1 then
                            Attachment1.Position = Attachment1.Position * v575;
                        end;

                        if descendant.TextureLength > 0 then
                            descendant.TextureLength = descendant.TextureLength * v575;
                        end;
                    end;
                end;

                v574.Parent = u25;
            end;
        elseif p26 == "Squalled" then
            local Color3_fromRGB_ret = Color3.fromRGB(82, 89, 91);
            local Color3_fromRGB_ret2 = Color3.fromRGB(154, 154, 154);
            local Color3_fromRGB_ret3 = Color3.fromRGB(67, 74, 77);
            local Color3_fromRGB_ret4 = Color3.fromRGB(154, 154, 154);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 255, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(42, 42, 42);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v577 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v578 = Random.new(v577):NextInteger(0, 1);
                        descendant.Material = v578 == 1 and Enum.Material.ForceField or Enum.Material.Slate;
                        descendant.Transparency = 0.5;
                        local v579 = v578 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v580;

                        if v578 == 1 then
                            v580 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v580 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v579;
                        local v581 = { v580, v579 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v582;

                        if v581 then
                            v582 = descendant;

                            for i, v in v581 do
                                v582:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v582 = descendant;
                        end;

                        v582:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v583 = u25:GetBoundingBox();
                local v584 = general:WaitForChild("squalledtemplate"):Clone();
                v584.Size = v583;
                v584.weld.Part1 = v584;
                v584.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                local v585 = math.max(v583.X, v583.Y, v583.Z) / 4.5;

                for _, descendant in ipairs(v584:GetDescendants()) do
                    if descendant:IsA("ParticleEmitter") then
                        local v586 = {};

                        for _, v in ipairs(descendant.Size.Keypoints) do
                            table.insert(v586, NumberSequenceKeypoint.new(v.Time, v.Value * v585, v.Envelope * v585));
                        end;

                        descendant.Size = NumberSequence.new(v586);
                    elseif descendant:IsA("Trail") then
                        local Attachment0 = descendant.Attachment0;
                        local Attachment1 = descendant.Attachment1;

                        if Attachment0 then
                            Attachment0.Position = Attachment0.Position * v585;
                        end;

                        if Attachment1 then
                            Attachment1.Position = Attachment1.Position * v585;
                        end;

                        if descendant.TextureLength > 0 then
                            descendant.TextureLength = descendant.TextureLength * v585;
                        end;
                    end;
                end;

                v584.Parent = u25;
            end;
        elseif p26 == "Liberty" then
            local v587 = { Color3.fromRGB(0, 0, 255), Color3.fromRGB(255, 255, 255), Color3.fromRGB(255, 0, 0) };
            game:GetService("ReplicatedStorage");
            local Scale = u25:GetScale();

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    Scale = Scale + descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B;
                end;
            end;

            local Random_new_ret = Random.new(Scale);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Transparency == 1 or descendant.Name == "Eyes" then
                        if descendant.Name == "Eyes" then
                            descendant.Material = Enum.Material.Neon;
                            descendant.Transparency = 0;
                            descendant.Color = v587[1];
                            descendant:SetAttribute("PulseTime", 1);
                            local v588;

                            if v587 then
                                v588 = descendant;

                                for i, v in v587 do
                                    v588:SetAttribute(`PulseColor{i}`, v);
                                end;
                            else
                                v588 = descendant;
                            end;

                            v588:AddTag("ColorPulse");
                        end;
                    else
                        descendant.Color = v587[Random_new_ret:NextInteger(1, #v587)];
                        descendant.Material = Enum.Material.SmoothPlastic;
                        descendant.Transparency = 0.2;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v589 = u25:GetBoundingBox();
                local v590 = general:WaitForChild("patriotictemplate"):Clone();
                v590.Size = v589;
                v590.weld.Part1 = v590;
                v590.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v590.Patriotic.Parent = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                local v591 = math.max(v589.X, v589.Y, v589.Z) / 4.5;

                for _, descendant in ipairs(v590:GetDescendants()) do
                    if descendant:IsA("ParticleEmitter") then
                        local v592 = {};

                        for _, v in ipairs(descendant.Size.Keypoints) do
                            table.insert(v592, NumberSequenceKeypoint.new(v.Time, v.Value * v591, v.Envelope * v591));
                        end;

                        descendant.Size = NumberSequence.new(v592);
                    elseif descendant:IsA("Trail") then
                        local Attachment0 = descendant.Attachment0;
                        local Attachment1 = descendant.Attachment1;

                        if Attachment0 then
                            Attachment0.Position = Attachment0.Position * v591;
                        end;

                        if Attachment1 then
                            Attachment1.Position = Attachment1.Position * v591;
                        end;

                        if descendant.TextureLength > 0 then
                            descendant.TextureLength = descendant.TextureLength * v591;
                        end;
                    end;
                end;

                v590.Parent = u25;
            end;
        elseif p26 == "Luminescent" then
            local Color3_fromRGB_ret = Color3.fromRGB(163, 176, 234);
            local Color3_fromRGB_ret2 = Color3.fromRGB(90, 98, 200);
            local Color3_fromRGB_ret3 = Color3.fromRGB(85, 95, 148);
            local Color3_fromRGB_ret4 = Color3.fromRGB(68, 65, 97);
            local Color3_fromRGB_ret5 = Color3.fromRGB(192, 219, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(124, 132, 161);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v593 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v594 = Random.new(v593):NextInteger(0, 1);
                        descendant.Material = v594 == 1 and Enum.Material.ForceField or Enum.Material.Glacier;
                        local v595 = v594 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v596;

                        if v594 == 1 then
                            v596 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v596 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v595;
                        local v597 = { v596, v595 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v598;

                        if v597 then
                            v598 = descendant;

                            for i, v in v597 do
                                v598:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v598 = descendant;
                        end;

                        v598:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v599 = u25:GetBoundingBox();
                local v600 = general:WaitForChild("luminescenttemplate"):Clone();
                v600.Size = v599;
                v600.weld.Part1 = v600;
                v600.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v600, v599, 4.5);
                v600.Parent = u25;
            end;
        elseif p26 == "Myriapodic" then
            local Color3_fromRGB_ret = Color3.fromRGB(163, 33, 23);
            local Color3_fromRGB_ret2 = Color3.fromRGB(139, 49, 49);
            local Color3_fromRGB_ret3 = Color3.fromRGB(50, 50, 50);
            local Color3_fromRGB_ret4 = Color3.fromRGB(50, 17, 17);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 145, 126);
            local Color3_fromRGB_ret6 = Color3.fromRGB(255, 118, 106);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v601 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v602 = Random.new(v601):NextInteger(0, 1);
                        descendant.Material = v602 == 1 and Enum.Material.ForceField or Enum.Material.Glacier;
                        local v603 = v602 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v604;

                        if v602 == 1 then
                            v604 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v604 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v603;
                        local v605 = { v604, v603 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v606;

                        if v605 then
                            v606 = descendant;

                            for i, v in v605 do
                                v606:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v606 = descendant;
                        end;

                        v606:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v607 = u25:GetBoundingBox();
                local v608 = general:WaitForChild("myriapodictemplate"):Clone();
                v608.Size = v607;
                v608.weld.Part1 = v608;
                v608.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v608, v607, 4.5);
                v608.Parent = u25;
            end;
        elseif p26 == "Abaia\'s Spite" then
            local Color3_fromRGB_ret = Color3.fromRGB(106, 167, 108);
            local Color3_fromRGB_ret2 = Color3.fromRGB(83, 131, 84);
            local Color3_fromRGB_ret3 = Color3.fromRGB(23, 36, 23);
            local Color3_fromRGB_ret4 = Color3.fromRGB(31, 48, 31);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 180, 119);
            local Color3_fromRGB_ret6 = Color3.fromRGB(255, 114, 32);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v609 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v610 = Random.new(v609):NextInteger(0, 1);
                        descendant.Material = v610 == 1 and Enum.Material.Slate or Enum.Material.Rock;
                        local v611 = v610 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v612;

                        if v610 == 1 then
                            v612 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v612 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v611;
                        local v613 = { v612, v611 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v614;

                        if v613 then
                            v614 = descendant;

                            for i, v in v613 do
                                v614:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v614 = descendant;
                        end;

                        v614:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v615 = u25:GetBoundingBox();
                local v616 = general:WaitForChild("abaiasspitetemplate"):Clone();
                v616.Size = v615;
                v616.weld.Part1 = v616;
                v616.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v616, v615, 4.5);
                v616.Parent = u25;
            end;
        elseif p26 == "Pancake" then
            if not u25.PrimaryPart then
                u25.PrimaryPart = u25:WaitForChild("Center");
            end;

            local PrimaryPart = u25.PrimaryPart;
            (function() -- Line: 10740, Name: weldModel
                -- upvalues: u25 (ref), PrimaryPart (copy)
                for _, descendant in ipairs(u25:GetDescendants()) do
                    if descendant:IsA("BasePart") and descendant ~= PrimaryPart then
                        local WeldConstraint = Instance.new("WeldConstraint");
                        WeldConstraint.Part0 = PrimaryPart;
                        WeldConstraint.Part1 = descendant;
                        WeldConstraint.Parent = PrimaryPart;
                    end;
                end;
            end)();
            local Position = u25:GetPivot().Position;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local v617 = descendant.Position - Position;
                    local Vector3_new_ret = Vector3.new(descendant.Size.X * 1, descendant.Size.Y * 0.10000000149011612, descendant.Size.Z * 1);
                    local Vector3_new_ret2 = Vector3.new(v617.X * 1, v617.Y * 0.10000000149011612, v617.Z * 1);
                    descendant.Size = Vector3_new_ret;
                    local v618 = descendant;

                    for _, descendant2 in ipairs(descendant:GetDescendants()) do
                        if descendant2:IsA("WeldConstraint") then
                            descendant2.Enabled = false;
                        end;
                    end;

                    v618.Position = Position + Vector3_new_ret2;

                    for _, descendant2 in ipairs(v618:GetDescendants()) do
                        if descendant2:IsA("WeldConstraint") then
                            descendant2.Enabled = true;
                        end;
                    end;
                end;
            end;

            local v619 = (PrimaryPart.Size.Y / 0.10000000149011612 - PrimaryPart.Size.Y) / 2;
            u25:PivotTo(u25:GetPivot() * CFrame.new(0, -v619, 0));

            if game:GetService("RunService"):IsServer() and u25:IsDescendantOf(workspace) then
                game:GetService("ReplicatedStorage").events.fishMutation:FireAllClients(u25, p26);
            end;
        elseif p26 == "Lucid" then
            local Color3_fromRGB_ret = Color3.fromRGB(172, 122, 234);
            local Color3_fromRGB_ret2 = Color3.fromRGB(184, 125, 200);
            local Color3_fromRGB_ret3 = Color3.fromRGB(100, 74, 249);
            local Color3_fromRGB_ret4 = Color3.fromRGB(126, 79, 207);
            local Color3_fromRGB_ret5 = Color3.fromRGB(151, 116, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(97, 67, 216);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret6 }, { 0.25, 0.05 });
                    else
                        local v620 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v621 = Random.new(v620):NextInteger(0, 1);
                        descendant.Material = v621 == 1 and Enum.Material.ForceField or Enum.Material.Glacier;
                        local v622 = v621 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v623;

                        if v621 == 1 then
                            v623 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v623 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v622;
                        local v624 = { v623, v622 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v625;

                        if v624 then
                            v625 = descendant;

                            for i, v in v624 do
                                v625:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v625 = descendant;
                        end;

                        v625:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v626 = u25:GetBoundingBox();
                local v627 = general:WaitForChild("lucidtemplate"):Clone();
                v627.Size = v626;
                v627.weld.Part1 = v627;
                v627.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v627, v626, 4.5);
                v627.Parent = u25;
            end;
        elseif p26 == "Phantom" then
            local Color3_fromRGB_ret = Color3.fromRGB(99, 99, 99);
            local Color3_fromRGB_ret2 = Color3.fromRGB(85, 85, 85);
            local Color3_fromRGB_ret3 = Color3.fromRGB(40, 40, 40);
            local Color3_fromRGB_ret4 = Color3.fromRGB(34, 34, 34);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 255, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(216, 216, 216);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v628 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v629 = Random.new(v628):NextInteger(0, 1);
                        descendant.Material = v629 == 1 and Enum.Material.ForceField or Enum.Material.Glacier;
                        local v630 = v629 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v631;

                        if v629 == 1 then
                            v631 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v631 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v630;
                        local v632 = { v631, v630 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v633;

                        if v632 then
                            v633 = descendant;

                            for i, v in v632 do
                                v633:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v633 = descendant;
                        end;

                        v633:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v634 = u25:GetBoundingBox();
                local v635 = general:WaitForChild("phantomtemplate"):Clone();
                v635.Size = v634;
                v635.weld.Part1 = v635;
                v635.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v635, v634, 4.5);
                v635.Parent = u25;
            end;
        elseif p26 == "Distraught" then
            local Color3_fromRGB_ret = Color3.fromRGB(40, 40, 40);
            local Color3_fromRGB_ret2 = Color3.fromRGB(33, 33, 33);
            local Color3_fromRGB_ret3 = Color3.fromRGB(20, 20, 20);
            local Color3_fromRGB_ret4 = Color3.fromRGB(12, 12, 12);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 255, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(216, 216, 216);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v636 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v637 = Random.new(v636):NextInteger(0, 1);
                        descendant.Material = v637 == 1 and Enum.Material.ForceField or Enum.Material.Glacier;
                        local v638 = v637 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v639;

                        if v637 == 1 then
                            v639 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v639 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v638;
                        local v640 = { v639, v638 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v641;

                        if v640 then
                            v641 = descendant;

                            for i, v in v640 do
                                v641:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v641 = descendant;
                        end;

                        v641:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v642 = u25:GetBoundingBox();
                local v643 = general:WaitForChild("distraughttemplate"):Clone();
                v643.Size = v642;
                v643.weld.Part1 = v643;
                v643.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v643, v642, 4.5);
                v643.Parent = u25;
            end;
        elseif p26 == "Crimson" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 137, 137);
            local Color3_fromRGB_ret2 = Color3.fromRGB(186, 92, 92);
            local Color3_fromRGB_ret3 = Color3.fromRGB(157, 0, 0);
            local Color3_fromRGB_ret4 = Color3.fromRGB(66, 0, 0);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 174, 174);
            local Color3_fromRGB_ret6 = Color3.fromRGB(176, 68, 68);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v644 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v645 = Random.new(v644):NextInteger(0, 1);
                        descendant.Material = v645 == 1 and Enum.Material.ForceField or Enum.Material.Glacier;
                        local v646 = v645 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v647;

                        if v645 == 1 then
                            v647 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v647 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v646;
                        local v648 = { v647, v646 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v649;

                        if v648 then
                            v649 = descendant;

                            for i, v in v648 do
                                v649:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v649 = descendant;
                        end;

                        v649:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v650 = u25:GetBoundingBox();
                local v651 = general:WaitForChild("crimsontemplate"):Clone();
                v651.Size = v650;
                v651.weld.Part1 = v651;
                v651.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v651, v650, 4.5);
                v651.Parent = u25;
            end;
        elseif p26 == "Mastered" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 101, 104);
            local Color3_fromRGB_ret2 = Color3.fromRGB(113, 143, 200);
            local Color3_fromRGB_ret3 = Color3.fromRGB(65, 46, 46);
            local Color3_fromRGB_ret4 = Color3.fromRGB(56, 62, 99);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 128, 130);
            local Color3_fromRGB_ret6 = Color3.fromRGB(119, 157, 207);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v652 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v653 = Random.new(v652):NextInteger(0, 1);
                        descendant.Material = v653 == 1 and Enum.Material.ForceField or Enum.Material.Glacier;
                        local v654 = v653 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v655;

                        if v653 == 1 then
                            v655 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v655 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v654;
                        local v656 = { v655, v654 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v657;

                        if v656 then
                            v657 = descendant;

                            for i, v in v656 do
                                v657:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v657 = descendant;
                        end;

                        v657:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v658 = u25:GetBoundingBox();
                local v659 = general:WaitForChild("masteredtemplate"):Clone();
                v659.Size = v658;
                v659.weld.Part1 = v659;
                v659.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v659, v658, 4.5);
                v659.Parent = u25;
            end;
        elseif p26 == "Batty" then
            local Color3_fromRGB_ret = Color3.fromRGB(61, 24, 25);
            local Color3_fromRGB_ret2 = Color3.fromRGB(40, 29, 29);
            local Color3_fromRGB_ret3 = Color3.fromRGB(65, 46, 46);
            local Color3_fromRGB_ret4 = Color3.fromRGB(27, 5, 5);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 128, 130);
            local Color3_fromRGB_ret6 = Color3.fromRGB(104, 58, 58);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v660 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v661 = Random.new(v660):NextInteger(0, 1);
                        descendant.Material = Enum.Material.Rock;
                        local v662 = v661 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v663;

                        if v661 == 1 then
                            v663 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v663 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v662;
                        local v664 = { v663, v662 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v665;

                        if v664 then
                            v665 = descendant;

                            for i, v in v664 do
                                v665:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v665 = descendant;
                        end;

                        v665:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v666 = u25:GetBoundingBox();
                local v667 = general:WaitForChild("battytemplate"):Clone();
                v667.Size = v666;
                v667.weld.Part1 = v667;
                v667.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v667, v666, 4.5);
                v667.Parent = u25;
            end;
        elseif p26 == "Unlucky" then
            local Color3_fromRGB_ret = Color3.fromRGB(61, 61, 61);
            local Color3_fromRGB_ret2 = Color3.fromRGB(40, 40, 40);
            local Color3_fromRGB_ret3 = Color3.fromRGB(65, 65, 65);
            local Color3_fromRGB_ret4 = Color3.fromRGB(27, 27, 27);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 255, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(104, 104, 104);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v668 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v669 = Random.new(v668):NextInteger(0, 1);
                        descendant.Material = Enum.Material.Rock;
                        local v670 = v669 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v671;

                        if v669 == 1 then
                            v671 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v671 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v670;
                        local v672 = { v671, v670 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v673;

                        if v672 then
                            v673 = descendant;

                            for i, v in v672 do
                                v673:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v673 = descendant;
                        end;

                        v673:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v674 = u25:GetBoundingBox();
                local v675 = general:WaitForChild("unluckytemplate"):Clone();
                v675.Size = v674;
                v675.weld.Part1 = v675;
                v675.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v675, v674, 4.5);
                v675.Parent = u25;
            end;
        elseif p26 == "Jackpot" then
            local Color3_fromRGB_ret = Color3.fromRGB(79, 229, 97);
            local Color3_fromRGB_ret2 = Color3.fromRGB(151, 216, 151);
            local Color3_fromRGB_ret3 = Color3.fromRGB(207, 180, 80);
            local Color3_fromRGB_ret4 = Color3.fromRGB(193, 159, 118);
            local Color3_fromRGB_ret5 = Color3.fromRGB(165, 255, 188);
            local Color3_fromRGB_ret6 = Color3.fromRGB(212, 193, 119);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v676 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v677 = Random.new(v676):NextInteger(0, 1);
                        descendant.Material = Enum.Material.Neon;
                        local v678 = v677 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v679;

                        if v677 == 1 then
                            v679 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v679 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v678;
                        local v680 = { v679, v678 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v681;

                        if v680 then
                            v681 = descendant;

                            for i, v in v680 do
                                v681:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v681 = descendant;
                        end;

                        v681:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v682 = u25:GetBoundingBox();
                local v683 = general:WaitForChild("jackpottemplate"):Clone();
                v683.Size = v682;
                v683.weld.Part1 = v683;
                v683.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v683, v682, 4.5);
                v683.Parent = u25;
            end;
        elseif p26 == "Necrotic" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 58, 61);
            local Color3_fromRGB_ret2 = Color3.fromRGB(200, 117, 117);
            local Color3_fromRGB_ret3 = Color3.fromRGB(65, 36, 36);
            local Color3_fromRGB_ret4 = Color3.fromRGB(27, 5, 5);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 97, 100);
            local Color3_fromRGB_ret6 = Color3.fromRGB(104, 45, 45);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v684 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v685 = Random.new(v684):NextInteger(0, 1);
                        descendant.Material = v685 == 1 and Enum.Material.ForceField or Enum.Material.Glacier;
                        local v686 = v685 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v687;

                        if v685 == 1 then
                            v687 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v687 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v686;
                        local v688 = { v687, v686 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v689;

                        if v688 then
                            v689 = descendant;

                            for i, v in v688 do
                                v689:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v689 = descendant;
                        end;

                        v689:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v690 = u25:GetBoundingBox();
                local v691 = general:WaitForChild("necrotictemplate"):Clone();
                v691.Size = v690;
                v691.weld.Part1 = v691;
                v691.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v691, v690, 4.5);
                v691.Parent = u25;
            end;
        elseif p26 == "Wicked" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 184, 84);
            local Color3_fromRGB_ret2 = Color3.fromRGB(200, 148, 103);
            local Color3_fromRGB_ret3 = Color3.fromRGB(93, 66, 38);
            local Color3_fromRGB_ret4 = Color3.fromRGB(116, 84, 67);
            local Color3_fromRGB_ret5 = Color3.fromRGB(200, 148, 65);
            local Color3_fromRGB_ret6 = Color3.fromRGB(104, 91, 60);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v692 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v693 = Random.new(v692):NextInteger(0, 1);
                        descendant.Material = v693 == 1 and Enum.Material.ForceField or Enum.Material.Granite;
                        local v694 = v693 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v695;

                        if v693 == 1 then
                            v695 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v695 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v694;
                        local v696 = { v695, v694 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v697;

                        if v696 then
                            v697 = descendant;

                            for i, v in v696 do
                                v697:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v697 = descendant;
                        end;

                        v697:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v698 = u25:GetBoundingBox();
                local v699 = general:WaitForChild("wickedtemplate"):Clone();
                v699.Size = v698;
                v699.weld.Part1 = v699;
                v699.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v699, v698, 4.5);
                v699.Parent = u25;
            end;
        elseif p26 == "Jack\'s Curse" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 155, 89);
            local Color3_fromRGB_ret2 = Color3.fromRGB(200, 140, 100);
            local Color3_fromRGB_ret3 = Color3.fromRGB(65, 49, 38);
            local Color3_fromRGB_ret4 = Color3.fromRGB(27, 19, 15);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 145, 94);
            local Color3_fromRGB_ret6 = Color3.fromRGB(104, 69, 51);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v700 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v701 = Random.new(v700):NextInteger(0, 1);
                        descendant.Material = v701 == 1 and Enum.Material.ForceField or Enum.Material.Granite;
                        local v702 = v701 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v703;

                        if v701 == 1 then
                            v703 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v703 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v702;
                        local v704 = { v703, v702 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v705;

                        if v704 then
                            v705 = descendant;

                            for i, v in v704 do
                                v705:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v705 = descendant;
                        end;

                        v705:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v706 = u25:GetBoundingBox();
                local v707 = general:WaitForChild("jackscursetemplate"):Clone();
                v707.Size = v706;
                v707.weld.Part1 = v707;
                v707.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v707, v706, 4.5);
                v707.Parent = u25;
            end;
        elseif p26 == "Frightful" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v708 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + u25:GetScale();
                    local Random_new_ret = Random.new(v708);
                    descendant.Material = Enum.Material.Neon;
                    descendant.Color = Random_new_ret:NextInteger(0, 1) == 0 and Color3.fromRGB(64, 53, 85) or Color3.fromRGB(88, 74, 109);
                    descendant.Transparency = 0.35;
                    local v709 = { 0.5, 0.35 };
                    descendant:SetAttribute("PulseTime", 1);
                    local v710;

                    if v709 then
                        v710 = descendant;

                        for i, v in v709 do
                            v710:SetAttribute(`PulseTrans{i}`, v);
                        end;
                    else
                        v710 = descendant;
                    end;

                    v710:AddTag("ColorPulse");
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v711 = u25:GetBoundingBox();
                local v712 = general:WaitForChild("frightfultemplate"):Clone();
                v712.Size = v711 * 0.75;
                v712.weld.Part1 = v712;
                v712.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v712, v711, 4.5);
                v712.Parent = u25;
            end;
        elseif p26 == "Spooky" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v713 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + u25:GetScale();
                    local Random_new_ret = Random.new(v713);
                    descendant.Material = Enum.Material.Wood;
                    descendant.Color = Random_new_ret:NextInteger(0, 1) == 0 and Color3.fromRGB(59, 52, 77) or Color3.fromRGB(84, 74, 109);
                    descendant.Transparency = 0.05;
                elseif descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name == "Eyes") then
                    descendant.Material = Enum.Material.Neon;
                    descendant.Color = Color3.fromRGB(255, 159, 42);
                    local v714 = { Color3.fromRGB(177, 132, 80), Color3.fromRGB(255, 159, 42) };
                    descendant:SetAttribute("PulseTime", 1);
                    local v715;

                    if v714 then
                        v715 = descendant;

                        for i, v in v714 do
                            v715:SetAttribute(`PulseColor{i}`, v);
                        end;
                    else
                        v715 = descendant;
                    end;

                    v715:AddTag("ColorPulse");
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v716 = u25:GetBoundingBox();
                local v717 = general:WaitForChild("spookytemplate"):Clone();
                v717.Size = v716 * 0.75;
                v717.weld.Part1 = v717;
                v717.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v717, v716, 4.5);
                v717.Parent = u25;
            end;
        elseif p26 == "Eerie" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v718 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + u25:GetScale();
                    local Random_new_ret = Random.new(v718);
                    descendant.Material = Enum.Material.ForceField;
                    descendant.Color = Random_new_ret:NextInteger(0, 1) == 0 and Color3.fromRGB(40, 85, 47) or Color3.fromRGB(67, 167, 99);
                    descendant.Transparency = 0.35;
                    local v719 = { 0.5, 0.35 };
                    descendant:SetAttribute("PulseTime", 1);
                    local v720;

                    if v719 then
                        v720 = descendant;

                        for i, v in v719 do
                            v720:SetAttribute(`PulseTrans{i}`, v);
                        end;
                    else
                        v720 = descendant;
                    end;

                    v720:AddTag("ColorPulse");
                elseif descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name == "Eyes") then
                    descendant.Material = Enum.Material.Neon;
                    descendant.Color = Color3.fromRGB(41, 255, 148);
                    descendant.Transparency = 0.05;
                    quickColorPulse(descendant, 1, { Color3.fromRGB(85, 177, 127), Color3.fromRGB(41, 255, 148) }, { 0.25, 0.05 });
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v721 = u25:GetBoundingBox();
                local v722 = general:WaitForChild("eerietemplate"):Clone();
                v722.Size = v721 * 0.75;
                v722.weld.Part1 = v722;
                v722.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v722, v721, 4.5);
                v722.Parent = u25;
            end;
        elseif p26 == "Breezed" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 255, 164);
            local Color3_fromRGB_ret2 = Color3.fromRGB(200, 197, 115);
            local Color3_fromRGB_ret3 = Color3.fromRGB(167, 167, 118);
            local Color3_fromRGB_ret4 = Color3.fromRGB(163, 160, 114);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 252, 212);
            local Color3_fromRGB_ret6 = Color3.fromRGB(207, 195, 134);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v723 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v724 = Random.new(v723):NextInteger(0, 1);
                        descendant.Material = Enum.Material.Salt;
                        local v725 = v724 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v726;

                        if v724 == 1 then
                            v726 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v726 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v725;
                        local v727 = { v726, v725 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v728;

                        if v727 then
                            v728 = descendant;

                            for i, v in v727 do
                                v728:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v728 = descendant;
                        end;

                        v728:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v729 = u25:GetBoundingBox();
                local v730 = general:WaitForChild("breezedtemplate"):Clone();
                v730.Size = v729;
                v730.weld.Part1 = v730;
                v730.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v730, v729, 4.5);
                v730.Parent = u25;
            end;
        elseif p26 == "Terra" then
            local Color3_fromRGB_ret = Color3.fromRGB(163, 129, 74);
            local Color3_fromRGB_ret2 = Color3.fromRGB(117, 95, 56);
            local Color3_fromRGB_ret3 = Color3.fromRGB(96, 74, 43);
            local Color3_fromRGB_ret4 = Color3.fromRGB(84, 70, 38);
            local Color3_fromRGB_ret5 = Color3.fromRGB(133, 187, 101);
            local Color3_fromRGB_ret6 = Color3.fromRGB(87, 132, 64);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v731 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v732 = Random.new(v731):NextInteger(0, 1);
                        descendant.Material = Enum.Material.Slate;
                        local v733 = v732 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v734;

                        if v732 == 1 then
                            v734 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v734 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v733;
                        local v735 = { v734, v733 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v736;

                        if v735 then
                            v736 = descendant;

                            for i, v in v735 do
                                v736:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v736 = descendant;
                        end;

                        v736:AddTag("ColorPulse");
                    end;
                end;
            end;
        elseif p26 == "Ignited" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 115, 39);
            local Color3_fromRGB_ret2 = Color3.fromRGB(212, 68, 16);
            local Color3_fromRGB_ret3 = Color3.fromRGB(150, 38, 8);
            local Color3_fromRGB_ret4 = Color3.fromRGB(120, 32, 10);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 196, 92);
            local Color3_fromRGB_ret6 = Color3.fromRGB(255, 89, 15);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v737 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v738 = Random.new(v737):NextInteger(0, 1);
                        descendant.Material = Enum.Material.Neon;
                        local v739 = v738 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v740;

                        if v738 == 1 then
                            v740 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v740 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v739;
                        local v741 = { v740, v739 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v742;

                        if v741 then
                            v742 = descendant;

                            for i, v in v741 do
                                v742:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v742 = descendant;
                        end;

                        v742:AddTag("ColorPulse");
                    end;
                end;
            end;
        elseif p26 == "Stormy" then
            local Color3_fromRGB_ret = Color3.fromRGB(94, 148, 255);
            local Color3_fromRGB_ret2 = Color3.fromRGB(56, 94, 180);
            local Color3_fromRGB_ret3 = Color3.fromRGB(43, 58, 105);
            local Color3_fromRGB_ret4 = Color3.fromRGB(36, 47, 84);
            local Color3_fromRGB_ret5 = Color3.fromRGB(180, 214, 255);
            local Color3_fromRGB_ret6 = Color3.fromRGB(94, 148, 255);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v743 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v744 = Random.new(v743):NextInteger(0, 1);
                        descendant.Material = Enum.Material.Glass;
                        local v745 = v744 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v746;

                        if v744 == 1 then
                            v746 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v746 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v745;
                        local v747 = { v746, v745 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v748;

                        if v747 then
                            v748 = descendant;

                            for i, v in v747 do
                                v748:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v748 = descendant;
                        end;

                        v748:AddTag("ColorPulse");
                    end;
                end;
            end;
        elseif p26 == "Mango" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 165, 0);
            local Color3_fromRGB_ret2 = Color3.fromRGB(0, 171, 0);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Grass;
                        descendant.Color = Color3_fromRGB_ret2;
                        descendant.Transparency = 0.05;
                    else
                        descendant.Material = Enum.Material.Glacier;
                        descendant.Color = Color3_fromRGB_ret;
                    end;
                end;
            end;
        elseif p26 == "Oblivion" then
            local Color3_fromRGB_ret = Color3.fromRGB(148, 0, 2);
            local Color3_fromRGB_ret2 = Color3.fromRGB(74, 42, 19);
            local Color3_fromRGB_ret3 = Color3.fromRGB(38, 0, 0);
            local Color3_fromRGB_ret4 = Color3.fromRGB(39, 20, 0);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 102, 0);
            local Color3_fromRGB_ret6 = Color3.fromRGB(255, 42, 0);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        descendant.Material = Enum.Material.Rock;
                        local v749 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v750 = Random.new(v749):NextInteger(0, 1);
                        local v751 = v750 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v752;

                        if v750 == 1 then
                            v752 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v752 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v751;
                        local v753 = { v752, v751 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v754;

                        if v753 then
                            v754 = descendant;

                            for i, v in v753 do
                                v754:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v754 = descendant;
                        end;

                        v754:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v755 = u25:GetBoundingBox();
                local v756 = general:WaitForChild("obliviontemplate"):Clone();
                v756.Size = v755;
                v756.weld.Part1 = v756;
                v756.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v756, v755, 4.5);
                v756.Parent = u25;
            end;
        elseif p26 == "Tryhard" then
            local Color3_fromRGB_ret = Color3.fromRGB(238, 0, 4);
            local Color3_fromRGB_ret2 = Color3.fromRGB(147, 20, 20);
            local Color3_fromRGB_ret3 = Color3.fromRGB(126, 12, 12);
            local Color3_fromRGB_ret4 = Color3.fromRGB(65, 18, 18);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 0, 0);
            local Color3_fromRGB_ret6 = Color3.fromRGB(255, 60, 60);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 1, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        local v757 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v758 = Random.new(v757):NextInteger(0, 1);
                        descendant.Material = v758 == 1 and Enum.Material.Rock or Enum.Material.ForceField;
                        local v759 = v758 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v760;

                        if v758 == 1 then
                            v760 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v760 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v759;
                        local v761 = { v760, v759 };
                        descendant:SetAttribute("PulseTime", 1);
                        local v762;

                        if v761 then
                            v762 = descendant;

                            for i, v in v761 do
                                v762:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v762 = descendant;
                        end;

                        v762:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v763 = u25:GetBoundingBox();
                local v764 = general:WaitForChild("tryhardtemplate"):Clone();
                v764.Size = v763;
                v764.weld.Part1 = v764;
                v764.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v764, v763, 4.5);
                v764.Parent = u25;
            end;
        elseif p26 == "Mace" then
            local v765 = { Color3.fromRGB(255, 255, 255), Color3.fromRGB(115, 0, 255) };
            local Random_new_ret = Random.new(u25:GetExtentsSize():Max().X or 1);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(115, 0, 255);
                        descendant.Material = Enum.Material.Neon;
                    elseif not table_freeze_ret[descendant.Name] then
                        descendant.Color = v765[Random_new_ret:NextInteger(1, #v765)];
                        descendant.Material = Enum.Material.SmoothPlastic;
                    end;
                end;
            end;

            local v766 = nil;

            for _, descendant in u25:GetDescendants() do
                if descendant:IsA("BasePart") and descendant.Name == "Eyes" then
                    v766 = descendant;
                    break;
                end;
            end;

            local v767 = v766 or (u25:FindFirstChild("Center") or u25.PrimaryPart);
            local ExtentsSize = u25:GetExtentsSize();

            if not v767 then
                return;
            end;

            local v768 = script.MajiBucket:Clone();
            local Mesh = v768.Mesh;
            Mesh.Scale = Mesh.Scale * (ExtentsSize.Magnitude / 6);
            local Weld = Instance.new("Weld");
            Weld.Name = "CrownWeld";
            Weld.Part0 = v767;
            Weld.Part1 = v768;
            Weld.C1 = CFrame.new((Vector3.new(0, -(ExtentsSize.Y / 2 - v768.Mesh.Scale.Y), 0))) * (v767.CFrame - v767.CFrame.Position) * CFrame.Angles(0, 4.71238898038469, 0);
            Weld.Parent = v767;
            v768.Parent = u25:FindFirstChild("Fish") or u25;
        elseif p26 == "Honked" then
            local v769 = u25:FindFirstChild("Center") or u25.PrimaryPart;
            local v770 = u25:FindFirstChild("Hitbox") and u25.Hitbox.Size or u25:GetExtentsSize();

            if not v769 then
                return;
            end;

            local mouth = v769:FindFirstChild("mouth");

            if not mouth then
                return;
            end;

            local v771 = script.Clown:Clone();
            local math_max_ret = math.max(v770.X, v770.Y);
            v771.Size = v771.Size * math_max_ret;
            v771.PivotOffset = CFrame.new(v771.PivotOffset.Position * math_max_ret);
            v771:PivotTo(mouth.WorldCFrame);
            local WeldConstraint = Instance.new("WeldConstraint");
            WeldConstraint.Part0 = v769;
            WeldConstraint.Part1 = v771;
            WeldConstraint.Parent = v771;
            v771.Parent = u25:FindFirstChild("Fish") or u25;
            local Sound = Instance.new("Sound");
            Sound.Name = "HonkSound";
            Sound.SoundId = "rbxassetid://18592230472";
            Sound.Volume = 1.5;
            Sound.PlaybackSpeed = 1;
            Sound.Looped = false;
            Sound.Parent = v769;
            Sound:Play();
        elseif p26 == "Bunny" then
            local v772 = u25:FindFirstChild("Center") or u25.PrimaryPart;
            local v773 = u25:FindFirstChild("Hitbox") and u25.Hitbox.Size or u25:GetExtentsSize();

            if not v772 then
                return;
            end;

            local mouth = v772:FindFirstChild("mouth");

            if not mouth then
                return;
            end;

            local v774 = script.BunnyEars:Clone();
            local v775 = math.max(v773.X, v773.Y) / 2;
            v774.Size = v774.Size * v775;
            v774.PivotOffset = CFrame.new(v774.PivotOffset.Position * v775) * v774.PivotOffset.Rotation;
            v774:PivotTo(mouth.WorldCFrame);
            local WeldConstraint = Instance.new("WeldConstraint");
            WeldConstraint.Part0 = v772;
            WeldConstraint.Part1 = v774;
            WeldConstraint.Parent = v774;
            v774.Parent = u25:FindFirstChild("Fish") or u25;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Name ~= "Eyes" then
                    local v776, v777, v778 = descendant.Color:ToHSV();
                    descendant.Color = Color3.fromHSV(v776, math.min(v777, 0.25), (math.clamp(v778 + 0.5, 0, 1)));
                end;
            end;
        elseif p26 == "Fruit-Crowned" then
            local v779 = u25:FindFirstChild("Center") or u25.PrimaryPart;
            local v780 = u25:FindFirstChild("Hitbox") and u25.Hitbox.Size or u25:GetExtentsSize();

            if not v779 then
                return;
            end;

            local mouth = v779:FindFirstChild("mouth");

            if not mouth then
                return;
            end;

            local v781 = u25:GetAttribute("Size") or math.max(v780.X, v780.Y, v780.Z);
            local math_abs_ret = math.abs(v781 * 1000.1234);
            local v782 = (math.noise(math_abs_ret, 0, 0) + 0.5) * 100;
            local v783 = script:FindFirstChild(v782 <= 5 and "Dragonfruit Crown" or (v782 <= 28.75 and "Watermelon Crown" or (v782 <= 52.5 and "Pineapple Crown" or (v782 <= 76.25 and "Grape Crown" or "Banana Crown"))));

            if not v783 then
                return;
            end;

            local v784 = v783:Clone();
            local v785 = math.max(v780.X, v780.Y) / 2;
            v784:ScaleTo(v785);
            local Vector3_new_ret = Vector3.new(0, v785 * 1, 0);
            v784:PivotTo((mouth.WorldCFrame + Vector3_new_ret) * CFrame.Angles(1.5707963267948966, 0, 0));
            local v786 = v784.PrimaryPart or v784:FindFirstChildWhichIsA("BasePart");

            if v786 then
                local WeldConstraint = Instance.new("WeldConstraint");
                WeldConstraint.Part0 = v779;
                WeldConstraint.Part1 = v786;
                WeldConstraint.Parent = v786;
            end;

            v784.Parent = u25:FindFirstChild("Fish") or u25;
        elseif p26 == "Supersonic" then
            local v787 = u25:FindFirstChild("Center") or u25.PrimaryPart;

            if not v787 then
                return;
            end;

            local ExtentsSize = u25:GetExtentsSize();
            local mouth = v787:FindFirstChild("mouth");

            if not mouth then
                return;
            end;

            local v788 = ReplicatedStorage.resources.replicated.instances.general:WaitForChild("supersonictemplate"):Clone();
            v788.CFrame = v787.CFrame;
            v788.Size = ExtentsSize;
            local math_max_ret = math.max(ExtentsSize.X, ExtentsSize.Y);
            local NumberSequence_new_ret = NumberSequence.new(math_max_ret * 0.75, 0);
            local NumberRange_new_ret = NumberRange.new(ExtentsSize.Z / 2);
            v788.WhiteSwirl.Swirl.Size = NumberSequence_new_ret;
            v788.WhiteSwirl.Swirl.Speed = NumberRange_new_ret;
            v788.WhiteSwirl.CFrame = CFrame.new(0, 0, -ExtentsSize.Z / 2.25);
            v788.RedSwirl.Swirl.Size = NumberSequence_new_ret;
            v788.RedSwirl.Swirl.Speed = NumberRange_new_ret;
            v788.RedSwirl.CFrame = CFrame.new(0, 0, -ExtentsSize.Z / 2.25 + NumberRange_new_ret.Min / 10);
            local Y = ExtentsSize.Y;
            local Position = mouth.Position;
            local v789 = (ExtentsSize.Y - math.max(mouth.Position.Y, 0)) / 8;
            local v790 = Position + Vector3.new(0, v789, 0);
            v788.RibbonBottom.Position = v790;
            v788.RibbonTop.Position = v790 + Vector3.new(0, 0.9, -0.437) * Y / 2;
            v788.RibbonTop.Beam.Width0 = Y / 2;
            v788.RibbonTop.Beam.Width1 = Y / 2;
            v788.weld.Part0 = v787;
            v788.weld.Part1 = v788;
            v788.Parent = u25;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Name ~= "Eyes" then
                    if Random.new(descendant.Size.Magnitude):NextInteger(1, 2) == 1 then
                        descendant.Color = Color3.fromRGB(197, 62, 58);
                    else
                        descendant.Color = Color3.fromRGB(248, 248, 248);
                    end;
                end;
            end;
        elseif p26 == "Bouka" then
            local v791 = u25:FindFirstChild("Center") or u25.PrimaryPart;

            if not v791 then
                return;
            end;

            local ExtentsSize = u25:GetExtentsSize();
            local mouth = v791:FindFirstChild("mouth");

            if not mouth then
                return;
            end;

            local v792 = ReplicatedStorage.resources.replicated.instances.general:WaitForChild("boukatemplate"):Clone();
            v792.CFrame = v791.CFrame;
            v792.Size = ExtentsSize;
            math.max(ExtentsSize.X, ExtentsSize.Y);
            local _ = ExtentsSize.Y;
            local Position = mouth.Position;
            local v793 = (ExtentsSize.Y - math.max(mouth.Position.Y, 0)) / 8;
            local v794 = Position + Vector3.new(0, v793, 0);
            v792.RibbonBottom.Position = v794;
            v792.weld.Part0 = v791;
            v792.weld.Part1 = v792;
            v792.Parent = u25;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Name ~= "Eyes" then
                    if Random.new(descendant.Size.Magnitude):NextInteger(1, 2) == 1 then
                        descendant.Color = Color3.fromRGB(248, 217, 109);
                    else
                        descendant.Color = Color3.fromRGB(0, 32, 96);
                    end;
                end;
            end;
        elseif p26 == "Idol" then
            local v795 = u25:FindFirstChild("Center") or u25.PrimaryPart;

            if not v795 then
                return;
            end;

            local ExtentsSize = u25:GetExtentsSize();
            local mouth = v795:FindFirstChild("mouth");

            if not mouth then
                return;
            end;

            local v796 = ReplicatedStorage.resources.replicated.instances.general:WaitForChild("idoltemplate"):Clone();
            v796.CFrame = v795.CFrame;
            v796.Size = ExtentsSize;
            math.max(ExtentsSize.X, ExtentsSize.Y);
            local _ = ExtentsSize.Y;
            local Position = mouth.Position;
            local v797 = (ExtentsSize.Y - math.max(mouth.Position.Y, 0)) / 8;
            local v798 = Position + Vector3.new(0, v797, 0);
            v796.RibbonBottom.Position = v798;
            v796.weld.Part0 = v795;
            v796.weld.Part1 = v796;
            v796.Parent = u25;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Name ~= "Eyes" then
                    if Random.new(descendant.Size.Magnitude):NextInteger(1, 2) == 1 then
                        descendant.Color = Color3.fromRGB(18, 238, 212);
                    else
                        descendant.Color = Color3.fromRGB(27, 42, 53);
                    end;
                end;
            end;
        elseif p26 == "Birthday" then
            local v799 = { Color3.fromRGB(255, 255, 255), Color3.fromRGB(255, 222, 169), Color3.fromRGB(229, 185, 255) };
            local Random_new_ret = Random.new(u25:GetExtentsSize():Max().X or 1);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 252, 216);
                        descendant.Material = Enum.Material.Neon;
                    elseif not table_freeze_ret[descendant.Name] then
                        descendant.Color = v799[Random_new_ret:NextInteger(1, #v799)];
                        descendant.Material = Enum.Material.SmoothPlastic;
                    end;
                end;
            end;

            local v800 = nil;

            for _, descendant in u25:GetDescendants() do
                if descendant:IsA("BasePart") and descendant.Name == "Eyes" then
                    v800 = descendant;
                    break;
                end;
            end;

            local v801 = v800 or (u25:FindFirstChild("Center") or u25.PrimaryPart);
            local ExtentsSize = u25:GetExtentsSize();

            if not v801 then
                return;
            end;

            local v802 = script.PartyHat:Clone();
            v802.Size = v802.Size * (ExtentsSize.Magnitude / 6);
            local Weld = Instance.new("Weld");
            Weld.Name = "CrownWeld";
            Weld.Part0 = v801;
            Weld.Part1 = v802;
            Weld.C1 = CFrame.new((Vector3.new(0, -(ExtentsSize.Y / 2 - v802.Size.Y) - 0.24 * ExtentsSize.Magnitude, 0))) * (v801.CFrame - v801.CFrame.Position) * CFrame.Angles(0, 4.71238898038469, 0);
            v802.CFrame = v801.CFrame * Weld.C0:Inverse();
            Weld.Parent = v801;
            v802.Parent = u25:FindFirstChild("Fish") or u25;

            if u25:FindFirstChild("handle") then
                local _, v803 = u25:GetBoundingBox();
                local v804 = general:WaitForChild("birthdaytemplate"):Clone();
                v804.CFrame = (u25:FindFirstChild("Center") or u25:FindFirstChild("handle")).CFrame;
                v804.Size = v803;
                v804.weld.Part1 = v804;
                v804.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v804, v803, 4.5);
                v804.Parent = u25;
            end;
        elseif p26 == "Siren\'s Spite" then
            local v805 = nil;

            for _, descendant in u25:GetDescendants() do
                if descendant:IsA("BasePart") and descendant.Name == "Eyes" then
                    v805 = descendant;
                    break;
                end;
            end;

            local v806 = v805 or (u25:FindFirstChild("Center") or u25.PrimaryPart);
            local ExtentsSize = u25:GetExtentsSize();

            if not v806 then
                return;
            end;

            for _, descendant in u25:GetDescendants() do
                if descendant:IsA("BasePart") then
                    local v807, _, _ = Color3.fromRGB(139, 0, 0):ToHSV();

                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(178, 34, 34);
                        descendant.Material = Enum.Material.Neon;
                    else
                        local _, v808, v809 = descendant.Color:ToHSV();
                        descendant.Color = Color3.fromHSV(math.clamp(v807 + (0 - v807) * 0.05, 0, 1), math.clamp(v808 + 0.2 + (0.8 - (v808 + 0.2)) * 0.05, 0, 1), (math.clamp(v809 * 0.65 + (0.35 - v809 * 0.65) * 0.05, 0, 1)));
                    end;
                end;
            end;

            local v810 = script.EvilCrown:Clone();
            local Mesh = v810.Mesh;
            Mesh.Scale = Mesh.Scale * (ExtentsSize.Magnitude / 2);
            v810.CFrame = v806.CFrame + Vector3.new(0, ExtentsSize.Y / 4, 0);
            local WeldConstraint = Instance.new("WeldConstraint");
            WeldConstraint.Name = "CrownWeld";
            WeldConstraint.Part0 = v806;
            WeldConstraint.Part1 = v810;
            WeldConstraint.Parent = v806;
            v810.Parent = u25:FindFirstChild("Fish") or u25;
            local v811 = { 1, v810.Transparency };
            v810:SetAttribute("PulseTime", 1);

            if v811 then
                for i, v in v811 do
                    v810:SetAttribute(`PulseTrans{i}`, v);
                end;
            end;

            v810:AddTag("ColorPulse");
        elseif p26 == "Albino" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local v812, _, _ = Color3.fromRGB(descendant.Color.R, descendant.Color.G, descendant.Color.B):ToHSV();

                    if descendant.Name == "Eyes" then
                        local math_clamp_ret = math.clamp(1 - v812, 0.6, 1);
                        descendant.Color = Color3.new(math_clamp_ret, math_clamp_ret, math_clamp_ret);
                    else
                        local math_clamp_ret = math.clamp(1 - v812, 0.6, 1);
                        descendant.Color = Color3.new(math_clamp_ret, math_clamp_ret, math_clamp_ret);
                    end;
                end;
            end;
        elseif p26 == "Clover" then
            local Random_new_ret = Random.new(100);

            for _, descendant in u25:GetDescendants() do
                if descendant:IsA("BasePart") then
                    local v813 = Random_new_ret:NextInteger(1, 100);
                    local v814 = nil;

                    if v813 <= 30 then
                        v814 = Color3.fromRGB(13, 255, 0);
                    elseif v813 <= 90 then
                        v814 = Color3.fromRGB(0, 0, 0);
                    elseif v813 <= 100 then
                        v814 = Color3.fromRGB(255, 238, 0);
                    end;

                    descendant.Color = v814;
                end;
            end;
        elseif p26 == "Blarney" then
            local Random_new_ret = Random.new(100);

            for _, descendant in u25:GetDescendants() do
                if descendant:IsA("BasePart") then
                    local v815 = Random_new_ret:NextInteger(1, 100);
                    local v816 = nil;

                    if v815 <= 30 then
                        v816 = Color3.fromRGB(13, 255, 0);
                    elseif v815 <= 90 then
                        v816 = Color3.fromRGB(0, 242, 255);
                    elseif v815 <= 100 then
                        v816 = Color3.fromRGB(255, 238, 0);
                    end;

                    descendant.Color = v816;
                    descendant.Material = Enum.Material.Neon;
                end;
            end;
        elseif p26 == "Midas" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local v817, _, _ = Color3.fromRGB(descendant.Color.R, descendant.Color.G, descendant.Color.B):ToHSV();

                    if descendant.Name ~= "Eyes" then
                        local math_clamp_ret = math.clamp(v817 * 250, 0, 50);
                        descendant.Color = Color3.fromRGB(250 - math_clamp_ret, 185 - math_clamp_ret, 73 - math_clamp_ret);

                        if descendant.Material ~= Enum.Material.Neon then
                            descendant.Material = Enum.Material.Metal;
                        end;
                    end;
                end;
            end;
        elseif p26 == "Rusty" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and descendant.Material ~= Enum.Material.Neon) then
                    descendant.Material = Enum.Material.CorrodedMetal;
                end;
            end;
        elseif p26 == "Sinister" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local v818, _, _ = Color3.fromRGB(descendant.Color.R, descendant.Color.G, descendant.Color.B):ToHSV();

                    if descendant.Name ~= "Eyes" then
                        local math_clamp_ret = math.clamp(v818 * 250, 0, 50);
                        descendant.Color = Color3.fromRGB(122 - math_clamp_ret, 122 - math_clamp_ret, 114 - math_clamp_ret);

                        if descendant.Material ~= Enum.Material.Neon then
                            descendant.Material = Enum.Material.Granite;
                        end;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v819 = u25:GetBoundingBox();
                local v820 = general:WaitForChild("sinistertemplate"):Clone();
                v820.Size = v819;
                v820.weld.Part1 = v820;
                v820.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v820, v819, 4.5);
                v820.Parent = u25;
            end;
        elseif p26 == "Ghastly" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency < 1 then
                    local v821, _, _ = Color3.fromRGB(descendant.Color.R, descendant.Color.G, descendant.Color.B):ToHSV();

                    if descendant.Name ~= "Eyes" then
                        local math_clamp_ret = math.clamp(v821 * 250, 0, 50);
                        descendant.Color = Color3.fromRGB(97 - math_clamp_ret, 255 - math_clamp_ret, 94 - math_clamp_ret);
                        descendant.Material = Enum.Material.Neon;
                        descendant.Transparency = 0.7;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v822 = u25:GetBoundingBox();
                local v823 = general:WaitForChild("ghastlytemplate"):Clone();
                v823.Size = v822;
                v823.weld.Part1 = v823;
                v823.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v823, v822, 4.5);
                v823.Parent = u25;
            end;
        elseif p26 == "Husk" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency < 1 then
                    Color3.fromRGB(descendant.Color.R, descendant.Color.G, descendant.Color.B);

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromRGB(103, 91, 69);
                        descendant.Material = Enum.Material.Neon;
                        descendant.Transparency = 0.7;
                    end;
                end;
            end;
        elseif p26 == "Forgotten" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency < 1 then
                    Color3.fromRGB(descendant.Color.R, descendant.Color.G, descendant.Color.B);

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromRGB(13, 10, 10);
                        descendant.Material = Enum.Material.Neon;
                        descendant.Transparency = 0.5;
                    end;
                end;
            end;
        elseif p26 == "Shrouded" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency < 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 255, 255);
                        descendant.Material = Enum.Material.Neon;
                        descendant.Transparency = 0;
                    else
                        local v824, v825, v826 = Color3.fromRGB(descendant.Color.R * 200, descendant.Color.G * 255, descendant.Color.B * 200):ToHSV();
                        local math_clamp_ret = math.clamp(v824 * 0.9, 0, 1);
                        descendant.Color = Color3.fromHSV(math_clamp_ret, v825 * 0.3, v826 * 0.9);
                        descendant.Material = Enum.Material.Neon;
                        descendant.Transparency = 0.35;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v827 = u25:GetBoundingBox();
                local v828 = general:WaitForChild("shroudedtemplate"):Clone();
                v828.Size = v827;
                v828.weld.Part1 = v828;
                v828.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v828, v827, 4.5);
                v828.Parent = u25;
            end;
        elseif p26 == "Merry" then
            local v829 = {
                Color3.fromRGB(255, 0, 0),
                Color3.fromRGB(0, 255, 0),
                Color3.fromRGB(255, 255, 0),
                Color3.fromRGB(0, 200, 255),
                Color3.fromRGB(255, 50, 200),
                Color3.fromRGB(255, 100, 0),
                Color3.fromRGB(180, 0, 255)
            };
            local Color3_fromRGB_ret = Color3.fromRGB(20, 90, 20);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency < 1 and descendant.Name ~= "Eyes") then
                    local v830 = tick() + #descendant:GetFullName();
                    local Random_new_ret = Random.new((math.floor(v830 * 1000000)));

                    if Random_new_ret:NextInteger(1, 100) <= 38 then
                        local v831 = v829[Random_new_ret:NextInteger(1, #v829)];
                        local v832 = descendant;
                        local v833 = v831;

                        while v831 == v833 do
                            v831 = v829[Random_new_ret:NextInteger(1, #v829)];
                        end;

                        v832.Material = Enum.Material.Neon;
                        v832.Color = v833;
                        quickColorPulse(v832, Random_new_ret:NextNumber(1.4, 2.6), { v833, v831 }, { 0.15, 0 });
                    else
                        local v834, v835, v836 = Color3_fromRGB_ret:ToHSV();
                        local Color3_fromHSV = Color3.fromHSV;
                        local v837 = v835 * Random_new_ret:NextNumber(0.9, 1.2);
                        local math_clamp_ret = math.clamp(v837, 0, 1);
                        local v838 = v836 * Random_new_ret:NextNumber(0.8, 1.1);
                        descendant.Color = Color3_fromHSV(v834, math_clamp_ret, (math.clamp(v838, 0, 1)));
                        descendant.Material = Enum.Material.Grass;
                    end;
                end;
            end;
        elseif p26 == "Jolly" then
            local v839 = {
                Color3.fromRGB(255, 46, 46),
                Color3.fromRGB(255, 221, 48),
                Color3.fromRGB(58, 255, 44),
                Color3.fromRGB(51, 167, 255)
            };
            local Color3_fromRGB_ret = Color3.fromRGB(21, 75, 18);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v840 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local v841 = (descendant.Size.X + descendant.Size.Y + descendant.Size.Z) * descendant.Size.Unit.Magnitude ^ descendant.Size.Magnitude;
                    local _, _, _ = descendant.Color:ToHSV();

                    if Random.new(v840):NextInteger(0, 5) <= 2 then
                        local v842;

                        if Random.new((descendant.Size.X + descendant.Size.Y + descendant.Size.Z) * descendant.Size.Unit.Magnitude ^ Random.new(v841):NextNumber(0, 10)):NextInteger(0, 3) <= 1 then
                            v842 = v839[1];
                        else
                            v842 = v839[Random.new(v841 * 414):NextInteger(1, #v839)];
                        end;

                        local v843, v844, v845 = v842:ToHSV();
                        local Color3_fromHSV = Color3.fromHSV;
                        local v846 = v844 * Random.new(v840):NextNumber(0.9, 1.1);
                        local math_clamp_ret = math.clamp(v846, 0, 1);
                        local v847 = v845 * Random.new(v840):NextNumber(0.95, 1.05);
                        descendant.Color = Color3_fromHSV(v843, math_clamp_ret, (math.clamp(v847, 0, 1)));
                        descendant.Material = Enum.Material.Neon;
                    else
                        local v848, v849, v850 = Color3_fromRGB_ret:ToHSV();
                        local Color3_fromHSV = Color3.fromHSV;
                        local v851 = v849 * Random.new(v840):NextNumber(0.9, 1.1);
                        local math_clamp_ret = math.clamp(v851, 0, 1);
                        local v852 = v850 * Random.new(v840):NextNumber(0.95, 1.05);
                        descendant.Color = Color3_fromHSV(v848, math_clamp_ret, (math.clamp(v852, 0, 1)));
                        descendant.Material = Enum.Material.Grass;
                    end;
                end;
            end;
        elseif p26 == "Bioluminescent" then
            local v853 = {
                Color3.fromRGB(3, 138, 186),
                Color3.fromRGB(3, 153, 203),
                Color3.fromRGB(3, 129, 171),
                Color3.fromRGB(15, 149, 186)
            };
            local Color3_fromRGB_ret = Color3.fromRGB(37, 80, 13);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v854 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local v855 = (descendant.Size.X + descendant.Size.Y + descendant.Size.Z) * descendant.Size.Unit.Magnitude ^ descendant.Size.Magnitude;
                    local _, _, _ = descendant.Color:ToHSV();

                    if Random.new(v854):NextInteger(0, 5) <= 2 then
                        local v856;

                        if Random.new((descendant.Size.X + descendant.Size.Y + descendant.Size.Z) * descendant.Size.Unit.Magnitude ^ Random.new(v855):NextNumber(0, 10)):NextInteger(0, 3) <= 1 then
                            v856 = v853[1];
                        else
                            v856 = v853[Random.new(v855 * 414):NextInteger(1, #v853)];
                        end;

                        local v857, v858, v859 = v856:ToHSV();
                        local Color3_fromHSV = Color3.fromHSV;
                        local v860 = v858 * Random.new(v854):NextNumber(0.9, 1.1);
                        local math_clamp_ret = math.clamp(v860, 0, 1);
                        local v861 = v859 * Random.new(v854):NextNumber(0.95, 1.05);
                        descendant.Color = Color3_fromHSV(v857, math_clamp_ret, (math.clamp(v861, 0, 1)));
                        descendant.Material = Enum.Material.Neon;
                    else
                        local v862, v863, v864 = Color3_fromRGB_ret:ToHSV();
                        local Color3_fromHSV = Color3.fromHSV;
                        local v865 = v863 * Random.new(v854):NextNumber(0.9, 1.1);
                        local math_clamp_ret = math.clamp(v865, 0, 1);
                        local v866 = v864 * Random.new(v854):NextNumber(0.95, 1.05);
                        descendant.Color = Color3_fromHSV(v862, math_clamp_ret, (math.clamp(v866, 0, 1)));
                        descendant.Material = Enum.Material.Grass;
                    end;
                end;
            end;
        elseif p26 == "Festive" then
            local Color3_fromRGB_ret = Color3.fromRGB(238, 0, 0);
            local Color3_fromRGB_ret2 = Color3.fromRGB(238, 227, 227);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v867 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, _ = descendant.Color:ToHSV();
                    local v868, v869, v870 = (Random.new(v867):NextInteger(0, 1) == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret2):ToHSV();
                    local Color3_fromHSV = Color3.fromHSV;
                    local v871 = v869 * Random.new(v867):NextNumber(0.9, 1.1);
                    local math_clamp_ret = math.clamp(v871, 0, 1);
                    local v872 = v870 * Random.new(v867):NextNumber(0.95, 1.05);
                    descendant.Color = Color3_fromHSV(v868, math_clamp_ret, (math.clamp(v872, 0, 1)));
                    descendant.Material = Enum.Material.Ice;
                end;
            end;
        elseif p26 == "Minty" then
            local Color3_fromRGB_ret = Color3.fromRGB(147, 255, 192);
            local Color3_fromRGB_ret2 = Color3.fromRGB(80, 255, 159);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v873 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, _ = descendant.Color:ToHSV();
                    local v874, v875, v876 = (Random.new(v873):NextInteger(0, 1) == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret2):ToHSV();
                    local Color3_fromHSV = Color3.fromHSV;
                    local v877 = v875 * Random.new(v873):NextNumber(0.9, 1.1);
                    local math_clamp_ret = math.clamp(v877, 0, 1);
                    local v878 = v876 * Random.new(v873):NextNumber(0.95, 1.05);
                    descendant.Color = Color3_fromHSV(v874, math_clamp_ret, (math.clamp(v878, 0, 1)));
                end;
            end;
        elseif p26 == "Frostnova" then
            local Color3_fromRGB_ret = Color3.fromRGB(137, 198, 255);
            local Color3_fromRGB_ret2 = Color3.fromRGB(101, 137, 255);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v879 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, _ = descendant.Color:ToHSV();
                    local v880, v881, v882 = (Random.new(v879):NextInteger(0, 1) == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret2):ToHSV();
                    local Color3_fromHSV = Color3.fromHSV;
                    local v883 = v881 * Random.new(v879):NextNumber(0.9, 1.1);
                    local math_clamp_ret = math.clamp(v883, 0, 1);
                    local v884 = v882 * Random.new(v879):NextNumber(0.95, 1.05);
                    descendant.Color = Color3_fromHSV(v880, math_clamp_ret, (math.clamp(v884, 0, 1)));
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v885 = u25:GetBoundingBox();
                local v886 = general:WaitForChild("frostnovatemplate"):Clone();
                v886.Size = v885;
                v886.weld.Part1 = v886;
                v886.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v886, v885, 4.5);
            end;
        elseif p26 == "Floral" then
            local v887 = {
                Color3.fromRGB(255, 180, 220),
                Color3.fromRGB(255, 219, 169),
                Color3.fromRGB(148, 255, 142),
                Color3.fromRGB(134, 188, 255)
            };
            local Color3_fromRGB_ret = Color3.fromRGB(81, 213, 107);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v888 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local v889 = (descendant.Size.X + descendant.Size.Y + descendant.Size.Z) * descendant.Size.Unit.Magnitude ^ descendant.Size.Magnitude;
                    local _, _, _ = descendant.Color:ToHSV();

                    if Random.new(v888):NextInteger(0, 5) <= 2 then
                        local v890;

                        if Random.new((descendant.Size.X + descendant.Size.Y + descendant.Size.Z) * descendant.Size.Unit.Magnitude ^ Random.new(v889):NextNumber(0, 10)):NextInteger(0, 3) <= 1 then
                            v890 = v887[1];
                        else
                            v890 = v887[Random.new(v889 * 414):NextInteger(1, #v887)];
                        end;

                        local v891, v892, v893 = v890:ToHSV();
                        local Color3_fromHSV = Color3.fromHSV;
                        local v894 = v892 * Random.new(v888):NextNumber(0.9, 1.1);
                        local math_clamp_ret = math.clamp(v894, 0, 1);
                        local v895 = v893 * Random.new(v888):NextNumber(0.95, 1.05);
                        descendant.Color = Color3_fromHSV(v891, math_clamp_ret, (math.clamp(v895, 0, 1)));
                        descendant.Material = Enum.Material.SmoothPlastic;
                    else
                        local v896, v897, v898 = Color3_fromRGB_ret:ToHSV();
                        local Color3_fromHSV = Color3.fromHSV;
                        local v899 = v897 * Random.new(v888):NextNumber(0.9, 1.1);
                        local math_clamp_ret = math.clamp(v899, 0, 1);
                        local v900 = v898 * Random.new(v888):NextNumber(0.95, 1.05);
                        descendant.Color = Color3_fromHSV(v896, math_clamp_ret, (math.clamp(v900, 0, 1)));
                        descendant.Material = Enum.Material.Grass;
                    end;
                end;
            end;
        elseif p26 == "Blossomed" then
            local v901 = {
                Color3.fromRGB(164, 255, 172),
                Color3.fromRGB(86, 204, 78),
                Color3.fromRGB(62, 177, 62),
                Color3.fromRGB(157, 255, 115)
            };
            local Color3_fromRGB_ret = Color3.fromRGB(86, 57, 21);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v902 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local v903 = (descendant.Size.X + descendant.Size.Y + descendant.Size.Z) * descendant.Size.Unit.Magnitude ^ descendant.Size.Magnitude;
                    local _, _, _ = descendant.Color:ToHSV();

                    if Random.new(v902):NextInteger(0, 5) <= 2 then
                        local v904;

                        if Random.new((descendant.Size.X + descendant.Size.Y + descendant.Size.Z) * descendant.Size.Unit.Magnitude ^ Random.new(v903):NextNumber(0, 10)):NextInteger(0, 3) <= 1 then
                            v904 = v901[1];
                        else
                            v904 = v901[Random.new(v903 * 414):NextInteger(1, #v901)];
                        end;

                        local v905, v906, v907 = v904:ToHSV();
                        local Color3_fromHSV = Color3.fromHSV;
                        local v908 = v906 * Random.new(v902):NextNumber(0.9, 1.1);
                        local math_clamp_ret = math.clamp(v908, 0, 1);
                        local v909 = v907 * Random.new(v902):NextNumber(0.95, 1.05);
                        descendant.Color = Color3_fromHSV(v905, math_clamp_ret, (math.clamp(v909, 0, 1)));
                        descendant.Material = Enum.Material.Grass;
                    else
                        local v910, v911, v912 = Color3_fromRGB_ret:ToHSV();
                        local Color3_fromHSV = Color3.fromHSV;
                        local v913 = v911 * Random.new(v902):NextNumber(0.9, 1.1);
                        local math_clamp_ret = math.clamp(v913, 0, 1);
                        local v914 = v912 * Random.new(v902):NextNumber(0.95, 1.05);
                        descendant.Color = Color3_fromHSV(v910, math_clamp_ret, (math.clamp(v914, 0, 1)));
                        descendant.Material = Enum.Material.Wood;
                    end;
                end;
            end;
        elseif p26 == "Embraced" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 248, 226);
            local Color3_fromRGB_ret2 = Color3.fromRGB(255, 133, 239);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v915 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, _ = descendant.Color:ToHSV();
                    local v916, v917, v918 = (Random.new(v915):NextInteger(0, 1) == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret2):ToHSV();
                    local Color3_fromHSV = Color3.fromHSV;
                    local v919 = v917 * Random.new(v915):NextNumber(0.9, 1.1);
                    local math_clamp_ret = math.clamp(v919, 0, 1);
                    local v920 = v918 * Random.new(v915):NextNumber(0.95, 1.05);
                    descendant.Color = Color3_fromHSV(v916, math_clamp_ret, (math.clamp(v920, 0, 1)));
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v921 = u25:GetBoundingBox();
                local v922 = general:WaitForChild("embracedtemplate"):Clone();
                v922.Size = v921;
                v922.weld.Part1 = v922;
                v922.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v922, v921, 4.5);
            end;
        elseif p26 == "Lovestruck" then
            local Color3_fromRGB_ret = Color3.fromRGB(254, 248, 255);
            local Color3_fromRGB_ret2 = Color3.fromRGB(255, 167, 207);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v923 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, _ = descendant.Color:ToHSV();
                    local v924, v925, v926 = (Random.new(v923):NextInteger(0, 1) == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret2):ToHSV();
                    local Color3_fromHSV = Color3.fromHSV;
                    local v927 = v925 * Random.new(v923):NextNumber(0.9, 1.1);
                    local math_clamp_ret = math.clamp(v927, 0, 1);
                    local v928 = v926 * Random.new(v923):NextNumber(0.95, 1.05);
                    descendant.Color = Color3_fromHSV(v924, math_clamp_ret, (math.clamp(v928, 0, 1)));
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v929 = u25:GetBoundingBox();
                local v930 = general:WaitForChild("lovestrucktemplate"):Clone();
                v930.Size = v929;
                v930.weld.Part1 = v930;
                v930.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v930, v929, 4.5);
                v930.Parent = u25;
            end;
        elseif p26 == "Igneous" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 81, 0);
            local v931 = { Enum.Material.Neon, Enum.Material.ForceField };
            local v932 = 1;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and not table_freeze_ret[descendant.Name] then
                    descendant.Color = Color3_fromRGB_ret;

                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Material = v931[v932];
                        v932 = v932 % #v931 + 1;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v933 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v934 = general:WaitForChild("igneoustemplate"):Clone();
                v934.Size = v933 * 0.75;
                v934.weld.Part1 = v934;
                v934.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v934, v933, 12);
                v934.Parent = u25;
            end;
        elseif p26 == "Solar" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 243, 114);
            local v935 = { Enum.Material.Neon, Enum.Material.ForceField };
            local v936 = 1;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and not table_freeze_ret[descendant.Name] then
                    descendant.Color = Color3_fromRGB_ret;

                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Material = v935[v936];
                        v936 = v936 % #v935 + 1;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v937 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v938 = general:WaitForChild("solartemplate"):Clone();
                v938.Size = v937 * 0.75;
                v938.weld.Part1 = v938;
                v938.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v938, v937, 12);
                v938.Parent = u25;
            end;
        elseif p26 == "Mossy" then
            local Color3_fromRGB_ret = Color3.fromRGB(46, 71, 46);
            local Color3_fromRGB_ret2 = Color3.fromRGB(22, 70, 44);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v939 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, _ = descendant.Color:ToHSV();
                    local v940, v941, v942 = (Random.new(v939):NextInteger(0, 1) == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret2):ToHSV();
                    local Color3_fromHSV = Color3.fromHSV;
                    local v943 = v941 * Random.new(v939):NextNumber(0.9, 1.1);
                    local math_clamp_ret = math.clamp(v943, 0, 1);
                    local v944 = v942 * Random.new(v939):NextNumber(0.95, 1.05);
                    descendant.Color = Color3_fromHSV(v940, math_clamp_ret, (math.clamp(v944, 0, 1)));
                    descendant.Material = Enum.Material.Grass;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v945 = u25:GetBoundingBox();
                local v946 = general:WaitForChild("mossytemplate"):Clone();
                v946.Size = v945;
                v946.weld.Part1 = v946;
                v946.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v946, v945, 4.5);
                local Center = u25:FindFirstChild("Center");

                if Center then
                    for _, descendant in ipairs(v946:GetDescendants()) do
                        if descendant:IsA("Attachment") then
                            descendant.Parent = Center;

                            for _, child in ipairs(descendant:GetChildren()) do
                                if child:IsA("ParticleEmitter") then
                                    child.ZOffset = math.max(v945.X, v945.Y, v945.Z) / 4.5 * 1;
                                end;
                            end;
                        end;
                    end;
                end;

                v946.Parent = u25;
            end;
        elseif p26 == "Glossy" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    descendant.Material = Enum.Material.Plastic;
                    descendant.Reflectance = 0.7;
                end;
            end;
        elseif p26 == "Silver" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local v947, _, _ = Color3.fromRGB(descendant.Color.R, descendant.Color.G, descendant.Color.B):ToHSV();

                    if descendant.Name ~= "Eyes" then
                        local math_clamp_ret = math.clamp(v947 * 250, 0, 50);
                        descendant.Color = Color3.fromRGB(161 - math_clamp_ret, 161 - math_clamp_ret, 170 - math_clamp_ret);

                        if descendant.Material ~= Enum.Material.Neon then
                            descendant.Material = Enum.Material.Metal;
                        end;
                    end;
                end;
            end;
        elseif p26 == "Darkened" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local v948, _, _ = Color3.fromRGB(descendant.Color.R, descendant.Color.G, descendant.Color.B):ToHSV();
                    local math_clamp_ret = math.clamp(v948 * 100, 0, 45);
                    descendant.Color = Color3.fromRGB(45 - math_clamp_ret, 45 - math_clamp_ret, 45 - math_clamp_ret);
                end;
            end;
        elseif p26 == "Darkness" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local v949, _, _ = Color3.fromRGB(descendant.Color.R, descendant.Color.G, descendant.Color.B):ToHSV();
                    local math_clamp_ret = math.clamp(v949 * 100, 0, 45);
                    descendant.Color = Color3.fromRGB(45 - math_clamp_ret, 45 - math_clamp_ret, 45 - math_clamp_ret);
                    descendant.Material = Enum.Material.Neon;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v950 = u25:GetBoundingBox();
                local v951 = general:WaitForChild("darknesstemplate"):Clone();
                v951.Size = v950;
                v951.weld.Part1 = v951;
                v951.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v951, v950, 4.5);
                local Center = u25:FindFirstChild("Center");

                if Center then
                    for _, descendant in ipairs(v951:GetDescendants()) do
                        if descendant:IsA("Attachment") then
                            descendant.Parent = Center;
                        end;
                    end;
                end;

                v951.Parent = u25;
            end;
        elseif p26 == "Light" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local v952, _, _ = descendant.Color:ToHSV();
                    local math_clamp_ret = math.clamp(v952 * 100, 0, 45);
                    descendant.Color = Color3.fromRGB(210 + math_clamp_ret, 210 + math_clamp_ret, 210 + math_clamp_ret);
                    descendant.Material = Enum.Material.Rock;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v953 = u25:GetBoundingBox();
                local v954 = general:WaitForChild("lighttemplate"):Clone();
                v954.Size = v953;
                v954.weld.Part1 = v954;
                v954.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v954, v953, 4.5);
                local Center = u25:FindFirstChild("Center");

                if Center then
                    for _, descendant in ipairs(v954:GetDescendants()) do
                        if descendant:IsA("Attachment") then
                            descendant.Parent = Center;
                        end;
                    end;
                end;

                v954.Parent = u25;
            end;
        elseif p26 == "Translucent" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    descendant.Transparency = 0.7;
                end;
            end;

            script:WaitForChild("translucent_script"):Clone().Parent = u25:FindFirstChild("Center") or u25.PrimaryPart;
        elseif p26 == "Negative" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local Color3_new_ret = Color3.new(descendant.Color.R, descendant.Color.G, descendant.Color.B);
                    local v955 = 1 - Color3_new_ret.R;
                    local v956 = 1 - Color3_new_ret.G;
                    local v957 = 1 - Color3_new_ret.B;

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.new(v955, v956, v957);
                    end;
                end;
            end;
        elseif p26 == "Atlantean" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                local v958, _, _ = Color3.fromRGB(34, 153, 149):ToHSV();

                if descendant:IsA("BasePart") then
                    local _, v959, v960 = descendant.Color:ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromHSV(math.clamp(v958, 0, 1), math.clamp(v959 + 0.2, 0, 1), (math.clamp(v960 * 0.65, 0, 1)));
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v961 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v962 = general:WaitForChild("atlanteantemplate"):Clone();
                v962.Size = v961;
                v962.weld.Part1 = v962;
                v962.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v962.Parent = u25;
            end;
        elseif p26 == "Putrid" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                local v963, _, _ = Color3.fromRGB(68, 89, 58):ToHSV();

                if descendant:IsA("BasePart") then
                    local _, v964, v965 = descendant.Color:ToHSV();

                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(0, 0, 0);
                    else
                        descendant.Color = Color3.fromHSV(math.clamp(v963, 0, 1), math.clamp(v964 + 0.2, 0, 1), (math.clamp(v965 * 0.65, 0, 1)));
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v966 = u25:GetBoundingBox();
                local v967 = general:WaitForChild("putridtemplate"):Clone();
                v967.Size = v966;
                v967.weld.Part1 = v967;
                v967.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v967, v966, 4.5);
                v967.Parent = u25;
            end;
        elseif p26 == "Frostbitten" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                local v968, _, _ = Color3.fromRGB(148, 194, 255):ToHSV();

                if descendant:IsA("BasePart") then
                    local _, v969, v970 = descendant.Color:ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromHSV(math.clamp(v968, 0, 1), math.clamp(v969 + 0.2, 0, 1), (math.clamp(v970 * 0.65, 0, 1)));
                        descendant.Material = Enum.Material.Ice;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v971 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v972 = general:WaitForChild("frostbittentemplate"):Clone();
                v972.Size = v971;
                v972.weld.Part1 = v972;
                v972.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v972.Parent = u25;
            end;
        elseif p26 == "Fabulous" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local v973 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local v974 = v973 * v973;

                    if descendant.Name ~= "Eyes" and descendant.Transparency ~= 1 then
                        descendant.Color = Color3.fromHSV(Random.new(v974):NextInteger(1, 2) == 1 and 0.827 or 0.567, 0.4, 1);
                        descendant.Material = Enum.Material.Neon;
                        descendant.Transparency = descendant.Transparency > 0.7 and (descendant.Transparency or 0.7) or 0.7;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v975 = u25:GetBoundingBox();
                local v976 = general:WaitForChild("fabuloustemplate"):Clone();
                v976.Size = v975;
                v976.weld.Part1 = v976;
                v976.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v976, v975, 4.5);
                v976.Parent = u25;
            end;
        elseif p26 == "Fungal" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                local v977, _, _ = Color3.fromRGB(11, 255, 100):ToHSV();

                if descendant:IsA("BasePart") then
                    local _, v978, v979 = descendant.Color:ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromHSV(math.clamp(v977, 0, 1), math.clamp(v978 + 0.2, 0, 1), (math.clamp(v979 * 0.65, 0, 1)));
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v980 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v981 = general:WaitForChild("fungaltemplate"):Clone();
                v981.Size = v980;
                v981.weld.Part1 = v981;
                v981.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v981.Parent = u25;
            end;
        elseif p26 == "Poisoned" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                local v982, _, _ = Color3.fromRGB(82, 34, 153):ToHSV();

                if descendant:IsA("BasePart") then
                    local _, v983, v984 = descendant.Color:ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromHSV(math.clamp(v982, 0, 1), math.clamp(v983 + 0.4, 0, 1), (math.clamp(v984 * 0.5, 0, 1)));
                    end;
                end;
            end;
        elseif p26 == "SixSeven" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local _, _, _ = Color3.fromRGB(descendant.Color.R, descendant.Color.G, descendant.Color.B):ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromRGB(225, 0, 255);

                        if descendant.Material ~= Enum.Material.Neon then
                            descendant.Material = Enum.Material.Grass;
                        end;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v985 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v986 = general:WaitForChild("sixseventemplate"):Clone();
                v986.Size = v985;
                v986.weld.Part1 = v986;
                v986.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v986.Parent = u25;
            end;
        elseif p26 == "Mayhem" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local v987, _, _ = Color3.fromRGB(descendant.Color.R, descendant.Color.G, descendant.Color.B):ToHSV();
                    local math_clamp_ret = math.clamp(v987 * 100, 0, 45);
                    descendant.Color = Color3.fromRGB(45 - math_clamp_ret, 45 - math_clamp_ret, 45 - math_clamp_ret);
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v988 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v989 = general:WaitForChild("mayhemtemplate"):Clone();
                v989.Size = v988;
                v989.weld.Part1 = v989;
                v989.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v989.Parent = u25;
            end;
        elseif p26 == "Madness" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local v990, _, _ = Color3.fromRGB(descendant.Color.R, descendant.Color.G, descendant.Color.B):ToHSV();
                    local math_clamp_ret = math.clamp(v990 * 100, 0, 45);
                    descendant.Color = Color3.fromRGB(45 - math_clamp_ret, 45 - math_clamp_ret, 45 - math_clamp_ret);
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v991 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v992 = general:WaitForChild("madnesstemplate"):Clone();
                v992.Size = v991;
                v992.weld.Part1 = v992;
                v992.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v992.Parent = u25;
            end;
        elseif p26 == "Alien" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local _, _, _ = Color3.fromRGB(descendant.Color.R, descendant.Color.G, descendant.Color.B):ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromRGB(0, 255, 8);

                        if descendant.Material ~= Enum.Material.Neon then
                            descendant.Material = Enum.Material.ForceField;
                            descendant.Reflectance = 0.3;
                        end;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v993 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v994 = general:WaitForChild("alientemplate"):Clone();
                v994.Size = v993;
                v994.weld.Part1 = v994;
                v994.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v994.Parent = u25;
            end;
        elseif p26 == "Gleebous" then
            local v995 = { Color3.fromRGB(116, 172, 98), Color3.fromRGB(149, 172, 96) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(0, 0, 0);
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = v995[math.random(1, #v995)];
                        descendant.Material = Enum.Material.Neon;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v996 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v997 = general:WaitForChild("gleeboustemplate"):Clone();
                v997.Size = v996;
                v997.weld.Part1 = v997;
                v997.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v997.Parent = u25;
            end;
        elseif p26 == "Atomic" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local _, _, _ = Color3.fromRGB(descendant.Color.R, descendant.Color.G, descendant.Color.B):ToHSV();

                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(166, 199, 0);
                        descendant.Material = Enum.Material.ForceField;
                    else
                        descendant.Color = Color3.fromRGB(212, 255, 0);
                        descendant.Material = Enum.Material.Neon;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v998 = Hitbox.Size * 1.4;
                local v999 = general:WaitForChild("atomictemplate"):Clone();
                local _ = v999.Size;
                v999.Size = v998;
                resizeMutationTemplate(v999, v998, 8);
                v999.weld.Part1 = v999;
                v999.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v999.Parent = u25;
            end;
        elseif p26 == "Fragmented" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local _, _, _ = Color3.fromRGB(descendant.Color.R, descendant.Color.G, descendant.Color.B):ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromRGB(0, 255, 204);

                        if descendant.Material ~= Enum.Material.Neon then
                            descendant.Material = Enum.Material.ForceField;
                            descendant.Reflectance = 0.3;
                        end;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1000 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1001 = general:WaitForChild("fragmentedtemplate"):Clone();
                v1001.Size = v1000;
                v1001.weld.Part1 = v1001;
                v1001.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1001.Parent = u25;
            end;
        elseif p26 == "Golden" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local _, _, _ = Color3.fromRGB(descendant.Color.R, descendant.Color.G, descendant.Color.B):ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 191, 43);

                        if descendant.Material ~= Enum.Material.Neon then
                            descendant.Material = Enum.Material.Metal;
                            descendant.Reflectance = 0.3;
                        end;
                    end;
                end;
            end;
        elseif p26 == "Jingle Bell" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local _, _, _ = Color3.fromRGB(descendant.Color.R, descendant.Color.G, descendant.Color.B):ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 212, 38);

                        if descendant.Material ~= Enum.Material.Neon then
                            descendant.Material = Enum.Material.Metal;
                            descendant.Reflectance = 0.2;
                        end;
                    end;
                end;
            end;
        elseif p26 == "Fortune" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local _, _, _ = Color3.fromRGB(descendant.Color.R, descendant.Color.G, descendant.Color.B):ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 185, 88);

                        if descendant.Material ~= Enum.Material.Neon then
                            descendant.Material = Enum.Material.Metal;
                            descendant.Reflectance = 0.35;
                        end;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1002 = Size + Vector3.new(Size.X * 1.1, Size.Y * 1.1, Size.Z * 1.1);
                local v1003 = general:WaitForChild("fortunetemplate"):Clone();
                v1003.Size = v1002;
                v1003.weld.Part1 = v1003;
                v1003.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1003, v1002, 8.5);
                v1003.Parent = u25;
            end;
        elseif p26 == "Lustrous" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local _, _, _ = Color3.fromRGB(descendant.Color.R, descendant.Color.G, descendant.Color.B):ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 198, 105);

                        if descendant.Material ~= Enum.Material.Neon then
                            descendant.Material = Enum.Material.Metal;
                            descendant.Reflectance = 0.4;
                        end;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1004 = Size + Vector3.new(Size.X * 1.1, Size.Y * 1.1, Size.Z * 1.1);
                local v1005 = general:WaitForChild("lustroustemplate"):Clone();
                v1005.Size = v1004;
                v1005.weld.Part1 = v1005;
                v1005.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1005, v1004, 8.5);
                v1005.Parent = u25;
            end;
        elseif p26 == "Radiant" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 229, 124);
            local Color3_fromRGB_ret2 = Color3.fromRGB(238, 222, 197);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v1006 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, _ = descendant.Color:ToHSV();
                    local v1007, v1008, v1009 = (Random.new(v1006):NextInteger(0, 1) == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret2):ToHSV();
                    local Color3_fromHSV = Color3.fromHSV;
                    local v1010 = v1008 * Random.new(v1006):NextNumber(0.9, 1.1);
                    local math_clamp_ret = math.clamp(v1010, 0, 1);
                    local v1011 = v1009 * Random.new(v1006):NextNumber(0.95, 1.05);
                    descendant.Color = Color3_fromHSV(v1007, math_clamp_ret, (math.clamp(v1011, 0, 1)));
                    descendant.Material = Enum.Material.Ice;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1012 = Size + Vector3.new(Size.X * 1.1, Size.Y * 1.1, Size.Z * 1.1);
                local v1013 = general:WaitForChild("radianttemplate"):Clone();
                v1013.Size = v1012;
                v1013.weld.Part1 = v1013;
                v1013.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1013, v1012, 8.5);
                v1013.Parent = u25;
            end;
        elseif p26 == "Lucky Gold" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 192, 116);
            local Color3_fromRGB_ret2 = Color3.fromRGB(238, 205, 87);
            local Color3_fromRGB_ret3 = Color3.fromRGB(123, 238, 62);
            local Color3_fromRGB_ret4 = Color3.fromRGB(183, 223, 118);
            local Color3_fromRGB_ret5 = Color3.fromRGB(255, 207, 149);
            local Color3_fromRGB_ret6 = Color3.fromRGB(127, 197, 97);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3_fromRGB_ret5;
                        descendant.Transparency = 0.05;
                        quickColorPulse(descendant, 2, { Color3_fromRGB_ret6, Color3_fromRGB_ret5 }, { 0.25, 0.05 });
                    else
                        descendant.Material = Enum.Material.Ice;
                        local v1014 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v1015 = Random.new(v1014):NextInteger(0, 1);
                        local v1016 = v1015 == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret3;
                        local v1017;

                        if v1015 == 1 then
                            v1017 = Color3_fromRGB_ret2 or Color3_fromRGB_ret4;
                        else
                            v1017 = Color3_fromRGB_ret4;
                        end;

                        descendant.Color = v1016;
                        local v1018 = { v1017, v1016 };
                        descendant:SetAttribute("PulseTime", 2);
                        local v1019;

                        if v1018 then
                            v1019 = descendant;

                            for i, v in v1018 do
                                v1019:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v1019 = descendant;
                        end;

                        v1019:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1020 = Size + Vector3.new(Size.X * 1.1, Size.Y * 1.1, Size.Z * 1.1);
                local v1021 = general:WaitForChild("luckygoldtemplate"):Clone();
                v1021.Size = v1020;
                v1021.weld.Part1 = v1021;
                v1021.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1021, v1020, 8.5);
                v1021.Parent = u25;
            end;
        elseif p26 == "Evil" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                local v1022, _, _ = Color3.fromRGB(88, 20, 20):ToHSV();

                if descendant:IsA("BasePart") then
                    local _, v1023, v1024 = descendant.Color:ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromHSV(math.clamp(v1022, 0, 1), math.clamp(v1023 + 0.2, 0, 1), (math.clamp(v1024 * 0.65, 0, 1)));
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1025 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1026 = general:WaitForChild("eviltemplate"):Clone();
                v1026.Size = v1025;
                v1026.weld.Part1 = v1026;
                v1026.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1026, v1025, 4.5);
                v1026.Parent = u25;
            end;
        elseif p26 == "Tormented" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                local v1027, _, _ = Color3.fromRGB(88, 20, 20):ToHSV();

                if descendant:IsA("BasePart") then
                    local _, v1028, v1029 = descendant.Color:ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromHSV(math.clamp(v1027, 0, 1), math.clamp(v1028 + 0.2, 0, 1), (math.clamp(v1029 * 0.65, 0, 1)));
                        descendant.Material = Enum.Material.Sandstone;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1030 = Size + Vector3.new(Size.X * 1.1, Size.Y * 1.1, Size.Z * 1.1);
                local v1031 = general:WaitForChild("tormentedtemplate"):Clone();
                v1031.Size = v1030;
                v1031.weld.Part1 = v1031;
                v1031.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1031, v1030, 8.5);
                v1031.Parent = u25;
            end;
        elseif p26 == "Nullified" then
            local v1032 = {
                Color3.fromRGB(0, 0, 0),
                Color3.fromRGB(255, 0, 0),
                Color3.fromRGB(0, 255, 0),
                Color3.fromRGB(0, 0, 255)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                local v1033 = v1032[math.random(1, #v1032)];

                if descendant:IsA("BasePart") and descendant.Name ~= "Eyes" then
                    descendant.Color = v1033;
                    descendant.Material = Enum.Material.Neon;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1034 = Size + Vector3.new(Size.X * 1.1, Size.Y * 1.1, Size.Z * 1.1);
                local v1035 = general:WaitForChild("nullifiedtemplate"):Clone();
                v1035.Size = v1034;
                v1035.weld.Part1 = v1035;
                v1035.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1035, v1034, 8.5);
                v1035.Parent = u25;
            end;
        elseif p26 == "Galactic" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                local v1036, _, _ = Color3.fromRGB(255, 251, 140):ToHSV();

                if descendant:IsA("BasePart") then
                    local _, v1037, v1038 = descendant.Color:ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromHSV(math.clamp(v1036, 0, 1), math.clamp(v1037 + 0.2, 0, 1), (math.clamp(v1038 * 0.65, 0, 1)));
                        descendant.Material = Enum.Material.Sandstone;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v1039 = u25:GetBoundingBox();
                local v1040 = general:WaitForChild("galactictemplate"):Clone();
                v1040.Size = v1039 * 0.75;
                v1040.weld.Part1 = v1040;
                v1040.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1040, v1039, 4.5);
                v1040.Parent = u25;
            end;
        elseif p26 == "Peppermint" then
            local v1041 = {
                Color3.fromRGB(255, 79, 79),
                Color3.fromRGB(255, 112, 112),
                Color3.fromRGB(255, 255, 255),
                Color3.fromRGB(255, 222, 222)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                local v1042 = v1041[math.random(1, #v1041)];

                if descendant:IsA("BasePart") and descendant.Name ~= "Eyes" then
                    descendant.Color = v1042;
                    descendant.Material = Enum.Material.Glass;
                end;
            end;
        elseif p26 == "Gingerbread" then
            local v1043 = { Color3.fromRGB(167, 109, 82), Color3.fromRGB(157, 102, 77), Color3.fromRGB(255, 255, 255) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Name ~= "Eyes" then
                    local v1044 = v1043[math.random(1, #v1043)];
                    descendant.Color = v1044;

                    if v1044 == Color3.fromRGB(255, 255, 255) or v1044 == Color3.fromRGB(255, 112, 112) then
                        descendant.Material = Enum.Material.SmoothPlastic;
                        descendant.Reflectance = -0.2;
                    else
                        descendant.Material = Enum.Material.Snow;
                    end;
                end;
            end;
        elseif p26 == "Santa" then
            local v1045 = { Color3.fromRGB(167, 22, 22), Color3.fromRGB(235, 235, 235), Color3.fromRGB(255, 73, 73) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Name ~= "Eyes" then
                    descendant.Color = v1045[math.random(1, #v1045)];
                    descendant.Material = Enum.Material.SmoothPlastic;
                end;
            end;

            local v1046 = nil;

            for _, descendant in u25:GetDescendants() do
                if descendant:IsA("BasePart") and descendant.Name == "Eyes" then
                    v1046 = descendant;
                    break;
                end;
            end;

            local v1047 = v1046 or (u25:FindFirstChild("Center") or u25.PrimaryPart);
            local ExtentsSize = u25:GetExtentsSize();

            if not v1047 then
                return;
            end;

            local v1048 = script.Santa:Clone();
            local Mesh = v1048.Mesh;
            Mesh.Scale = Mesh.Scale * (ExtentsSize.Magnitude / 6);
            local Weld = Instance.new("Weld");
            Weld.Name = "CrownWeld";
            Weld.Part0 = v1047;
            Weld.Part1 = v1048;
            Weld.C1 = CFrame.new((Vector3.new(0, -(ExtentsSize.Y / 2 - v1048.Mesh.Scale.Y), 0))) * (v1047.CFrame - v1047.CFrame.Position) * CFrame.Angles(0, 4.71238898038469, 0);
            Weld.Parent = v1047;
            v1048.Parent = u25:FindFirstChild("Fish") or u25;
        elseif p26 == "Hexed" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local v1049, _, _ = Color3.fromRGB(127, 0, 0):ToHSV();
                    local _, v1050, v1051 = descendant.Color:ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromHSV(math.clamp(v1049, 0, 1), math.clamp(v1050 + 0.5, 0, 1), (math.clamp((v1051 + 0.05) * 0.75, 0, 1)));
                        descendant.Material = Enum.Material.Metal;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1052 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1053 = general:WaitForChild("hexedtemplate"):Clone();
                v1053.Size = v1052;
                v1053.weld.Part1 = v1053;
                v1053.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1053, v1052, 4.5);
                v1053.Parent = u25;
            end;
        elseif p26 == "Purified" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local v1054, v1055, v1056 = descendant.Color:ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromHSV(v1054, v1055, (math.clamp(v1056 + 0.1, 0, 1)));
                    end;
                end;
            end;
        elseif p26 == "Revitalized" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local v1057, v1058, v1059 = descendant.Color:ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromHSV(v1057, v1058, (math.clamp(v1059 + 0.2, 0, 1)));
                    end;
                end;
            end;
        elseif p26 == "Studded" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    descendant.Material = Enum.Material.Glacier;
                    descendant.MaterialVariant = "2022 Stud";
                end;
            end;
        elseif p26 == "Seasonal" then
            local v1060 = ({
                Spring = {
                    Material = Enum.Material.Sand,
                    Color = Color3.fromRGB(252, 166, 255)
                },
                Summer = {
                    Material = Enum.Material.Glass,
                    Color = Color3.fromRGB(255, 217, 129)
                },
                Autumn = {
                    Material = Enum.Material.Grass,
                    Color = Color3.fromRGB(207, 77, 34)
                },
                Winter = {
                    Material = Enum.Material.Ice,
                    Color = Color3.fromRGB(189, 252, 255)
                }
            })[u25:GetAttribute("Season") or (u25.Parent and u25.Parent:GetAttribute("Season") or p27.Season or (p27.SubValues and p27.SubValues.Season or ReplicatedStorage.world.season.Value))];

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    if descendant.Material ~= Enum.Material.Neon then
                        descendant.Material = v1060.Material;
                    end;

                    local v1061, v1062, v1063 = v1060.Color:ToHSV();
                    local v1064 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local v1065 = v1061 * Random.new(v1064):NextNumber(0.95, 1.05);
                    local math_clamp_ret = math.clamp(v1065, 0, 1);
                    local v1066 = v1062 * Random.new(v1064):NextNumber(0.9, 1.1);
                    local math_clamp_ret2 = math.clamp(v1066, 0, 1);
                    local v1067 = v1063 * Random.new(v1064):NextNumber(0.925, 1.075);
                    local math_clamp_ret3 = math.clamp(v1067, 0, 1);
                    descendant.Color = Color3.fromHSV(math_clamp_ret, math_clamp_ret2, math_clamp_ret3);
                end;
            end;
        elseif p26 == "Forest Spirit" then
            local v1068 = {
                Spring = {
                    BaseMaterial = Enum.Material.Wood,
                    BaseColor = Color3.fromRGB(101, 74, 54),
                    TintColor = Color3.fromRGB(161, 255, 161),
                    EyeColor = Color3.fromRGB(255, 182, 228)
                },
                Summer = {
                    BaseMaterial = Enum.Material.Wood,
                    BaseColor = Color3.fromRGB(90, 67, 49),
                    TintColor = Color3.fromRGB(173, 211, 102),
                    EyeColor = Color3.fromRGB(241, 255, 147)
                },
                Autumn = {
                    BaseMaterial = Enum.Material.WoodPlanks,
                    BaseColor = Color3.fromRGB(115, 75, 43),
                    TintColor = Color3.fromRGB(215, 111, 54),
                    EyeColor = Color3.fromRGB(255, 189, 96)
                },
                Winter = {
                    BaseMaterial = Enum.Material.Slate,
                    BaseColor = Color3.fromRGB(94, 108, 116),
                    TintColor = Color3.fromRGB(191, 243, 234),
                    EyeColor = Color3.fromRGB(224, 255, 255)
                }
            };
            local v1069 = u25:GetAttribute("Season") or (u25.Parent and u25.Parent:GetAttribute("Season") or p27.Season or (p27.SubValues and p27.SubValues.Season or ReplicatedStorage.world.season.Value));
            local v1070 = v1068[v1069] or v1068.Spring;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = v1070.EyeColor;
                        descendant.Transparency = 0.05;
                    else
                        if descendant.Material ~= Enum.Material.Neon then
                            descendant.Material = v1070.BaseMaterial;
                        end;

                        local v1071 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v1072 = Random.new(v1071 * 1000):NextNumber(0.15, 0.35);
                        local v1073, v1074, v1075 = v1070.BaseColor:Lerp(v1070.TintColor, v1072):ToHSV();
                        local v1076 = v1073 + Random.new(v1071 * 2000):NextNumber(-0.01, 0.01);
                        local math_clamp_ret = math.clamp(v1076, 0, 1);
                        local v1077 = v1074 * Random.new(v1071 * 3000):NextNumber(0.95, 1.05);
                        local math_clamp_ret2 = math.clamp(v1077, 0, 1);
                        local v1078 = v1075 * Random.new(v1071 * 4000):NextNumber(0.92, 1.08);
                        local math_clamp_ret3 = math.clamp(v1078, 0, 1);
                        descendant.Color = Color3.fromHSV(math_clamp_ret, math_clamp_ret2, math_clamp_ret3);
                    end;
                end;
            end;

            local ForestSpiritEffects = u25:FindFirstChild("ForestSpiritEffects");

            if ForestSpiritEffects then
                ForestSpiritEffects:Destroy();
            end;

            if u25:FindFirstChild("handle") then
                local _, v1079 = u25:GetBoundingBox();
                local v1080 = general:WaitForChild("forestspirittemplate"):Clone();
                v1080.Name = "ForestSpiritEffects";
                v1080.Size = v1079;
                v1080.weld.Part1 = v1080;
                v1080.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");

                for _, descendant in ipairs(v1080:GetDescendants()) do
                    if descendant:IsA("ParticleEmitter") then
                        if v1068[descendant.Name] ~= nil then
                            descendant.Enabled = descendant.Name == v1069;
                        end;

                        local v1081 = math.max(v1079.X, v1079.Y, v1079.Z) / 4.5;
                        local v1082 = {};

                        for _, v in ipairs(descendant.Size.Keypoints) do
                            table.insert(v1082, NumberSequenceKeypoint.new(v.Time, v.Value * v1081, v.Envelope * v1081));
                        end;

                        descendant.Size = NumberSequence.new(v1082);
                    end;
                end;

                v1080.Parent = u25;
            end;
        elseif p26 == "Sunken" then
            local v1083, _, _ = Color3.fromRGB(34, 53, 66):ToHSV();

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Transparency == 1 or descendant.Name == "Eyes" then
                        if descendant.Name == "Eyes" then
                            descendant.Color = Color3.fromRGB(134, 195, 141);
                            descendant.Material = Enum.Material.Neon;
                        end;
                    elseif descendant.Material == Enum.Material.Neon then
                        descendant.Color = Color3.fromRGB(134, 195, 141);
                    else
                        local v1084 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local _, _, v1085 = descendant.Color:ToHSV();
                        local v1086 = Random.new(v1084):NextNumber(0.1, 0.5) * math.clamp(v1085 + 0.5, 0, 1);
                        descendant.Color = Color3.fromHSV(v1083, 0, v1086);
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v1087 = u25:GetBoundingBox();
                local v1088 = general:WaitForChild("sunkentemplate"):Clone();
                v1088.Size = v1087;
                v1088.weld.Part1 = v1088;
                v1088.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1088, v1087, 4.5);
                v1088.Parent = u25;
            end;
        elseif p26 == "Amped" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Transparency ~= 1 then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(255, 255, 255);
                        descendant.Material = Enum.Material.Neon;
                    else
                        local v1089, _, v1090 = descendant.Color:ToHSV();
                        descendant.Color = Color3.fromHSV(v1089, 0, v1090);
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v1091 = u25:GetBoundingBox();
                local v1092 = general:WaitForChild("ampedtemplate"):Clone();
                v1092.Size = v1091;
                v1092.weld.Part1 = v1092;
                v1092.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1092, v1091, 4.5);
                v1092.Parent = u25;
            end;
        elseif p26 == "Mythical" then
            local rainbowPulse = u25:FindFirstChild("rainbowPulse", true);

            if rainbowPulse then
                rainbowPulse:Destroy();
            end;

            if u25.Name == "Fish" then
                u25:AddTag("MythicalMutationEffect");
            elseif u25:FindFirstChild("Center") and u25:FindFirstChild("Fish") then
                u25.Fish:AddTag("MythicalMutationEffect");
            end;
        elseif p26 == "Nuclear" then
            if not u25:IsA("Model") then
                return;
            end;

            local ExtentsSize = u25:GetExtentsSize();
            local v1093 = ExtentsSize.X + ExtentsSize.Y + ExtentsSize.Z;
            local v1094 = 0;

            for _, descendant in u25:GetDescendants() do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    v1094 = v1094 + (descendant.Size.X + descendant.Size.Y + descendant.Size.Z);
                end;
            end;

            local math_min_ret = math.min(v1093 / v1094, 1);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    descendant.Material = Enum.Material.Neon;
                    local v1095 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, v1096 = descendant.Color:ToHSV();
                    local v1097 = Random.new(v1095):NextNumber(0.5, 1) * math.clamp(v1096 + 0.5, 0, 1);
                    descendant.Color = Color3.fromHSV(0.333333, 1, v1097);
                    descendant:SetAttribute("NuclearHue", 0.333333);
                    descendant:SetAttribute("NuclearSaturation", 1);
                    descendant:SetAttribute("NuclearValue", v1097);
                    local v1098 = (descendant.Size.X + descendant.Size.Y + descendant.Size.Z) / 3 * 2;
                    local v1099 = script:WaitForChild("NuclearVFX"):Clone();
                    v1099.Rate = v1098 * math_min_ret;
                    v1099.Size = NumberSequence.new(math.clamp(v1098, 0, 25) / 2);
                    v1099.Parent = descendant;
                end;
            end;

            if game:GetService("RunService"):IsServer() and (u25 and u25:IsDescendantOf(workspace)) then
                ReplicatedStorage.events.fishMutation:FireAllClients(u25, p26);
            end;
        elseif p26 == "Heartburst" then
            if not u25:IsA("Model") then
                return;
            end;

            local ExtentsSize = u25:GetExtentsSize();
            local v1100 = ExtentsSize.X + ExtentsSize.Y + ExtentsSize.Z;
            local v1101 = 0;

            for _, descendant in u25:GetDescendants() do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    v1101 = v1101 + (descendant.Size.X + descendant.Size.Y + descendant.Size.Z);
                end;
            end;

            local math_min_ret = math.min(v1100 / v1101, 1);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    descendant.Material = Enum.Material.Neon;
                    local v1102 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, v1103 = descendant.Color:ToHSV();
                    local v1104 = Random.new(v1102):NextNumber(0.5, 1) * math.clamp(v1103 + 0.5, 0, 1);
                    descendant.Color = Color3.fromHSV(0.833333, 1, v1104);
                    descendant:SetAttribute("NuclearHue", 0.833333);
                    descendant:SetAttribute("NuclearSaturation", 1);
                    descendant:SetAttribute("NuclearValue", v1104);
                    local v1105 = (descendant.Size.X + descendant.Size.Y + descendant.Size.Z) / 3 * 2;
                    local v1106 = script:WaitForChild("NuclearVFX"):Clone();
                    v1106.Rate = v1105 * math_min_ret;
                    v1106.Size = NumberSequence.new(math.clamp(v1105, 0, 25) / 2);
                    v1106.Parent = descendant;
                    v1106.Color = ColorSequence.new(Color3.fromRGB(238, 0, 255));
                end;
            end;

            if game:GetService("RunService"):IsServer() and (u25 and u25:IsDescendantOf(workspace)) then
                ReplicatedStorage.events.fishMutation:FireAllClients(u25, p26);
            end;

            if u25:FindFirstChild("handle") then
                local _, v1107 = u25:GetBoundingBox();
                local v1108 = general:WaitForChild("heartbursttemplate"):Clone();
                v1108.Size = v1107;
                v1108.weld.Part1 = v1108;
                v1108.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1108, v1107, 4.5);
                v1108.Parent = u25;
            end;
        elseif p26 == "Mosaic" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local v1109 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local v1110, _, v1111 = descendant.Color:ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromHSV((v1110 + math.noise(v1109 * 414)) % 1, 0.35, (math.clamp(v1111 + 0.5, 0, 1)));
                        descendant.Material = Enum.Material.Glass;
                    end;
                end;
            end;
        elseif p26 == "Candy" then
            local v1112 = {
                Color3.fromRGB(255, 157, 159),
                Color3.fromRGB(254, 210, 255),
                Color3.fromRGB(191, 171, 255),
                Color3.fromRGB(255, 156, 196),
                Color3.fromRGB(180, 200, 255)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v1113 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local Random_new_ret = Random.new(v1113);
                    local v1114, v1115, v1116 = v1112[Random_new_ret:NextInteger(1, #v1112)]:ToHSV();
                    local Color3_fromHSV = Color3.fromHSV;
                    local v1117 = v1115 * Random_new_ret:NextNumber(0.9, 1.1);
                    local math_clamp_ret = math.clamp(v1117, 0, 1);
                    local v1118 = v1116 * Random_new_ret:NextNumber(0.95, 1.05);
                    descendant.Color = Color3_fromHSV(v1114, math_clamp_ret, (math.clamp(v1118, 0, 1)));
                    descendant.Material = Enum.Material.SmoothPlastic;
                    descendant.Reflectance = 0.2;
                end;
            end;
        elseif p26 == "Obsidian" then
            local v1119 = { Color3.fromRGB(147, 87, 177), Color3.fromRGB(131, 85, 177) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v1120 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local Random_new_ret = Random.new(v1120);
                    local v1121, v1122, v1123 = v1119[Random_new_ret:NextInteger(1, #v1119)]:ToHSV();
                    local Color3_fromHSV = Color3.fromHSV;
                    local v1124 = v1122 * Random_new_ret:NextNumber(0.9, 1.1);
                    local math_clamp_ret = math.clamp(v1124, 0, 1);
                    local v1125 = v1123 * Random_new_ret:NextNumber(0.95, 1.05);
                    descendant.Color = Color3_fromHSV(v1121, math_clamp_ret, (math.clamp(v1125, 0, 1)));
                    descendant.Material = Enum.Material.Granite;
                end;
            end;
        elseif p26 == "Sweet" then
            local v1126 = { Color3.fromRGB(255, 92, 179), Color3.fromRGB(255, 130, 201) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v1127 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local Random_new_ret = Random.new(v1127);
                    local v1128, v1129, v1130 = v1126[Random_new_ret:NextInteger(1, #v1126)]:ToHSV();
                    local Color3_fromHSV = Color3.fromHSV;
                    local v1131 = v1129 * Random_new_ret:NextNumber(0.9, 1.1);
                    local math_clamp_ret = math.clamp(v1131, 0, 1);
                    local v1132 = v1130 * Random_new_ret:NextNumber(0.95, 1.05);
                    descendant.Color = Color3_fromHSV(v1128, math_clamp_ret, (math.clamp(v1132, 0, 1)));
                    descendant.Material = Enum.Material.SmoothPlastic;
                    descendant.Reflectance = 0.2;
                end;
            end;
        elseif p26 == "Coral" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local v1133 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local v1134, _, v1135 = descendant.Color:ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromHSV((v1134 + math.noise(v1133 * 414)) % 1, 0.35, (math.clamp(v1135 + 0.5, 0, 1)));
                        descendant.Material = Enum.Material.Pebble;
                    end;
                end;
            end;
        elseif p26 == "Firework" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local v1136 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local v1137 = v1136 * v1136;
                    local v1138, _, v1139 = descendant.Color:ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromHSV((v1138 + math.noise(v1137 * 414)) % 1, 0.5, (math.clamp((v1139 + 0.5) * 0.9, 0, 1)));
                        descendant.Material = Enum.Material.Neon;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v1140 = u25:GetBoundingBox();
                local v1141 = general:WaitForChild("fireworktemplate"):Clone();
                v1141.Size = v1140;
                v1141.weld.Part1 = v1141;
                v1141.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1141, v1140, 4.5);
                v1141.Parent = u25;
            end;
        elseif p26 == "Aurora" then
            local v1142 = { 0.979, 0.742, 0.819 };

            local function customClamp(p1143) -- Line: 14548
                if p1143 < 0 then
                    return p1143 + 1;
                end;

                if p1143 > 1 then
                    return p1143 - 1;
                end;

                return p1143;
            end;

            local v1144 = u25:GetScale() * u25:GetScale() + u25:GetBoundingBox().Position.Magnitude;
            local v1145 = Random.new(v1144):NextInteger(0, 1) == 1 and v1142 and v1142 or { 0.343, 0.355, 0.655 };

            local function nearest(p1146, p1147) -- Line: 14537
                local v1148 = nil;
                local v1149 = nil;

                for i, v in ipairs(p1146) do
                    if not v1148 or math.abs(p1147 - v) < v1148 then
                        v1148 = math.abs(p1147 - v);
                        v1149 = i;
                    end;
                end;

                return v1149, p1146[v1149];
            end;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    local v1150 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local v1151, _, v1152 = descendant.Color:ToHSV();
                    local _, v1153 = nearest(v1145, (v1151 + math.noise(v1150 * 414)) % 1);
                    local Color3_fromHSV = Color3.fromHSV;
                    local v1154 = v1153 + Random.new(v1150):NextNumber(-0.05, 0.05);

                    if v1154 < 0 then
                        v1154 = v1154 + 1;
                    elseif v1154 > 1 then
                        v1154 = v1154 - 1;
                    end;

                    local math_min_ret = math.min(v1152 + 0.25, 0.8);
                    local math_max_ret = math.max(math_min_ret, 0.75);
                    descendant.Color = Color3_fromHSV(v1154, 0.4, (math.clamp(math_max_ret, 0, 1)));
                    descendant.Material = Enum.Material.Neon;
                end;
            end;
        elseif p26 == "Greedy" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 196, 47);
            local Color3_fromRGB_ret2 = Color3.fromRGB(255, 163, 83);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v1155 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, v1156 = descendant.Color:ToHSV();
                    local v1157, v1158, v1159 = Color3_fromRGB_ret:ToHSV();
                    local v1160, v1161, v1162 = Color3_fromRGB_ret2:ToHSV();
                    local v1163 = Random.new(v1155):NextInteger(0, 1);
                    descendant.Material = v1163 == 1 and Enum.Material.Metal or Enum.Material.Neon;
                    local v1164 = (v1163 == 1 and v1159 and v1159 or v1162) * Random.new(v1155):NextNumber(0.9, 1.1) * math.clamp(v1156, 0.9, 1);
                    local math_clamp_ret = math.clamp(v1164, 0, 1);
                    descendant.Color = Color3.fromHSV(v1163 == 1 and v1157 and v1157 or v1160, v1163 == 1 and v1158 and v1158 or v1161, math_clamp_ret);
                end;
            end;

            if u25:FindFirstChild("Center") then
                local v1165 = general:WaitForChild("greedytemplate"):WaitForChild("GreedyAttachment"):Clone();
                v1165.Parent = u25:FindFirstChild("Center");

                for _, descendant in ipairs(v1165:GetDescendants()) do
                    if descendant:IsA("ParticleEmitter") then
                        local Hitbox = u25:FindFirstChild("Hitbox");

                        if Hitbox then
                            local Size = Hitbox.Size;
                            local v1166 = math.max(Size.X, Size.Y, Size.Z) / 4.5;
                            local v1167 = {};

                            for _, v in ipairs(descendant.Size.Keypoints) do
                                table.insert(v1167, NumberSequenceKeypoint.new(v.Time, v.Value * v1166, v.Envelope * v1166));
                            end;

                            descendant.Size = NumberSequence.new(v1167);
                        end;
                    end;
                end;
            end;
        elseif p26 == "Tidal" then
            local Color3_fromRGB_ret = Color3.fromRGB(56, 175, 255);
            local Color3_fromRGB_ret2 = Color3.fromRGB(84, 224, 255);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v1168 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, v1169 = descendant.Color:ToHSV();
                    local v1170, v1171, v1172 = Color3_fromRGB_ret:ToHSV();
                    local v1173, v1174, v1175 = Color3_fromRGB_ret2:ToHSV();
                    local v1176 = Random.new(v1168):NextInteger(0, 1);
                    descendant.Material = v1176 == 1 and Enum.Material.Metal or Enum.Material.Neon;
                    local v1177 = (v1176 == 1 and v1172 and v1172 or v1175) * Random.new(v1168):NextNumber(0.9, 1.1) * math.clamp(v1169, 0.9, 1);
                    local math_clamp_ret = math.clamp(v1177, 0, 1);
                    descendant.Color = Color3.fromHSV(v1176 == 1 and v1170 and v1170 or v1173, v1176 == 1 and v1171 and v1171 or v1174, math_clamp_ret);
                end;
            end;

            if u25:FindFirstChild("Center") then
                local v1178 = general:WaitForChild("tidaltemplate"):Clone();

                for _, descendant in ipairs(v1178:GetDescendants()) do
                    if descendant:IsA("ParticleEmitter") then
                        local Hitbox = u25:FindFirstChild("Hitbox");

                        if Hitbox then
                            local Size = Hitbox.Size;
                            local v1179 = math.max(Size.X, Size.Y, Size.Z) / 4.5;
                            local v1180 = {};

                            for _, v in ipairs(descendant.Size.Keypoints) do
                                table.insert(v1180, NumberSequenceKeypoint.new(v.Time, v.Value * v1179, v.Envelope * v1179));
                            end;

                            descendant.Size = NumberSequence.new(v1180);
                        end;
                    end;
                end;
            end;
        elseif p26 == "Mourned" then
            local Color3_fromRGB_ret = Color3.fromRGB(34, 56, 93);
            local Color3_fromRGB_ret2 = Color3.fromRGB(4, 26, 40);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v1181 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, v1182 = descendant.Color:ToHSV();
                    local v1183, v1184, v1185 = Color3_fromRGB_ret:ToHSV();
                    local v1186, v1187, v1188 = Color3_fromRGB_ret2:ToHSV();
                    local v1189 = Random.new(v1181):NextInteger(0, 1);
                    descendant.Material = v1189 == 1 and Enum.Material.Metal or Enum.Material.Neon;
                    local v1190 = (v1189 == 1 and v1185 and v1185 or v1188) * Random.new(v1181):NextNumber(0.9, 1.1) * math.clamp(v1182, 0.9, 1);
                    local math_clamp_ret = math.clamp(v1190, 0, 1);
                    descendant.Color = Color3.fromHSV(v1189 == 1 and v1183 and v1183 or v1186, v1189 == 1 and v1184 and v1184 or v1187, math_clamp_ret);
                end;
            end;

            if u25:FindFirstChild("Center") then
                local v1191 = general:WaitForChild("mournedtemplate"):Clone();

                for _, descendant in ipairs(v1191:GetDescendants()) do
                    if descendant:IsA("ParticleEmitter") then
                        local Hitbox = u25:FindFirstChild("Hitbox");

                        if Hitbox then
                            local Size = Hitbox.Size;
                            local v1192 = math.max(Size.X, Size.Y, Size.Z) / 4.5;
                            local v1193 = {};

                            for _, v in ipairs(descendant.Size.Keypoints) do
                                table.insert(v1193, NumberSequenceKeypoint.new(v.Time, v.Value * v1192, v.Envelope * v1192));
                            end;

                            descendant.Size = NumberSequence.new(v1193);
                        end;
                    end;
                end;
            end;
        elseif p26 == "Fallen" then
            local Color3_fromRGB_ret = Color3.fromRGB(93, 93, 93);
            local Color3_fromRGB_ret2 = Color3.fromRGB(21, 21, 21);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v1194 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, v1195 = descendant.Color:ToHSV();
                    local v1196, v1197, v1198 = Color3_fromRGB_ret:ToHSV();
                    local v1199, v1200, v1201 = Color3_fromRGB_ret2:ToHSV();
                    local v1202 = Random.new(v1194):NextInteger(0, 1);
                    descendant.Material = v1202 == 1 and Enum.Material.Metal or Enum.Material.Neon;
                    local v1203 = (v1202 == 1 and v1198 and v1198 or v1201) * Random.new(v1194):NextNumber(0.9, 1.1) * math.clamp(v1195, 0.9, 1);
                    local math_clamp_ret = math.clamp(v1203, 0, 1);
                    descendant.Color = Color3.fromHSV(v1202 == 1 and v1196 and v1196 or v1199, v1202 == 1 and v1197 and v1197 or v1200, math_clamp_ret);
                end;
            end;

            if u25:FindFirstChild("Center") then
                local v1204 = general:WaitForChild("fallentemplate"):Clone();

                for _, descendant in ipairs(v1204:GetDescendants()) do
                    if descendant:IsA("ParticleEmitter") then
                        local Hitbox = u25:FindFirstChild("Hitbox");

                        if Hitbox then
                            local Size = Hitbox.Size;
                            local v1205 = math.max(Size.X, Size.Y, Size.Z) / 4.5;
                            local v1206 = {};

                            for _, v in ipairs(descendant.Size.Keypoints) do
                                table.insert(v1206, NumberSequenceKeypoint.new(v.Time, v.Value * v1205, v.Envelope * v1205));
                            end;

                            descendant.Size = NumberSequence.new(v1206);
                        end;
                    end;
                end;
            end;
        elseif p26 == "Withered" then
            local Color3_fromRGB_ret = Color3.fromRGB(67, 54, 49);
            local Color3_fromRGB_ret2 = Color3.fromRGB(35, 24, 24);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v1207 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, v1208 = descendant.Color:ToHSV();
                    local v1209, v1210, v1211 = Color3_fromRGB_ret:ToHSV();
                    local v1212, v1213, v1214 = Color3_fromRGB_ret2:ToHSV();
                    local v1215 = Random.new(v1207):NextInteger(0, 1);
                    descendant.Material = v1215 == 1 and Enum.Material.Metal or Enum.Material.Neon;
                    local v1216 = (v1215 == 1 and v1211 and v1211 or v1214) * Random.new(v1207):NextNumber(0.9, 1.1) * math.clamp(v1208, 0.9, 1);
                    local math_clamp_ret = math.clamp(v1216, 0, 1);
                    descendant.Color = Color3.fromHSV(v1215 == 1 and v1209 and v1209 or v1212, v1215 == 1 and v1210 and v1210 or v1213, math_clamp_ret);
                end;
            end;

            if u25:FindFirstChild("Center") then
                local v1217 = general:WaitForChild("witheredtemplate"):Clone();

                for _, descendant in ipairs(v1217:GetDescendants()) do
                    if descendant:IsA("ParticleEmitter") then
                        local Hitbox = u25:FindFirstChild("Hitbox");

                        if Hitbox then
                            local Size = Hitbox.Size;
                            local v1218 = math.max(Size.X, Size.Y, Size.Z) / 4.5;
                            local v1219 = {};

                            for _, v in ipairs(descendant.Size.Keypoints) do
                                table.insert(v1219, NumberSequenceKeypoint.new(v.Time, v.Value * v1218, v.Envelope * v1218));
                            end;

                            descendant.Size = NumberSequence.new(v1219);
                        end;
                    end;
                end;
            end;
        elseif p26 == "Astral" then
            local Color3_fromRGB_ret = Color3.fromRGB(108, 34, 255);
            local v1220 = { Enum.Material.Neon, Enum.Material.ForceField };
            local v1221 = 1;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and not table_freeze_ret[descendant.Name] then
                    descendant.Color = Color3_fromRGB_ret;

                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Material = v1220[v1221];
                        v1221 = v1221 % #v1220 + 1;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1222 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1223 = general:WaitForChild("astraltemplate"):Clone();
                v1223.Size = v1222 * 0.75;
                v1223.weld.Part1 = v1223;
                v1223.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1223, v1222, 12);
                v1223.Parent = u25;
            end;
        elseif p26 == "Stardust" then
            local Color3_fromRGB_ret = Color3.fromRGB(51, 24, 255);
            local v1224 = { Enum.Material.Neon, Enum.Material.ForceField };
            local v1225 = 1;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and not table_freeze_ret[descendant.Name] then
                    descendant.Color = Color3_fromRGB_ret;

                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Material = v1224[v1225];
                        v1225 = v1225 % #v1224 + 1;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1226 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1227 = general:WaitForChild("stardusttemplate"):Clone();
                v1227.Size = v1226 * 0.75;
                v1227.weld.Part1 = v1227;
                v1227.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1227, v1226, 12);
                v1227.Parent = u25;
            end;
        elseif p26 == "Solarblaze" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Transparency == 1 or descendant.Name == "Eyes" then
                        if descendant.Name == "Eyes" then
                            descendant.Material = Enum.Material.Neon;
                            descendant.Color = Color3.fromRGB(255, 136, 0);
                        end;
                    else
                        descendant.Material = Enum.Material.Neon;
                        local v1228 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local _, _, v1229 = descendant.Color:ToHSV();
                        local v1230 = 0.0666667 * Random.new(v1228):NextNumber(0.8, 1.2);
                        local math_clamp_ret = math.clamp(v1230, 0, 1);
                        local v1231 = Random.new(v1228):NextNumber(0, 1) * math.clamp(v1229 * 1.5, 0, 1);
                        descendant.Color = Color3.fromHSV(math_clamp_ret, 0.9, v1231);
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1232 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1233 = general:WaitForChild("solarblazetemplate"):Clone();
                v1233.Size = v1232 * 0.75;
                v1233.weld.Part1 = v1233;
                v1233.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1233, v1232, 12);
                v1233.Parent = u25;
            end;
        elseif p26 == "Umbra" then
            local Color3_fromRGB_ret = Color3.fromRGB(22, 13, 1);
            local Color3_fromRGB_ret2 = Color3.fromRGB(171, 125, 0);
            local Color3_fromRGB_ret3 = Color3.fromRGB(72, 86, 171);
            local v1234 = { Color3_fromRGB_ret, Color3_fromRGB_ret2, Color3_fromRGB_ret3 };
            local v1235 = 1;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and not table_freeze_ret[descendant.Name] then
                    if descendant.Name == "Eyes" then
                        local v1236;

                        if math.random() < 0.5 then
                            v1236 = Color3_fromRGB_ret2 or Color3_fromRGB_ret3;
                        else
                            v1236 = Color3_fromRGB_ret3;
                        end;

                        descendant.Color = v1236;
                        descendant.Material = Enum.Material.Neon;
                    else
                        local v1237 = v1234[v1235];
                        descendant.Color = v1237;
                        descendant.Material = v1237 == Color3_fromRGB_ret and Enum.Material.SmoothPlastic or Enum.Material.Neon;
                        v1235 = v1235 % #v1234 + 1;
                    end;
                end;
            end;

            local Center = u25:FindFirstChild("Center");

            if not Center then
                return;
            end;

            local success, result = pcall(function() -- Line: 15042
                -- upvalues: general (copy)
                return general:WaitForChild("umbratemplate"):WaitForChild("Attachment"):Clone();
            end);

            if not (success and result) then
                return;
            end;

            result.Parent = Center;

            if not result:IsA("Attachment") then
                return;
            end;

            result.CFrame = CFrame.new(Vector3.new(0, 0, 0));

            for _, descendant in ipairs(result:GetDescendants()) do
                if descendant:IsA("ParticleEmitter") then
                    local Hitbox = u25:FindFirstChild("Hitbox");

                    if Hitbox then
                        local Size = Hitbox.Size;
                        local v1238 = math.max(Size.X, Size.Y, Size.Z) / 1.5;
                        local v1239 = descendant;
                        local v1240 = {};

                        for _, v in ipairs(descendant.Size.Keypoints) do
                            table.insert(v1240, NumberSequenceKeypoint.new(v.Time, v.Value * v1238, v.Envelope * v1238));
                        end;

                        v1239.Size = NumberSequence.new(v1240);
                        v1239.Enabled = true;
                    end;
                end;
            end;
        elseif p26 == "Celestial" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                local v1241 = { 0.13 };

                local function v1246(p1242, p1243) -- Line: 15093
                    local v1244 = nil;
                    local v1245 = nil;

                    for i, v in ipairs(p1242) do
                        if not v1244 or math.abs(p1243 - v) < v1244 then
                            v1244 = math.abs(p1243 - v);
                            v1245 = i;
                        end;
                    end;

                    return v1245, p1242[v1245];
                end;

                local function _(p1247) -- Line: 15104
                    if p1247 < 0 then
                        return p1247 + 1;
                    end;

                    if p1247 > 1 then
                        return p1247 - 1;
                    end;

                    return p1247;
                end;

                local _ = u25:GetScale() * u25:GetScale() + u25:GetBoundingBox().Position.Magnitude;

                if descendant:IsA("BasePart") then
                    local v1248 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local v1249, _, v1250 = descendant.Color:ToHSV();

                    if descendant.Name ~= "Eyes" then
                        local _, v1251 = v1246(v1241, (v1249 + math.noise(v1248 * 414)) % 1);
                        local Color3_fromHSV = Color3.fromHSV;
                        local v1252 = v1251 + Random.new(v1248):NextNumber(-0.015, 0.015);

                        if v1252 < 0 then
                            v1252 = v1252 + 1;
                        elseif v1252 > 1 then
                            v1252 = v1252 - 1;
                        end;

                        descendant.Color = Color3_fromHSV(v1252, 0.35, (math.clamp(v1250 + 0.5, 0, 0.75)));
                        descendant.Material = Enum.Material.Glass;
                        descendant.Reflectance = -5;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1253 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1254 = general:WaitForChild("celestialtemplate"):Clone();
                v1254.Size = v1253 * 0.85;
                v1254.weld.Part1 = v1254;
                v1254.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1254.Parent = u25;
            end;
        elseif p26 == "Fossilized" then
            local Color3_fromRGB_ret = Color3.fromRGB(233, 211, 238);
            local Color3_fromRGB_ret2 = Color3.fromRGB(135, 122, 218);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v1255 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, v1256 = descendant.Color:ToHSV();
                    local v1257, v1258, v1259 = Color3_fromRGB_ret:ToHSV();
                    local v1260, v1261, v1262 = Color3_fromRGB_ret2:ToHSV();
                    local v1263 = Random.new(v1255):NextInteger(0, 1);
                    descendant.Material = v1263 == 1 and Enum.Material.Sand or Enum.Material.Neon;
                    local v1264 = (v1263 == 1 and v1259 and v1259 or v1262) * Random.new(v1255):NextNumber(0.9, 1.1) * math.clamp(v1256, 0.9, 1);
                    local math_clamp_ret = math.clamp(v1264, 0, 1);
                    descendant.Color = Color3.fromHSV(v1263 == 1 and v1257 and v1257 or v1260, v1263 == 1 and v1258 and v1258 or v1261, math_clamp_ret);
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1265 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1266 = general:WaitForChild("fossilizedtemplate"):Clone();
                v1266.Size = v1265 * 0.85;
                v1266.weld.Part1 = v1266;
                v1266.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1266, v1265, 4.5);
                v1266.Parent = u25;
            end;
        elseif p26 == "Amber" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local _ = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, v1267, v1268 = descendant.Color:ToHSV();
                    descendant.Color = Color3.fromHSV(0.0377778, v1267, v1268);
                end;
            end;

            if u25:FindFirstChild("Center") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1269 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1270 = general:WaitForChild("ambertemplate"):Clone();
                v1270.Size = v1269 * 1.2;
                v1270:PivotTo(u25:FindFirstChild("Center"):GetPivot());
                v1270.weld.Part1 = v1270;
                v1270.weld.Part0 = u25:FindFirstChild("Center");
                v1270.Anchored = false;
                v1270.CanCollide = false;
                v1270.CanTouch = false;
                v1270.Massless = true;
                v1270.Parent = u25;
            end;
        elseif p26 == "Wrath" then
            if u25:FindFirstChild("Center") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1271 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1272 = general:WaitForChild("wrathtemplate"):Clone();
                v1272.Size = v1271 * 1.2;
                v1272:PivotTo(u25:FindFirstChild("Center"):GetPivot());
                v1272.weld.Part1 = v1272;
                v1272.weld.Part0 = u25:FindFirstChild("Center");
                v1272.Anchored = false;
                v1272.CanCollide = false;
                v1272.CanTouch = false;
                v1272.Massless = true;
                v1272.Parent = u25;
            end;
        elseif p26 == "Lightning" then
            if u25:FindFirstChild("Center") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1273 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1274 = general:WaitForChild("lightningtemplate"):Clone();
                v1274.Size = v1273 * 1.2;
                v1274:PivotTo(u25:FindFirstChild("Center"):GetPivot());
                v1274.weld.Part1 = v1274;
                v1274.weld.Part0 = u25:FindFirstChild("Center");
                v1274.Anchored = false;
                v1274.CanCollide = false;
                v1274.CanTouch = false;
                v1274.Massless = true;
                v1274.Parent = u25;
            end;
        elseif p26 == "Electric Shock" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    descendant.Color = Color3.fromRGB(0, 0, 0);
                end;
            end;

            if u25:FindFirstChild("Center") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1275 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1276 = general:WaitForChild("eletricshock"):Clone();
                v1276.Size = v1275 * 1.2;
                v1276:PivotTo(u25:FindFirstChild("Center"):GetPivot());
                v1276.weld.Part1 = v1276;
                v1276.weld.Part0 = u25:FindFirstChild("Center");
                v1276.Anchored = false;
                v1276.CanCollide = false;
                v1276.CanTouch = false;
                v1276.Massless = true;
                v1276.Parent = u25;
            end;
        elseif p26 == "Crystalized" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 115, 0);
            local Color3_fromRGB_ret2 = Color3.fromRGB(255, 51, 0);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v1277 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, v1278 = descendant.Color:ToHSV();
                    local v1279, v1280, v1281 = Color3_fromRGB_ret:ToHSV();
                    local v1282, v1283, v1284 = Color3_fromRGB_ret2:ToHSV();
                    local v1285 = Random.new(v1277):NextInteger(0, 1);
                    descendant.Material = v1285 == 1 and Enum.Material.Glass or Enum.Material.Neon;
                    local v1286 = (v1285 == 1 and v1281 and v1281 or v1284) * Random.new(v1277):NextNumber(0.9, 1.1) * math.clamp(v1278, 0.9, 1);
                    local math_clamp_ret = math.clamp(v1286, 0, 1);
                    descendant.Color = Color3.fromHSV(v1285 == 1 and v1279 and v1279 or v1282, v1285 == 1 and v1280 and v1280 or v1283, math_clamp_ret);
                end;
            end;
        elseif p26 == "Surreal" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local _ = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    descendant.Material = Enum.Material.ForceField;
                    descendant.Color = Color3.fromRGB(0, 0, 0);
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v1287 = u25:GetBoundingBox();
                local v1288 = general:WaitForChild("surrealtemplate"):Clone();
                v1288.Size = v1287 * 0.75;
                v1288.weld.Part1 = v1288;
                v1288.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1288, v1287, 4.5);
                v1288.Parent = u25;
            end;
        elseif p26 == "Spirit" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Transparency == 1 or descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3.fromRGB(134, 123, 194);
                    else
                        local _ = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        descendant.Material = Enum.Material.ForceField;
                        descendant.Color = Color3.fromRGB(72, 66, 104);
                    end;
                end;
            end;
        elseif p26 == "Enlightened" then
            if u25:FindFirstChild("handle") then
                local _, v1289 = u25:GetBoundingBox();
                local v1290 = general:WaitForChild("enlightenedtemplate"):Clone();
                v1290.Size = v1289 * 0.75;
                v1290.weld.Part1 = v1290;
                v1290.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1290.Parent = u25;
            end;
        elseif p26 == "Heavenly" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v1291 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, _ = descendant.Color:ToHSV();
                    descendant.Material = Enum.Material.Neon;
                    descendant.Color = Color3.fromHSV(0.139, Random.new(v1291):NextNumber(0, 0.4), 0.65);
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v1292 = u25:GetBoundingBox();
                local v1293 = general:WaitForChild("heavenlytemplate"):Clone();
                v1293.Size = v1292 * 0.75;
                v1293.weld.Part1 = v1293;
                v1293.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1293, v1292, 4.5);
                v1293.Parent = u25;
            end;
        elseif p26 == "Sleet" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    descendant.Material = Enum.Material.Metal;
                    local v1294 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, _ = descendant.Color:ToHSV();
                    Color3.fromHSV(0.614944, 0.349401, 0.32549);
                    local v1295 = 0.614 * Random.new(v1294):NextNumber(0.85, 1.05);
                    local math_clamp_ret = math.clamp(v1295, 0, 1);
                    local v1296 = Random.new(v1294):NextNumber(0.1, 0.35);
                    local math_clamp_ret2 = math.clamp(v1296, 0, 1);
                    local v1297 = Random.new(v1294):NextNumber(0.3, 0.8);
                    local math_clamp_ret3 = math.clamp(v1297, 0, 1);
                    descendant.Color = Color3.fromHSV(math_clamp_ret, math_clamp_ret2, math_clamp_ret3);
                end;
            end;
        elseif p26 == "Blighted" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v1298 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, _ = descendant.Color:ToHSV();
                    descendant.Material = Random.new(v1298):NextInteger(0, 1) == 0 and Enum.Material.Ice or Enum.Material.Neon;
                    local v1299 = (Random.new(v1298):NextInteger(0, 1) == 1 and 0.702 or 0.559) * Random.new(v1298):NextNumber(0.8, 1.2);
                    local math_clamp_ret = math.clamp(v1299, 0, 1);
                    local v1300 = Random.new(v1298):NextNumber(0.1, 0.35);
                    local math_clamp_ret2 = math.clamp(v1300, 0, 1);
                    local v1301 = Random.new(v1298):NextNumber(0.2, 0.4);
                    local math_clamp_ret3 = math.clamp(v1301, 0, 1);
                    descendant.Color = Color3.fromHSV(math_clamp_ret, math_clamp_ret2, math_clamp_ret3);
                end;
            end;
        elseif p26 == "Aurous" or (p26 == "Aurelian" or (p26 == "Aureate" or (p26 == "Aurulent" or p26 == "Aureolin"))) then
            local Color = u1.Mutations[p26].Color;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v1302 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, v1303 = descendant.Color:ToHSV();
                    local v1304, v1305, v1306 = Color:ToHSV();
                    local Color3_fromHSV = Color3.fromHSV;
                    local math_clamp_ret = math.clamp(v1305 + v1305 / 5, 0, 1);
                    local v1307 = v1306 + v1303 / 7 + Random.new(v1302):NextNumber(-0.1, 0.1);
                    descendant.Color = Color3_fromHSV(v1304, math_clamp_ret, (math.clamp(v1307, 0, 1)));
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1308 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1309 = general:WaitForChild("auricrodtemplate"):Clone();
                v1309.Size = v1308;
                v1309.weld.Part1 = v1309;
                v1309.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1309.particle.Color = ColorSequence.new(Color);
                v1309.Parent = u25;
            end;
        elseif p26 == "Scorched" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v1310 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local v1311, _, v1312 = descendant.Color:ToHSV();
                    local v1313 = Random.new(v1310):NextNumber(0.1, 0.3) * math.clamp(v1312 + 0.5, 0, 1);
                    descendant.Color = Color3.fromHSV(v1311, 0, v1313);
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1314 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1315 = general:WaitForChild("scorchedtemplate"):Clone();
                v1315.Size = v1314;
                v1315.weld.Part1 = v1315;
                v1315.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1315.Parent = u25;
            end;
        elseif p26 == "Spicy" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                    local v1316 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local v1317, _, v1318 = descendant.Color:ToHSV();
                    local v1319 = Random.new(v1316):NextNumber(0.1, 0.3) * math.clamp(v1318 + 0.5, 0, 1);
                    descendant.Color = Color3.fromHSV(v1317, 0, v1319);
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1320 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1321 = general:WaitForChild("spicytemplate"):Clone();
                v1321.Size = v1320;
                v1321.weld.Part1 = v1321;
                v1321.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1321.Parent = u25;
            end;
        elseif p26 == "Lunar" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                local v1322 = { 0.144, 0.585, 0.686 };

                local function v1327(p1323, p1324) -- Line: 15622
                    local v1325 = nil;
                    local v1326 = nil;

                    for i, v in ipairs(p1323) do
                        if not v1325 or math.abs(p1324 - v) < v1325 then
                            v1325 = math.abs(p1324 - v);
                            v1326 = i;
                        end;
                    end;

                    return v1326, p1323[v1326];
                end;

                local function _(p1328) -- Line: 15633
                    if p1328 < 0 then
                        return p1328 + 1;
                    end;

                    if p1328 > 1 then
                        return p1328 - 1;
                    end;

                    return p1328;
                end;

                local _ = u25:GetScale() * u25:GetScale() + u25:GetBoundingBox().Position.Magnitude;

                if descendant:IsA("BasePart") then
                    local v1329 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local v1330, _, v1331 = descendant.Color:ToHSV();

                    if descendant.Name ~= "Eyes" then
                        local _, v1332 = v1327(v1322, (v1330 + math.noise(v1329 * 414)) % 1);
                        local Color3_fromHSV = Color3.fromHSV;
                        local v1333 = v1332 + Random.new(v1329):NextNumber(-0.025, 0.025);

                        if v1333 < 0 then
                            v1333 = v1333 + 1;
                        elseif v1333 > 1 then
                            v1333 = v1333 - 1;
                        end;

                        descendant.Color = Color3_fromHSV(v1333, 0.35, (math.clamp(v1331 + 0.5, 0, 0.75)));
                        descendant.Material = Enum.Material.Neon;
                    end;
                end;
            end;

            local _, v1334 = u25:GetBoundingBox();

            if u25:FindFirstChild("Center") then
                local v1335 = (v1334.X + v1334.Y + v1334.Z) / 4.343;
                local v1336 = general:WaitForChild("lunarhalo"):Clone();
                v1336.Size = Vector3.new(v1336.Size.X * v1335, v1336.Size.Y * v1335, v1336.Size.Z * v1335);
                v1336.Attachment.Slash.Size = NumberSequence.new(v1336.Attachment.Slash.Size.Keypoints[1].Value * v1335);
                v1336.weld.Part1 = v1336;
                v1336.weld.Part0 = u25:FindFirstChild("Center");
                local weld = v1336.weld;
                weld.C0 = weld.C0 * CFrame.Angles(0, 1.5707963267948966, -0.5235987755982988);
                v1336.Parent = u25;
            end;

            if u25:FindFirstChild("handle") then
                local v1337 = general:WaitForChild("lunartemplate"):Clone();
                v1337.Transparency = 1;
                v1337.Size = v1334 * 0.75;
                v1337.weld.Part1 = v1337;
                v1337.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1337.Parent = u25;
            end;
        elseif p26 == "Subspace" then
            if game:GetService("RunService"):IsServer() then
                local Color3_fromRGB_ret = Color3.fromRGB(232, 42, 42);
                local v1338, _, _ = Color3_fromRGB_ret:ToHSV();

                local function _(p1339) -- Line: 15697
                    if p1339 < 0 then
                        return p1339 + 1;
                    end;

                    if p1339 > 1 then
                        return p1339 - 1;
                    end;

                    return p1339;
                end;

                for _, descendant in ipairs(u25:GetDescendants()) do
                    if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                        descendant.Material = Enum.Material.Neon;
                        local v1340 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local _, _, v1341 = descendant.Color:ToHSV();
                        local _, v1342, v1343 = Color3_fromRGB_ret:ToHSV();
                        local v1344 = v1338 + Random.new(v1340):NextNumber(-0.1, 0);

                        if v1344 < 0 then
                            v1344 = v1344 + 1;
                        elseif v1344 > 1 then
                            v1344 = v1344 - 1;
                        end;

                        local Color3_fromHSV = Color3.fromHSV;
                        local v1345 = v1343 * math.clamp(v1341, 0.9, 1);
                        descendant.Color = Color3_fromHSV(v1344, v1342, (math.clamp(v1345, 0, 1)));
                    end;
                end;

                if u25:FindFirstChild("Hitbox") then
                    general:WaitForChild("subspacetemplate"):WaitForChild("Sparkles"):Clone().Parent = u25:FindFirstChild("Hitbox");
                end;

                if u25:IsDescendantOf(workspace) then
                    game:GetService("ReplicatedStorage").events.fishMutation:FireAllClients(u25, p26);
                end;
            else
                if u25:IsA("Tool") then
                    while not (u25:FindFirstChild("Fish") or u25:FindFirstChild("Crate")) do
                        u25.ChildAdded:Wait();
                    end;

                    u25 = u25:FindFirstChild("Fish") and u25:FindFirstChild("Fish") or u25:FindFirstChild("Crate");
                end;

                local u1346 = {};

                for _, descendant in ipairs(u25:GetDescendants()) do
                    if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and descendant.Name ~= "Eyes") then
                        table.insert(u1346, descendant);
                    end;
                end;

                local u1347 = nil;

                local function StartLoop() -- Line: 15756
                    -- upvalues: u8 (ref), u25 (ref), u1347 (ref), u1346 (copy), u4 (ref)
                    if u8[u25] then
                        u8[u25]:Disconnect();
                    end;

                    u1347 = game:GetService("RunService").Heartbeat:Connect(function() -- Line: 15760
                        -- upvalues: u25 (ref), u1346 (ref), u4 (ref), u1347 (ref)
                        if u25 and (u25:FindFirstChild("Center") and (u25:IsDescendantOf(workspace) or u25:FindFirstAncestorWhichIsA("ViewportFrame"))) then
                            local Character = game.Players.LocalPlayer.Character;

                            if Character and Character:FindFirstChild("HumanoidRootPart") then
                                local Position = u25:FindFirstChild("Center").Position;
                                local Position2 = Character.HumanoidRootPart.Position;
                                local Vector3_new_ret = Vector3.new(Position2.X // 100, Position2.Y // 100, Position2.Z // 100);
                                local Vector3_new_ret2 = Vector3.new(Position.X // 100, Position.Y // 100, Position.Z // 100);

                                if Vector3_new_ret2.X <= Vector3_new_ret.X + 1 and (Vector3_new_ret2.X >= Vector3_new_ret.X - 1 and (Vector3_new_ret2.Y <= Vector3_new_ret.Y + 1 and (Vector3_new_ret2.Y >= Vector3_new_ret.Y - 1 and (Vector3_new_ret2.Z <= Vector3_new_ret.Z + 1 and Vector3_new_ret2.Z >= Vector3_new_ret.Z - 1)))) then
                                    for _, v in u1346 do
                                        if v and v.Parent then
                                            v.Transparency = u4;
                                        end;
                                    end;
                                end;
                            end;
                        else
                            u1347:Disconnect();
                        end;
                    end);
                    u8[u25] = u1347;
                end;

                u25.AncestryChanged:Connect(function() -- Line: 15801
                    -- upvalues: StartLoop (copy)
                    StartLoop();
                end);
                StartLoop();
            end;
        elseif p26 == "Anomalous" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Transparency == 1 or descendant.Name == "Eyes" then
                        if descendant.Name == "Eyes" then
                            descendant.Color = Color3.fromRGB(227, 26, 26);
                            descendant.Material = Enum.Material.Neon;
                        end;
                    else
                        local v1348 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local _, _, _ = descendant.Color:ToHSV();

                        if descendant.Name ~= "Eyes" then
                            descendant.Color = Color3.fromHSV(0, Random.new(v1348):NextNumber(0, 0.5), 0.9);
                        end;
                    end;
                end;
            end;

            if u25 and u25:FindFirstChild("handle") then
                local _, v1349 = u25:GetBoundingBox();
                local v1350 = general:WaitForChild("anomaloustemplate"):Clone();
                v1350.Size = v1349;
                v1350.weld.Part1 = v1350;
                v1350.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1350.Parent = u25;
            end;
        elseif p26 == "Abyssal" then
            local Color3_fromRGB_ret = Color3.fromRGB(39, 57, 173);
            local Color3_fromRGB_ret2 = Color3.fromRGB(83, 41, 173);
            local _, _, _ = Color3_fromRGB_ret:ToHSV();
            local _, _, _ = Color3_fromRGB_ret2:ToHSV();

            local function lerp(p1351, p1352, p1353) -- Line: 15850
                return p1351 + (p1352 - p1351) * p1353;
            end;

            if not u25:IsA("Model") then
                return;
            end;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and (descendant.Name ~= "Eyes" and descendant.Name ~= "Hitbox")) then
                    descendant.Material = Enum.Material.Neon;
                    local v1354 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local _, _, v1355 = descendant.Color:ToHSV();
                    local v1356, _, _ = Color3_fromRGB_ret:ToHSV();
                    local v1357, _, _ = Color3_fromRGB_ret2:ToHSV();
                    local v1358 = 0.65 * Random.new(v1354):NextNumber(0.9, 1.1) * math.clamp(v1355, 0.9, 1);
                    local math_clamp_ret = math.clamp(v1358, 0, 1);
                    local v1359 = Random.new(v1354):NextInteger(0, 1);
                    descendant.Color = Color3.fromHSV(v1359 == 1 and v1356 and v1356 or v1357, 1, math_clamp_ret);
                    descendant:SetAttribute("AbyssalHue", v1359 == 1 and v1356 and v1356 or v1357);
                    descendant:SetAttribute("AbyssalColor", v1359 == 1 and "Blue" or "Purple");
                    descendant:SetAttribute("AbyssalValue", math_clamp_ret);
                end;
            end;

            if game:GetService("RunService"):IsServer() and (u25 and u25:IsDescendantOf(workspace)) then
                game:GetService("ReplicatedStorage").events.fishMutation:FireAllClients(u25, p26);
            end;

            if u25:FindFirstChild("handle") then
                local _, v1360 = u25:GetBoundingBox();
                local v1361 = general:WaitForChild("abyssaltemplate"):Clone();
                v1361.Size = v1360 * 0.75;
                v1361.weld.Part1 = v1361;
                v1361.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1361.Parent = u25;
            end;
        elseif p26 == "Electric" then
            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1362 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1363 = general:WaitForChild("electrictemplate"):Clone();
                v1363.Size = v1362;
                v1363.weld.Part1 = v1363;
                v1363.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");

                if fish[v28] and fish[v28].SparkleColor then
                    v1363.strikes.Color = ColorSequence.new(fish[v28].SparkleColor);
                    v1363.wind.Color = ColorSequence.new(fish[v28].SparkleColor);
                end;

                resizeMutationTemplate(v1363, v1362, 4.5);
                v1363.Parent = u25;
            end;
        elseif p26 == "Frozen" then
            if u25:FindFirstChild("Center") then
                if not u25:FindFirstChild("Hitbox") then
                    return;
                end;

                local BoundingBox, v1364 = u25:GetBoundingBox();
                local Vector3_new_ret = Vector3.new(v1364.X * 1.2, v1364.Y * 1.2, v1364.Z * 1.2);
                local v1365 = general:WaitForChild("frozentemplate"):Clone();
                v1365.Size = Vector3_new_ret * 1.2;
                v1365:PivotTo(BoundingBox);
                v1365.weld.Part1 = v1365;
                v1365.weld.Part0 = u25:FindFirstChild("Center");
                v1365.Anchored = false;
                v1365.CanCollide = false;
                v1365.CanTouch = false;
                v1365.Massless = true;
                v1365.Parent = u25;
            end;
        elseif p26 == "Sandy" then
            local v1366 = {
                Color3.fromRGB(221, 195, 159),
                Color3.fromRGB(199, 176, 144),
                Color3.fromRGB(185, 163, 134),
                Color3.fromRGB(252, 221, 181),
                Color3.fromRGB(227, 199, 163)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    descendant.Color = v1366[math.random(1, #v1366)];
                    descendant.Material = Enum.Material.Sand;
                end;
            end;
        elseif p26 == "Sandstormy" then
            local v1367 = {
                Color3.fromRGB(221, 195, 159),
                Color3.fromRGB(199, 176, 144),
                Color3.fromRGB(185, 163, 134),
                Color3.fromRGB(252, 221, 181),
                Color3.fromRGB(227, 199, 163)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    descendant.Color = v1367[math.random(1, #v1367)];
                    descendant.Material = Enum.Material.Sand;
                end;
            end;
        elseif p26 == "Popsicle" then
            local v1368 = { Color3.fromRGB(221, 71, 74), Color3.fromRGB(97, 205, 255), Color3.fromRGB(249, 249, 249) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    descendant.Color = v1368[math.random(1, #v1368)];
                    descendant.Material = Enum.Material.Ice;
                end;
            end;
        elseif p26 == "Beachy" then
            local v1369 = {
                {
                    Color = Color3.fromRGB(221, 195, 159),
                    Material = Enum.Material.Sand
                },
                {
                    Color = Color3.fromRGB(199, 176, 144),
                    Material = Enum.Material.Sand
                },
                {
                    Color = Color3.fromRGB(55, 96, 231),
                    Material = Enum.Material.Neon
                },
                {
                    Color = Color3.fromRGB(67, 119, 231),
                    Material = Enum.Material.Neon
                }
            };
            local v1370 = {};

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    table.insert(v1370, descendant);
                end;
            end;

            for i, v in ipairs(v1370) do
                local math_random_ret = math.random();
                local v1371;

                if i == 1 then
                    v1371 = v1369[math.random(1, 2)];
                elseif i == 2 then
                    v1371 = v1369[math.random(3, 4)];
                elseif math_random_ret < 0.8 then
                    v1371 = v1369[math.random(1, 2)];
                else
                    v1371 = v1369[math.random(3, 4)];
                end;

                v.Color = v1371.Color;
                v.Material = v1371.Material;
            end;
        elseif p26 == "Chocolate" then
            local v1372 = { Color3.fromRGB(77, 61, 53) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant:IsA("MeshPart") then
                        descendant.Color = v1372[math.random(1, #v1372)];
                        descendant.Material = Enum.Material.SmoothPlastic;
                    elseif not descendant:IsA("UnionOperation") or descendant:IsA("UnionOperation") then
                        descendant.Color = v1372[math.random(1, #v1372)];
                        descendant.Material = Enum.Material.SmoothPlastic;
                    end;
                end;
            end;
        elseif p26 == "Doomsday" then
            local v1373 = { Color3.fromRGB(255, 95, 0) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant:IsA("MeshPart") then
                        descendant.Color = v1373[math.random(1, #v1373)];
                        descendant.Material = Enum.Material.Neon;
                    elseif not descendant:IsA("UnionOperation") or descendant:IsA("UnionOperation") then
                        descendant.Color = v1373[math.random(1, #v1373)];
                        descendant.Material = Enum.Material.Neon;
                    end;
                end;
            end;
        elseif p26 == "Easter" then
            local v1374 = {
                Color3.fromRGB(255, 201, 236),
                Color3.fromRGB(142, 255, 151),
                Color3.fromRGB(143, 236, 255),
                Color3.fromRGB(235, 255, 146),
                Color3.fromRGB(196, 167, 255)
            };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Color = v1374[math.random(1, #v1374)];
                    descendant.Material = Enum.Material.SmoothPlastic;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v1375 = u25:GetBoundingBox();
                local v1376 = general:WaitForChild("eastertemplate"):Clone();
                v1376.Size = v1375 * 0.75;
                v1376.weld.Part1 = v1376;
                v1376.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");

                for _, descendant in ipairs(v1376:GetDescendants()) do
                    if descendant:IsA("ParticleEmitter") then
                        local v1377 = math.max(v1375.X, v1375.Y, v1375.Z) / 4.5;
                        local v1378 = descendant;
                        local v1379 = {};

                        for _, v in ipairs(descendant.Size.Keypoints) do
                            table.insert(v1379, NumberSequenceKeypoint.new(v.Time, v.Value * v1377, v.Envelope * v1377));
                        end;

                        v1378.Size = NumberSequence.new(v1379);
                        v1378.Speed = NumberRange.new(v1378.Speed.Min * v1377, v1378.Speed.Max * v1377);
                    end;
                end;

                v1376.Parent = u25;
            end;
        elseif p26 == "Female" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant.Name ~= "Eyes" and (descendant.Name ~= "Eye" and (descendant:IsA("BasePart") or descendant:IsA("PartOperation"))) then
                    descendant.Color = Color3.fromRGB(255, 170, 255);
                    descendant.Material = Enum.Material.Glacier;
                end;
            end;
        elseif p26 == "Cursed" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant.Name ~= "Eyes" and descendant.Name ~= "Eye" then
                    if descendant:IsA("Part") or descendant:IsA("UnionOperation") then
                        descendant.Color = Color3.fromRGB(33, 57, 52);
                    elseif descendant:IsA("MeshPart") or descendant:IsA("PartOperation") then
                        descendant.Color = Color3.fromRGB(30, 149, 109);
                        descendant.Material = Enum.Material.Neon;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1380 = Size + Size;
                Vector3.new(v1380.X * 1.4, v1380.Y * 1.4, v1380.Z * 1.4);
                local v1381 = general:WaitForChild("cursed"):Clone();
                v1381.Size = v1380;
                v1381.weld.Part1 = v1381;
                v1381.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1381.Parent = u25;
            end;
        elseif p26 == "Brother" then
            local v1382 = { Color3.fromRGB(60, 60, 255), Color3.fromRGB(115, 211, 255) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and descendant.Name ~= "Eye") then
                    if descendant:IsA("MeshPart") then
                        descendant.Color = v1382[math.random(1, #v1382)];
                        descendant.Material = Enum.Material.Plaster;
                    elseif not descendant:IsA("UnionOperation") or descendant:IsA("UnionOperation") then
                        descendant.Color = v1382[math.random(1, #v1382)];
                        descendant.Material = Enum.Material.Plaster;
                    end;
                end;
            end;
        elseif p26 == "Red" or (p26 == "Green" or (p26 == "Blue" or (p26 == "Pink" or p26 == "Yellow"))) then
            local v1383 = u1.Mutations[p26];

            if not v1383 then
                return;
            end;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    descendant.Color = v1383.Color;
                end;
            end;
        elseif p26 == "Colossal Ink" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Material = Enum.Material.Ice;
                    descendant.Color = Color3.fromRGB(math.random(200, 255), 255, 255);
                end;
            end;
        elseif p26 == "Neon" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    descendant.Material = Enum.Material.Neon;
                end;
            end;
        elseif p26 == "Bubblegum" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    descendant.Material = Enum.Material.SmoothPlastic;
                    local Color3_fromRGB_ret = Color3.fromRGB(244, 179, 255);
                    local Color3_fromRGB_ret2 = Color3.fromRGB(255, 148, 221);
                    local v1384 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + u25:GetScale();
                    descendant.Color = Random.new(v1384):NextInteger(0, 1) == 0 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret2;
                end;
            end;
        elseif p26 == "Lumpy" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    descendant.Material = Enum.Material.SmoothPlastic;
                    local Color3_fromRGB_ret = Color3.fromRGB(171, 138, 255);
                    local Color3_fromRGB_ret2 = Color3.fromRGB(149, 122, 225);
                    local v1385 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + u25:GetScale();
                    descendant.Color = Random.new(v1385):NextInteger(0, 1) == 0 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret2;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1386 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1387 = general:WaitForChild("lumpytemplate"):Clone();
                v1387.Size = v1386;
                v1387.weld.Part1 = v1387;
                v1387.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1387.Parent = u25;
            end;
        elseif p26 == "Rockstar" then
            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    descendant.Material = Enum.Material.SmoothPlastic;
                    local v1388 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + u25:GetScale();
                    descendant.Color = Random.new(v1388):NextInteger(0, 1) == 0 and Color3.fromRGB(20, 20, 20) or Color3.fromRGB(36, 36, 36);
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1389 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1390 = general:WaitForChild("rockstartemplate"):Clone();
                v1390.Size = v1389;
                v1390.weld.Part1 = v1390;
                v1390.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1390.Parent = u25;
            end;
        elseif p26 == "Glowy" then
            if string.find(v28, "Crate") then
                return;
            end;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    descendant.Material = Enum.Material.Neon;
                    local Color = descendant.Color;
                    local v1391 = 0.299 * Color.R + 0.587 * Color.G + 0.114 * Color.B;
                    descendant.Color = Color3.new(v1391, v1391, v1391);
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v1392 = u25:GetBoundingBox();
                local v1393 = general:WaitForChild("glowytemplate"):Clone();
                v1393.Size = v1392;
                v1393.weld.Part1 = v1393;
                v1393.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");

                for _, descendant in ipairs(v1393:GetDescendants()) do
                    local v1394;

                    if descendant:IsA("ParticleEmitter") then
                        local v1395 = math.max(v1392.X, v1392.Y, v1392.Z) / 4.5;
                        v1394 = descendant;
                        local v1396 = {};

                        for _, v in ipairs(descendant.Size.Keypoints) do
                            table.insert(v1396, NumberSequenceKeypoint.new(v.Time, v.Value * v1395, v.Envelope * v1395));
                        end;

                        v1394.Size = NumberSequence.new(v1396);
                    else
                        v1394 = descendant;
                    end;

                    if v1394:IsA("PointLight") then
                        local v1397 = math.max(v1392.X, v1392.Y, v1392.Z) / 10;
                        v1394.Range = math.max(6, v1394.Range * v1397);
                        local math_max_ret = math.max(2, v1394.Brightness * v1397);
                        v1394.Brightness = math.min(10, math_max_ret);
                    end;
                end;

                v1393.Parent = u25;
            end;
        elseif p26 == "Lobster" then
            local function _(p1398) -- Line: 16424
                if p1398 < 0 then
                    return p1398 + 1;
                end;

                if p1398 > 1 then
                    return p1398 - 1;
                end;

                return p1398;
            end;

            local _ = u25:GetScale() * u25:GetScale() + u25:GetBoundingBox().Position.Magnitude;

            local function v1403(p1399, p1400) -- Line: 16413
                local v1401 = nil;
                local v1402 = nil;

                for i, v in ipairs(p1399) do
                    if not v1401 or math.abs(p1400 - v) < v1401 then
                        v1401 = math.abs(p1400 - v);
                        v1402 = i;
                    end;
                end;

                return v1402, p1399[v1402];
            end;

            local v1404 = { 0, 0.015, 0.035 };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and not string.find(string.lower(descendant.Name), "eye") then
                    local v1405 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                    local v1406, _, v1407 = descendant.Color:ToHSV();
                    local _, v1408 = v1403(v1404, (v1406 + math.noise(v1405 * 414)) % 1);
                    local v1409 = v1408 + Random.new(v1405):NextNumber(-0.05, 0.01);

                    if v1409 < 0 then
                        v1409 = v1409 + 1;
                    elseif v1409 > 1 then
                        v1409 = v1409 - 1;
                    end;

                    local math_min_ret = math.min(v1407 + 0.1, 0.6);
                    local math_max_ret = math.max(math_min_ret, 0.55);
                    local math_clamp_ret = math.clamp(math_max_ret, 0, 1);
                    descendant.Color = Color3.fromHSV(v1409, 0.8, math_clamp_ret);
                    descendant.Material = Enum.Material.Plastic;
                end;
            end;
        elseif p26 == "Rainbow" or p26 == "BlueMoon" then
            local v1410 = {
                Color3.fromRGB(255, 116, 118),
                Color3.fromRGB(255, 197, 97),
                Color3.fromRGB(243, 255, 116),
                Color3.fromRGB(117, 255, 149),
                Color3.fromRGB(151, 182, 255),
                Color3.fromRGB(156, 143, 255),
                Color3.fromRGB(205, 155, 255)
            };
            local v1411 = { Color3.fromRGB(50, 62, 76), Color3.fromRGB(61, 124, 158), Color3.fromRGB(64, 79, 97) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and not string.find(string.lower(descendant.Name), "eye")) then
                    if p26 == "Rainbow" then
                        descendant.Color = v1410[math.random(1, #v1410)];
                        descendant.Transparency = 0.3;
                        descendant.Material = "Neon";
                    elseif p26 == "BlueMoon" then
                        descendant.Color = v1411[math.random(1, #v1411)];
                    end;
                end;
            end;
        elseif p26 == "Glyphed" then
            for _, descendant in u25:GetDescendants() do
                if descendant:IsA("BasePart") then
                    descendant.Material = Enum.Material.SmoothPlastic;
                    local Color3_fromRGB_ret = Color3.fromRGB(255, 255, 255);
                    local Color3_fromRGB_ret2 = Color3.fromRGB(0, 0, 0);
                    local v1412 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + u25:GetScale();
                    descendant.Color = Random.new(v1412):NextInteger(0, 1) == 0 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret2;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1413 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1414 = general:WaitForChild("glyphedtemplate"):Clone();
                v1414.Size = v1413;
                v1414.weld.Part1 = v1414;
                v1414.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                local v1415;

                if p27 then
                    v1415 = p27.Sparkling or p27.SubValues and p27.SubValues.Sparkling;
                else
                    v1415 = p27;
                end;

                local v1416 = math.min(v1413.X, v1413.Y, v1413.Z) / 2;
                local v1417 = math.max(v1413.X, v1413.Y, v1413.Z) / 20;

                for _, child in v1414:GetChildren() do
                    if child:IsA("ParticleEmitter") then
                        child.Speed = NumberRange.new(v1416);
                        child.Size = NumberSequence.new(v1417);

                        if v1415 and child.LightEmission == 1 then
                            child.Brightness = 10000;
                            child:AddTag("HidePhotosensitive");
                        end;
                    end;
                end;

                if v1415 then
                    local PointLight = Instance.new("PointLight");
                    PointLight.Brightness = 100;
                    PointLight.Range = v1417 * 40;
                    PointLight.Color = Color3.new(1, 1, 1);
                    PointLight:AddTag("HidePhotosensitive");
                    PointLight.Parent = v1414;
                end;

                v1414.Parent = u25;
            end;
        elseif p26 == "Harmonized" then
            local v1418;

            if p27 then
                v1418 = p27.Shiny or (p27.SubValues and p27.SubValues.Shiny or false);
            else
                v1418 = false;
            end;

            local v1419 = v1418 and Color3.fromRGB(186, 131, 109) or Color3.fromRGB(19, 255, 255);
            local v1420, _, _ = v1419:ToHSV();
            local v1421 = v1418 and Color3.fromRGB(184, 161, 115) or Color3.fromRGB(220, 44, 255);
            local v1422, _, _ = v1421:ToHSV();

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Name ~= "Eyes" then
                    local _, v1423, v1424 = descendant.Color:ToHSV();
                    local v1425 = { v1418 and v1419 or Color3.fromHSV(v1420, math.clamp(v1423 + 0.2, 0, 1), (math.clamp(v1424 + 0.65, 0, 1))), v1418 and v1421 and v1421 or Color3.fromHSV(v1422, math.clamp(v1423 + 0.2, 0, 1), (math.clamp(v1424 + 0.65, 0, 1))) };
                    descendant:SetAttribute("PulseTime", 3);
                    local v1426;

                    if v1425 then
                        v1426 = descendant;

                        for i, v in v1425 do
                            v1426:SetAttribute(`PulseColor{i}`, v);
                        end;
                    else
                        v1426 = descendant;
                    end;

                    v1426:AddTag("ColorPulse");

                    if v1418 then
                        v1426.Material = Enum.Material.Neon;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v1427 = Hitbox.Size * 1.25;
                local v1428 = general:WaitForChild(v1418 and "harmonizedtemplate_shiny" or "harmonizedtemplate"):Clone();
                v1428.Size = v1427;
                v1428.weld.Part1 = v1428;
                v1428.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                local v1429 = math.max(v1427.X, v1427.Y, v1427.Z) / 2;
                local v1430 = math.max(v1427.X, v1427.Y, v1427.Z) / 2;

                for _, descendant in v1428:GetDescendants() do
                    if descendant:IsA("ParticleEmitter") then
                        if descendant:FindFirstAncestorOfClass("Attachment") then
                            descendant.Size = NumberSequence.new(descendant.Size.Keypoints[1].Value * v1429);
                        else
                            descendant.Rate = descendant.Rate * v1427.Magnitude;
                        end;
                    elseif descendant:IsA("Beam") then
                        descendant.CurveSize0 = descendant.CurveSize0 * v1429;
                        descendant.CurveSize1 = descendant.CurveSize1 * v1429;
                        descendant.Width0 = descendant.Width0 * v1430;
                        descendant.Width1 = descendant.Width1 * v1430;
                        descendant.TextureLength = descendant.TextureLength * v1430;
                    end;
                end;

                if v1418 then
                    for _, child in v1428:GetChildren() do
                        if child:IsA("Attachment") and child.Name:find("^Beams") then
                            child.Position = child.Position * v1429;
                        end;
                    end;
                end;

                v1428.Parent = u25;
            end;
        elseif p26 == "Mesmerized" then
            local v1431;

            if p27 then
                v1431 = p27.Shiny or (p27.SubValues and p27.SubValues.Shiny or false);
            else
                v1431 = false;
            end;

            local v1432 = v1431 and Color3.fromRGB(248, 248, 248) or Color3.fromRGB(255, 230, 3);
            local v1433 = v1431 and Color3.fromRGB(17, 17, 17) or Color3.fromRGB(255, 230, 3);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Name ~= "Eyes" then
                    if Random.new(descendant.Size.Magnitude):NextInteger(1, 2) == 1 then
                        descendant.Color = v1432;
                    else
                        descendant.Color = v1433;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v1434 = Hitbox.Size * 1.25;
                local v1435 = general:WaitForChild(v1431 and "mesmerizedtemplate_shiny" or "mesmerizedtemplate"):Clone();
                v1435.Size = v1434;
                v1435.weld.Part1 = v1435;
                v1435.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                local _ = math.max(v1434.X, v1434.Y, v1434.Z) / 2;
                local _ = math.max(v1434.X, v1434.Y, v1434.Z) / 2;
                local v1436 = v1434.Magnitude / 2;

                for _, descendant in v1435:GetDescendants() do
                    if descendant:IsA("ParticleEmitter") then
                        local v1437 = {};

                        for _, v in descendant.Size.Keypoints do
                            table.insert(v1437, NumberSequenceKeypoint.new(v.Time, v.Value * v1436, v.Envelope * v1436));
                        end;

                        descendant.Size = NumberSequence.new(v1437);
                    end;
                end;

                v1435.Parent = u25;
            end;
        elseif p26 == "Rusty" then
            for _, descendant in u25:GetDescendants() do
                if descendant:IsA("BasePart") and (descendant.Transparency ~= 1 and (descendant.Name ~= "Eyes" and not (table_freeze_ret[descendant.Name] or descendant.Name:find("^glow_")))) then
                    descendant.Color = Color3.fromRGB(139 + math.random(-20, 20), 90 + math.random(-15, 15), 43 + math.random(-10, 10));
                    descendant.Material = Enum.Material.CorrodedMetal;
                end;
            end;
        elseif p26 == "Fallen" then
            local Color3_fromRGB_ret = Color3.fromRGB(30, 20, 25);
            local Color3_fromRGB_ret2 = Color3.fromRGB(71, 36, 30);
            local Color3_fromRGB_ret3 = Color3.fromRGB(50, 40, 45);
            local Color3_fromRGB_ret4 = Color3.fromRGB(100, 50, 60);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Transparency == 1 or descendant.Name == "Eyes" then
                        if descendant.Name == "Eyes" then
                            descendant.Material = Enum.Material.Neon;
                            descendant.Color = Color3.fromRGB(150, 30, 30);
                            local v1438 = { Color3.fromRGB(150, 30, 30), Color3.fromRGB(200, 50, 50) };
                            descendant:SetAttribute("PulseTime", 1.5);
                            local v1439;

                            if v1438 then
                                v1439 = descendant;

                                for i, v in v1438 do
                                    v1439:SetAttribute(`PulseColor{i}`, v);
                                end;
                            else
                                v1439 = descendant;
                            end;

                            v1439:AddTag("ColorPulse");
                        end;
                    else
                        local v1440 = descendant.Size.X + descendant.Size.Y + descendant.Size.Z + descendant.Color.R + descendant.Color.G + descendant.Color.B + u25:GetScale();
                        local v1441 = Random.new(v1440):NextInteger(0, 3) == 0;
                        descendant.Material = Enum.Material.Neon;
                        local v1442;

                        if v1441 then
                            v1442 = Color3_fromRGB_ret2 or Color3_fromRGB_ret;
                        else
                            v1442 = Color3_fromRGB_ret;
                        end;

                        descendant.Color = v1442;
                        local v1443 = {};
                        local v1444;

                        if v1441 then
                            v1444 = Color3_fromRGB_ret2 or Color3_fromRGB_ret;
                        else
                            v1444 = Color3_fromRGB_ret;
                        end;

                        v1443[1], v1443[2] = v1444, v1441 and Color3_fromRGB_ret4 and Color3_fromRGB_ret4 or Color3_fromRGB_ret3;
                        descendant:SetAttribute("PulseTime", 2.5);
                        local v1445;

                        if v1443 then
                            v1445 = descendant;

                            for i, v in v1443 do
                                v1445:SetAttribute(`PulseColor{i}`, v);
                            end;
                        else
                            v1445 = descendant;
                        end;

                        v1445:AddTag("ColorPulse");
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local _, v1446 = u25:GetBoundingBox();
                local v1447 = general:WaitForChild("fallentemplate"):Clone();
                v1447.Size = v1446;
                v1447.weld.Part1 = v1447;
                v1447.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1447, v1446, 4.5);
                local Center = u25:FindFirstChild("Center");

                if Center then
                    for _, descendant in ipairs(v1447:GetDescendants()) do
                        if descendant:IsA("Attachment") then
                            descendant.Parent = Center;
                        end;
                    end;
                end;

                v1447.Parent = u25;
            end;
        elseif p26 == "Bellona\'s Infliction" or (p26 == "Apollo\'s Infliction" or (p26 == "Poseidon\'s Infliction" or (p26 == "Zeus\'s Infliction" or (p26 == "Hades\' Infliction" or p26 == "Olympian Infliction")))) then
            for _, descendant in ipairs(u25:GetDescendants()) do
                local v1448, _, _ = u1.Mutations[p26].Color:ToHSV();

                if descendant:IsA("BasePart") then
                    local _, v1449, v1450 = descendant.Color:ToHSV();

                    if descendant.Name ~= "Eyes" then
                        descendant.Color = Color3.fromHSV(math.clamp(v1448, 0, 1), math.clamp(v1449 + 0.2, 0, 1), (math.clamp(v1450 * 0.65, 0, 1)));
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1451 = Size + Vector3.new(Size.X * 1.4, Size.Y * 1.4, Size.Z * 1.4);
                local v1452 = general:WaitForChild("inflictiontemplate"):Clone();

                for _, descendant in v1452:GetDescendants() do
                    if descendant:IsA("ParticleEmitter") then
                        descendant.Color = ColorSequence.new(u1.Mutations[p26].Color);
                    end;
                end;

                v1452.Size = v1451;
                v1452.weld.Part1 = v1452;
                v1452.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1452.Parent = u25;
            end;
        elseif p26 == "Paranormal" then
            local Color3_fromRGB_ret = Color3.fromRGB(170, 201, 255);
            local Color3_fromRGB_ret2 = Color3.fromRGB(138, 185, 255);
            local Rock = Enum.Material.Rock;
            local ForceField = Enum.Material.ForceField;

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3.fromRGB(130, 159, 255);
                    elseif Random.new(descendant.Size.Magnitude * 10000):NextInteger(1, 3) == 1 then
                        descendant.Color = Color3_fromRGB_ret;
                        descendant.Material = Rock;
                    else
                        descendant.Color = Color3_fromRGB_ret2;
                        descendant.Material = ForceField;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v1453 = Hitbox.Size * 1.25;
                local v1454 = general:WaitForChild("paranormaltemplate"):Clone();
                v1454.Size = v1453;
                v1454.weld.Part1 = v1454;
                v1454.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                local _ = math.max(v1453.X, v1453.Y, v1453.Z) / 2;
                local _ = math.max(v1453.X, v1453.Y, v1453.Z) / 2;
                local v1455 = v1453.Magnitude / 2;

                for _, descendant in v1454:GetDescendants() do
                    if descendant:IsA("ParticleEmitter") then
                        local v1456 = {};

                        for _, v in descendant.Size.Keypoints do
                            table.insert(v1456, NumberSequenceKeypoint.new(v.Time, v.Value * v1455, v.Envelope * v1455));
                        end;

                        descendant.Size = NumberSequence.new(v1456);
                    end;
                end;

                v1454.Parent = u25;
            end;
        elseif p26 == "Prismatic" then
            local prismatictemplate = general:WaitForChild("prismatictemplate");
            local v1457 = {};

            for _, child in prismatictemplate:WaitForChild("Textures"):GetChildren() do
                table.insert(v1457, child);
            end;

            local v1458 = prismatictemplate:FindFirstChildOfClass("Highlight");
            local Color3_fromRGB_ret = Color3.fromRGB(175, 165, 198);
            local Color3_fromRGB_ret2 = Color3.fromRGB(160, 135, 203);
            local Foil = Enum.Material.Foil;
            local v1459 = { "Hitbox", "Center", "handle", "Eyes" };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if table.find(v1459, descendant.Name) then
                        descendant.Material = Enum.Material.Neon;
                        descendant.Color = Color3.fromRGB(133, 117, 255);
                    else
                        descendant.Color = Random.new(descendant.Size.Magnitude * 10000):NextInteger(1, 3) == 1 and Color3_fromRGB_ret and Color3_fromRGB_ret or Color3_fromRGB_ret2;
                        descendant.Material = Foil;
                        local v1460 = descendant;

                        for _, v in ipairs(v1457) do
                            v:Clone().Parent = v1460;
                        end;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local v1461 = Hitbox.Size * 1.25;
                local v1462 = prismatictemplate:Clone();
                v1462.Size = v1461;
                v1462.weld.Part1 = v1462;
                v1462.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                local _ = math.max(v1461.X, v1461.Y, v1461.Z) / 2;
                local _ = math.max(v1461.X, v1461.Y, v1461.Z) / 2;
                local v1463 = v1461.Magnitude / 2;

                for _, descendant in v1462:GetDescendants() do
                    if descendant:IsA("ParticleEmitter") then
                        local v1464 = {};

                        for _, v in descendant.Size.Keypoints do
                            table.insert(v1464, NumberSequenceKeypoint.new(v.Time, v.Value * v1463, v.Envelope * v1463));
                        end;

                        descendant.Size = NumberSequence.new(v1464);
                    end;
                end;

                v1462.Parent = u25;

                if not (u25:FindFirstChildOfClass("Model") or u25):FindFirstChildOfClass("Highlight") then
                    v1458:Clone();
                end;
            end;
        elseif p26 == "Fury" then
            local v1465 = { Color3.fromRGB(170, 144, 15), Color3.fromRGB(188, 107, 35), Color3.fromRGB(154, 104, 23) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(0, 0, 0);
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = v1465[math.random(1, #v1465)];
                        descendant.Material = Enum.Material.Neon;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1466 = Size + Vector3.new(Size.X * 1.2, Size.Y * 1.2, Size.Z * 1.2);
                local v1467 = general:WaitForChild("furytemplate"):Clone();
                v1467.Size = v1466;
                v1467.weld.Part1 = v1467;
                v1467.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1467.Parent = u25;
            end;
        elseif p26 == "Energy" then
            local v1468 = { Color3.fromRGB(73, 170, 138), Color3.fromRGB(98, 154, 126), Color3.fromRGB(69, 170, 105) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(0, 0, 0);
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = v1468[math.random(1, #v1468)];
                        descendant.Material = Enum.Material.Neon;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1469 = Size + Vector3.new(Size.X * 1.2, Size.Y * 1.2, Size.Z * 1.2);
                local v1470 = general:WaitForChild("energytemplate"):Clone();
                v1470.Size = v1469;
                v1470.weld.Part1 = v1470;
                v1470.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1470.Parent = u25;
            end;
        elseif p26 == "Nebula" then
            local v1471 = { Color3.fromRGB(188, 81, 177), Color3.fromRGB(146, 73, 170), Color3.fromRGB(136, 94, 154) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(0, 0, 0);
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = v1471[math.random(1, #v1471)];
                        descendant.Material = Enum.Material.Neon;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1472 = Size + Vector3.new(Size.X * 1.2, Size.Y * 1.2, Size.Z * 1.2);
                local v1473 = general:WaitForChild("nebulatemplate"):Clone();
                v1473.Size = v1472;
                v1473.weld.Part1 = v1473;
                v1473.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1473.Parent = u25;
            end;
        elseif p26 == "Cosmos" then
            local v1474 = { Color3.fromRGB(14, 96, 170), Color3.fromRGB(42, 88, 188), Color3.fromRGB(69, 123, 170) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(0, 0, 0);
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = v1474[math.random(1, #v1474)];
                        descendant.Material = Enum.Material.Neon;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1475 = Size + Vector3.new(Size.X * 1.2, Size.Y * 1.2, Size.Z * 1.2);
                local v1476 = general:WaitForChild("cosmostemplate"):Clone();
                v1476.Size = v1475;
                v1476.weld.Part1 = v1476;
                v1476.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1476.Parent = u25;
            end;
        elseif p26 == "Clockwork" then
            local v1477 = { Color3.fromRGB(255, 206, 128), Color3.fromRGB(112, 90, 56) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = v1477[1];
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = v1477[math.random(1, #v1477)];
                        descendant.Material = Enum.Material.Metal;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1478 = Size + Vector3.new(Size.X * 1.2, Size.Y * 1.2, Size.Z * 1.2);
                local v1479 = general:WaitForChild("clockworktemplate"):Clone();
                v1479.Size = v1478;
                v1479.weld.Part1 = v1479;
                v1479.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1479.Parent = u25;
            end;
        elseif p26 == "Flowed" then
            local flowedtemplate = general:WaitForChild("flowedtemplate");
            local v1480 = flowedtemplate:FindFirstChildOfClass("Highlight");
            local v1481 = { Color3.fromRGB(67, 255, 130), Color3.fromRGB(0, 0, 0) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = v1481[1];
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = v1481[2];
                        descendant.Material = Enum.Material.Foil;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1482 = Size + Vector3.new(Size.X * 1.2, Size.Y * 1.2, Size.Z * 1.2);
                local v1483 = flowedtemplate:Clone();
                v1483.Size = v1482;
                v1483.weld.Part1 = v1483;
                v1483.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1483.Parent = u25;
            end;

            if not (u25:FindFirstChildOfClass("Model") or u25):FindFirstChildOfClass("Highlight") then
                v1480:Clone();
            end;
        elseif p26 == "Soultorn" then
            local soultorntemplate = general:WaitForChild("soultorntemplate");
            local v1484 = soultorntemplate:FindFirstChildOfClass("Highlight");
            local v1485 = { Color3.fromRGB(67, 255, 130), Color3.fromRGB(56, 255, 182) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = v1485[1];
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = v1485[2];
                        descendant.Material = Enum.Material.Glass;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1486 = Size + Vector3.new(Size.X * 1.2, Size.Y * 1.2, Size.Z * 1.2);
                local v1487 = soultorntemplate:Clone();
                v1487.Size = v1486;
                v1487.weld.Part1 = v1487;
                v1487.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1487.Parent = u25;
            end;

            if not (u25:FindFirstChildOfClass("Model") or u25):FindFirstChildOfClass("Highlight") then
                v1484:Clone();
            end;
        elseif p26 == "Rhythmic" then
            local rhythmictemplate = general:WaitForChild("rhythmictemplate");
            local v1488 = rhythmictemplate:FindFirstChildOfClass("Highlight");
            local v1489 = { Color3.fromRGB(45, 53, 56), Color3.fromRGB(37, 170, 86) };

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if descendant.Name == "Eyes" then
                        descendant.Color = Color3.fromRGB(67, 255, 130);
                        descendant.Material = Enum.Material.Neon;
                    else
                        descendant.Color = v1489[math.random(1, #v1489)];
                        descendant.Material = Enum.Material.Granite;
                    end;
                end;
            end;

            if u25:FindFirstChild("handle") then
                local Hitbox = u25:FindFirstChild("Hitbox");

                if not Hitbox then
                    return;
                end;

                local _ = Hitbox.CFrame;
                local Size = Hitbox.Size;
                local v1490 = Size + Vector3.new(Size.X * 1.2, Size.Y * 1.2, Size.Z * 1.2);
                local v1491 = rhythmictemplate:Clone();
                v1491.Size = v1490;
                v1491.weld.Part1 = v1491;
                v1491.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                v1491.Parent = u25;
            end;

            if not (u25:FindFirstChildOfClass("Model") or u25):FindFirstChildOfClass("Highlight") then
                v1488:Clone();
            end;
        elseif p26 == "Fabricated" then
            for _, v in u25:QueryDescendants("BasePart") do
                local v1492, v1493, v1494 = v.Color:ToHSV();
                v.Material = Enum.Material.Carpet;
                v.Color = Color3.fromHSV(v1492, v1493 / 2, (math.min(v1494 + 0.25, 1)));
            end;
        elseif p26 == "Bathyal" then
            local Color3_fromRGB_ret = Color3.fromRGB(93, 203, 243);
            local Color3_fromRGB_ret2 = Color3.fromRGB(59, 72, 168);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and (not table_freeze_ret[descendant.Name] and descendant.Transparency < 1)) then
                    descendant.Material = Enum.Material.Neon;
                    descendant.Color = Color3_fromRGB_ret:Lerp(Color3_fromRGB_ret2, math.random());
                end;
            end;

            if u25:FindFirstChild("handle") then
                local ExtentsSize = u25:GetExtentsSize();
                local v1495 = general:WaitForChild("bathyaltemplate"):Clone();
                v1495.Size = ExtentsSize;
                v1495.weld.Part1 = v1495;
                v1495.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1495, ExtentsSize, 4.5);
                v1495.Parent = u25;
            end;
        elseif p26 == "Thalassic" then
            local Color3_fromRGB_ret = Color3.fromRGB(49, 39, 124);
            local Color3_fromRGB_ret2 = Color3.fromRGB(24, 33, 113);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and (not table_freeze_ret[descendant.Name] and descendant.Transparency < 1)) then
                    descendant.Material = Enum.Material.Neon;
                    descendant.Color = Color3_fromRGB_ret:Lerp(Color3_fromRGB_ret2, math.random());
                    descendant.Transparency = descendant.Transparency + (1 - descendant.Transparency) * (math.random(1, 2) == 1 and 0.5 or 0);
                end;
            end;

            if u25:FindFirstChild("handle") then
                local ExtentsSize = u25:GetExtentsSize();
                local v1496 = general:WaitForChild("thalassictemplate"):Clone();
                v1496.Size = ExtentsSize;
                v1496.weld.Part1 = v1496;
                v1496.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1496, ExtentsSize, 4.5);
                v1496.Parent = u25;
            end;
        elseif p26 == "Hadal" then
            local Color3_fromRGB_ret = Color3.fromRGB(9, 7, 136);
            local Color3_fromRGB_ret2 = Color3.fromRGB(3, 2, 53);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and (not table_freeze_ret[descendant.Name] and descendant.Transparency < 1)) then
                    descendant.Material = Enum.Material.Neon;
                    descendant.Color = Color3_fromRGB_ret:Lerp(Color3_fromRGB_ret2, math.random());
                    descendant.Transparency = descendant.Transparency + (1 - descendant.Transparency) * (0.25 + math.random() * 0.5);
                end;
            end;

            if u25:FindFirstChild("handle") then
                local ExtentsSize = u25:GetExtentsSize();
                local v1497 = general:WaitForChild("hadaltemplate"):Clone();
                v1497.Size = ExtentsSize;
                v1497.weld.Part1 = v1497;
                v1497.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1497, ExtentsSize, 4.5);
                v1497.Parent = u25;
            end;
        elseif p26 == "Melody" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 182, 80);
            local Color3_fromRGB_ret2 = Color3.fromRGB(255, 79, 158);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Material = Enum.Material.Neon;
                    descendant.Color = Color3_fromRGB_ret:Lerp(Color3_fromRGB_ret2, math.random());
                end;
            end;

            if u25:FindFirstChild("handle") then
                local ExtentsSize = u25:GetExtentsSize();
                local v1498 = general:WaitForChild("melodytemplate"):Clone();
                v1498.Size = ExtentsSize;
                v1498.weld.Part1 = v1498;
                v1498.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1498, ExtentsSize, 4.5);
                v1498.Parent = u25;
            end;
        elseif p26 == "Synth" then
            local Color3_fromRGB_ret = Color3.fromRGB(93, 225, 255);
            local Color3_fromRGB_ret2 = Color3.fromRGB(229, 164, 255);

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Material = Enum.Material.Neon;
                    descendant.Color = Color3_fromRGB_ret:Lerp(Color3_fromRGB_ret2, math.random());
                end;
            end;

            if u25:FindFirstChild("handle") then
                local ExtentsSize = u25:GetExtentsSize();
                local v1499 = general:WaitForChild("synthtemplate"):Clone();
                v1499.Size = ExtentsSize;
                v1499.weld.Part1 = v1499;
                v1499.weld.Part0 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
                resizeMutationTemplate(v1499, ExtentsSize, 4.5);
                v1499.Parent = u25;
            end;
        elseif p26 == "Birthday Candle" then
            local Color3_fromRGB_ret = Color3.fromRGB(255, 236, 179);
            local Color3_fromRGB_ret2 = Color3.fromRGB(255, 170, 200);
            local v1500 = u25:FindFirstChild("Center") or u25:FindFirstChild("handle");
            local Hitbox = u25:FindFirstChild("Hitbox");

            for _, descendant in ipairs(u25:GetDescendants()) do
                if descendant:IsA("BasePart") and (descendant.Name ~= "Eyes" and not table_freeze_ret[descendant.Name]) then
                    descendant.Material = Enum.Material.SmoothPlastic;
                    descendant.Color = Color3_fromRGB_ret:Lerp(Color3_fromRGB_ret2, math.random());
                end;
            end;

            if v1500 and Hitbox then
                local Size = Hitbox.Size;
                local mouth = v1500:FindFirstChild("mouth");
                local v1501 = mouth and (Hitbox.CFrame:PointToObjectSpace(mouth.WorldPosition) * 0.6 or Vector3.new(0, 0, 0)) or Vector3.new(0, 0, 0);
                local math_clamp_ret = math.clamp((Size.X / Size.Y - 0.6) / 0.4, 0, 1);
                local v1502 = script["Birthday Candle"]:Clone();
                v1502:ScaleTo(math.max(Size.X, Size.Y, Size.Z) * 0.12);
                v1502:PivotTo(Hitbox.CFrame * CFrame.new(v1501.X, Size.Y * (0.45 + math_clamp_ret * 0.35), v1501.Z));
                local WeldConstraint = Instance.new("WeldConstraint");
                WeldConstraint.Part0 = v1500;
                WeldConstraint.Part1 = v1502.PrimaryPart;
                WeldConstraint.Parent = v1502.PrimaryPart;
                v1502.Parent = u25:FindFirstChild("Fish") or u25;

                if u25:FindFirstChild("handle") then
                    local v1503 = general:WaitForChild("birthdaycandletemplate"):Clone();
                    v1503.Size = Size;
                    v1503.weld.Part1 = v1503;
                    v1503.weld.Part0 = v1500;
                    resizeMutationTemplate(v1503, Size, 3);
                    v1503.Parent = u25;
                end;
            end;
        end;
    end;
end;

return u1;
