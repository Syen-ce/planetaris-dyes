if mods["space-age"] and not mods["planetaris-tellus"] then
    data.extend({
        {
        type = "recipe",
        name = "planetaris-red-dye",
        category = "organic",
        surface_conditions =
        {
            {
            property = "pressure",
            min = 2000,
            max = 2000,
            },
            {
            property = "gravity",
            min = 20,
            max = 20,
            },
            {
            property = "magnetic-field",
            min = 25,
            max = 25,
            }
        },
        enabled = false,
        allow_productivity = true,
        energy_required = 4,
        ingredients =
        {
        {type = "item", name = "nutrients", amount = 10},
        {type = "fluid", name = "water", amount = 20},
        {type = "item", name = "copper-ore", amount = 1},
        },
        results = {{type="item", name="planetaris-red-dye", amount=10}},
        crafting_machine_tint =
        {
        primary = {r = 255, g = 0, b = 0, a = 1.000},
        secondary = {r = 200, g = 0, b = 0, a = 1.000},
        }
    },
    {
        type = "recipe",
        name = "planetaris-blue-dye",
        category = "organic",
        surface_conditions =
        {
            {
            property = "pressure",
            min = 2000,
            max = 2000,
            },
            {
            property = "gravity",
            min = 20,
            max = 20,
            },
            {
            property = "magnetic-field",
            min = 25,
            max = 25,
            }
        },
        enabled = false,
        allow_productivity = true,
        energy_required = 4,
        ingredients =
        {
        {type = "item", name = "nutrients", amount = 10},
        {type = "fluid", name = "water", amount = 20},
        {type = "item", name = "iron-ore", amount = 1},
        },
        results = {{type="item", name="planetaris-blue-dye", amount=10}},
        crafting_machine_tint =
        {
        primary = {r = 0, g = 0, b = 255, a = 1.000},
        secondary = {r = 0, g = 0, b = 200, a = 1.000},
        }
    },
    {
        type = "recipe",
        name = "planetaris-green-dye",
        category = "organic",
        surface_conditions =
        {
            {
            property = "pressure",
            min = 2000,
            max = 2000,
            },
            {
            property = "gravity",
            min = 20,
            max = 20,
            },
            {
            property = "magnetic-field",
            min = 25,
            max = 25,
            }
        },
        enabled = false,
        allow_productivity = true,
        energy_required = 4,
        ingredients =
        {
        {type = "item", name = "nutrients", amount = 10},
        {type = "fluid", name = "water", amount = 20},
        {type = "item", name = "jelly", amount = 1},
        },
        results = {{type="item", name="planetaris-green-dye", amount=10}},
        crafting_machine_tint =
        {
        primary = {r = 0, g = 255, b = 0, a = 1.000},
        secondary = {r = 0, g = 200, b = 0, a = 1.000},
        }
    },
    })

    if data.raw.technology["planetaris-primary-dyes"] then
        table.insert(data.raw.technology["planetaris-primary-dyes"].unit.ingredients, {"agricultural-science-pack", 1})
        table.insert(data.raw.technology["planetaris-primary-dyes"].prerequisites, "agricultural-science-pack")
    end

    if settings.startup["dye-secondary-color"].value == true then

    data.extend({
    {
        type = "recipe",
        name = "planetaris-cyan-dye",
        category = "organic",
        surface_conditions =
        {
            {
            property = "pressure",
            min = 2000,
            max = 2000,
            },
            {
            property = "gravity",
            min = 20,
            max = 20,
            },
            {
            property = "magnetic-field",
            min = 25,
            max = 25,
            }
        },
        enabled = false,
        allow_productivity = true,
        energy_required = 4,
        ingredients =
        {
        {type = "item", name = "planetaris-green-dye", amount = 5},
        {type = "item", name = "planetaris-blue-dye",  amount = 5},
        {type = "item", name = "iron-bacteria",        amount = 1},
        },
        results = {{type="item", name="planetaris-cyan-dye", amount=10}},
        crafting_machine_tint =
        {
        primary = {r = 0, g = 255, b = 255, a = 1.000},
        secondary = {r = 0, g = 200, b = 200, a = 1.000},
        }
    },
    {
        type = "recipe",
        name = "planetaris-magenta-dye",
        category = "organic",
        surface_conditions =
        {
            {
            property = "pressure",
            min = 2000,
            max = 2000,
            },
            {
            property = "gravity",
            min = 20,
            max = 20,
            },
            {
            property = "magnetic-field",
            min = 25,
            max = 25,
            }
        },
        enabled = false,
        allow_productivity = true,
        energy_required = 4,
        ingredients =
        {
        {type = "item",  name = "planetaris-red-dye",   amount = 5},
        {type = "item",  name = "planetaris-blue-dye",  amount = 5},
        {type = "fluid", name = "electrolyte",          amount = 5},
        },
        results = {{type="item", name="planetaris-magenta-dye", amount=10}},
        crafting_machine_tint =
        {
        primary = {r = 0, g = 255, b = 255, a = 1.000},
        secondary = {r = 0, g = 200, b = 200, a = 1.000},
        }
    },
    {
        type = "recipe",
        name = "planetaris-yellow-dye",
        category = "organic",
        surface_conditions =
        {
            {
            property = "pressure",
            min = 2000,
            max = 2000,
            },
            {
            property = "gravity",
            min = 20,
            max = 20,
            },
            {
            property = "magnetic-field",
            min = 25,
            max = 25,
            }
        },
        enabled = false,
        allow_productivity = true,
        energy_required = 4,
        ingredients =
        {
        {type = "item", name = "planetaris-green-dye", amount = 5},
        {type = "item", name = "planetaris-red-dye",   amount = 5},
        {type = "item", name = "sulfur",               amount = 10},
        },
        results = {{type="item", name="planetaris-yellow-dye", amount=10}},
        crafting_machine_tint =
        {
        primary = {r = 255, g = 255, b = 0, a = 1.000},
        secondary = {r = 200, g = 200, b = 0, a = 1.000},
        }
    },

    })

    if data.raw.technology["planetaris-secondary-dyes"] then
        table.insert(data.raw.technology["planetaris-secondary-dyes"].unit.ingredients, {"agricultural-science-pack", 1})
        table.insert(data.raw.technology["planetaris-secondary-dyes"].prerequisites, "agricultural-science-pack")
    end

    end    

    if settings.startup["disable-gleba-recipe-surface-conditions"] == true then
        PlanetarisLib.clear_recipe_surface_condition("planetaris-red-dye")
        PlanetarisLib.clear_recipe_surface_condition("planetaris-green-dye")
        PlanetarisLib.clear_recipe_surface_condition("planetaris-blue-dye")
        PlanetarisLib.clear_recipe_surface_condition("planetaris-magenta-dye")
        PlanetarisLib.clear_recipe_surface_condition("planetaris-cyan-dye")
        PlanetarisLib.clear_recipe_surface_condition("planetaris-yellow-dye")
    end

end

