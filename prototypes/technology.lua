local dyed_entities ={
    "pipe",
    "stone-wall",
    "stone-brick",
    "concrete",
    "refined-concrete",
    "hazard-concrete",
    "refined-hazard-concrete",
}

local function add_dye_tech(color, tech)
    for _, dyed_e in pairs(dyed_entities) do
        local dyed_recipe= "planetaris-"..color.."-"..dyed_e
        if data.raw.recipe[dyed_recipe] then
            table.insert(data.raw.technology[tech].effects, {
                type = "unlock-recipe",
                recipe = dyed_recipe
            })
        end
    end
end

data.extend({
    {
        type = "technology",
        name = "planetaris-primary-dyes",
        icon = "__planetaris-dyes__/graphics/technology/primary-dyes.png",
        icon_size = 256,
        essential = false,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "planetaris-red-dye"
            },
            {
                type = "unlock-recipe",
                recipe = "planetaris-blue-dye"
            },
            {
                type = "unlock-recipe",
                recipe = "planetaris-green-dye"
            },
        },
        prerequisites = {"chemical-science-pack"},
        unit =
        {
            count = 800,
            ingredients =
            {
                {"automation-science-pack",      1},
                {"logistic-science-pack",        1},
                {"chemical-science-pack",        1},
            },
            time = 60
        },
    },
})

add_dye_tech("red", "planetaris-primary-dyes")
add_dye_tech("blue", "planetaris-primary-dyes")
add_dye_tech("green", "planetaris-primary-dyes")

if settings.startup["dye-secondary-color"].value == true then
data.extend({
    {
        type = "technology",
        name = "planetaris-secondary-dyes",
        icon = "__planetaris-dyes__/graphics/technology/secondary-dyes.png",
        icon_size = 256,
        essential = false,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "planetaris-cyan-dye"
            },
            {
                type = "unlock-recipe",
                recipe = "planetaris-magenta-dye"
            },
            {
                type = "unlock-recipe",
                recipe = "planetaris-yellow-dye"
            },
        },
        prerequisites = {"utility-science-pack", "planetaris-primary-dyes"},
        unit =
        {
            count = 800,
            ingredients =
            {
                {"automation-science-pack",      1},
                {"logistic-science-pack",        1},
                {"chemical-science-pack",        1},
                {"utility-science-pack",         1},
            },
            time = 60
        },
    },
})

if settings.startup["dye-enable-refined-concrete"].value == true then
    PlanetarisLib.add_tech_effect("planetaris-secondary-dyes", {type = "unlock-recipe", recipe = "planetaris-brown-refined-concrete"})
    PlanetarisLib.add_tech_effect("planetaris-secondary-dyes", {type = "unlock-recipe", recipe = "planetaris-orange-refined-concrete"})
    PlanetarisLib.add_tech_effect("planetaris-secondary-dyes", {type = "unlock-recipe", recipe = "planetaris-acid-refined-concrete"})
    PlanetarisLib.add_tech_effect("planetaris-secondary-dyes", {type = "unlock-recipe", recipe = "planetaris-pink-refined-concrete"})
    PlanetarisLib.add_tech_effect("planetaris-secondary-dyes", {type = "unlock-recipe", recipe = "planetaris-black-refined-concrete"})
end

add_dye_tech("cyan", "planetaris-secondary-dyes")
add_dye_tech("magenta", "planetaris-secondary-dyes")
add_dye_tech("yellow", "planetaris-secondary-dyes")

end