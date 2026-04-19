data.extend({
    {
    type = "recipe",
    name = "planetaris-red-dye",
    category = "chemistry",
    enabled = false,
    allow_productivity = true,
    energy_required = 4,
    ingredients =
    {
      {type = "item", name = "wood", amount = 10},
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
    category = "chemistry",
    enabled = false,
    allow_productivity = true,
    energy_required = 4,
    ingredients =
    {
      {type = "item", name = "wood", amount = 10},
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
    category = "chemistry",
    enabled = false,
    allow_productivity = true,
    energy_required = 4,
    ingredients =
    {
      {type = "item", name = "wood", amount = 10},
      {type = "fluid", name = "water", amount = 20},
      {type = "fluid", name = "lubricant", amount = 1},
    },
    results = {{type="item", name="planetaris-green-dye", amount=10}},
    crafting_machine_tint =
    {
      primary = {r = 0, g = 255, b = 0, a = 1.000},
      secondary = {r = 0, g = 200, b = 0, a = 1.000},
    }
  },
})

if settings.startup["dye-secondary-color"].value == true then

data.extend({
  {
    type = "recipe",
    name = "planetaris-cyan-dye",
    category = "chemistry",
    enabled = false,
    allow_productivity = true,
    energy_required = 4,
    ingredients =
    {
      {type = "item", name = "planetaris-green-dye", amount = 5},
      {type = "item", name = "planetaris-blue-dye",  amount = 5},
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
    category = "chemistry",
    enabled = false,
    allow_productivity = true,
    energy_required = 4,
    ingredients =
    {
      {type = "item",  name = "planetaris-red-dye",   amount = 5},
      {type = "item",  name = "planetaris-blue-dye",  amount = 5},
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
    category = "chemistry",
    enabled = false,
    allow_productivity = true,
    energy_required = 4,
    ingredients =
    {
      {type = "item", name = "planetaris-green-dye", amount = 5},
      {type = "item", name = "planetaris-red-dye",   amount = 5},
    },
    results = {{type="item", name="planetaris-yellow-dye", amount=10}},
    crafting_machine_tint =
    {
      primary = {r = 255, g = 255, b = 0, a = 1.000},
      secondary = {r = 200, g = 200, b = 0, a = 1.000},
    }
  },

})

end

----------------------------------------------------------------------------------------------------
-------------------------------------------------- PIPES
----------------------------------------------------------------------------------------------------

local function make_pipe_recipe(color)
data.extend({
  {
    type = "recipe",
    name = "planetaris-"..color.."-pipe",
    category = "advanced-crafting",
    enabled = false,
    allow_productivity = false,
    energy_required = 4,
    ingredients =
    {
      {type = "item", name = "planetaris-"..color.."-dye", amount = 1},
      {type = "item", name = "pipe", amount = 10},
    },
    results = {{type="item", name="planetaris-"..color.."-pipe", amount=10}},
  },
  {
    type = "recipe",
    name = "planetaris-"..color.."-pipe-to-ground",
    enabled = false,
    allow_productivity = false,
    energy_required = 4,
    ingredients =
    {
      {type = "item", name = "planetaris-"..color.."-dye", amount = 1},
      {type = "item", name = "pipe-to-ground", amount = 10},
    },
    results = {{type="item", name="planetaris-"..color.."-pipe-to-ground", amount=10}},
  },
})
end

if settings.startup["dye-enable-pipes"].value == true then

        make_pipe_recipe("red")
        make_pipe_recipe("blue")
        make_pipe_recipe("green")

    if settings.startup["dye-secondary-color"].value == true then

        make_pipe_recipe("cyan")
        make_pipe_recipe("magenta")
        make_pipe_recipe("yellow")

    end
end

----------------------------------------------------------------------------------------------------
-------------------------------------------------- WALLS
----------------------------------------------------------------------------------------------------

local function make_wall_recipe(color)
data.extend({
  {
    type = "recipe",
    name = "planetaris-"..color.."-stone-wall",
    category = "advanced-crafting",
    enabled = false,
    allow_productivity = false,
    energy_required = 4,
    ingredients =
    {
      {type = "item", name = "planetaris-"..color.."-dye", amount = 1},
      {type = "item", name = "stone-wall", amount = 5},
    },
    results = {{type="item", name="planetaris-"..color.."-stone-wall", amount=10}},
  },
})
end

if settings.startup["dye-enable-wall"].value == true then

        make_wall_recipe("red")
        make_wall_recipe("blue")
        make_wall_recipe("green")

    if settings.startup["dye-secondary-color"].value == true then

        make_wall_recipe("cyan")
        make_wall_recipe("magenta")
        make_wall_recipe("yellow")

    end
end

----------------------------------------------------------------------------------------------------
-------------------------------------------------- STONE BRICKS
----------------------------------------------------------------------------------------------------

local function make_dyed_recipe(color, item, dye_amount, result_amount)
data.extend({
  {
    type = "recipe",
    name = "planetaris-"..color.."-"..item,
    category = "advanced-crafting",
    enabled = false,
    allow_productivity = false,
    energy_required = 4,
    ingredients =
    {
      {type = "item", name = "planetaris-"..color.."-dye", amount = dye_amount},
      {type = "item", name = item, amount = result_amount},
    },
    results = {{type="item", name="planetaris-"..color.."-"..item, amount=result_amount}},
  },
})
end

if settings.startup["dye-enable-wall"].value == true then

        make_dyed_recipe("red", "stone-brick", 1, 5)
        make_dyed_recipe("blue", "stone-brick", 1, 5)
        make_dyed_recipe("green", "stone-brick", 1, 5)

    if settings.startup["dye-secondary-color"].value == true then

        make_dyed_recipe("cyan", "stone-brick", 1, 5)
        make_dyed_recipe("magenta", "stone-brick", 1, 5)
        make_dyed_recipe("yellow", "stone-brick", 1, 5)

    end
end

----------------------------------------------------------------------------------------------------
-------------------------------------------------- CONCRETE
----------------------------------------------------------------------------------------------------

if settings.startup["dye-enable-concrete"].value == true then

        make_dyed_recipe("red", "concrete", 1, 10)
        make_dyed_recipe("blue", "concrete", 1, 10)
        make_dyed_recipe("green", "concrete", 1, 10)

    if settings.startup["dye-secondary-color"].value == true then

        make_dyed_recipe("cyan", "concrete", 1, 10)
        make_dyed_recipe("magenta", "concrete", 1, 10)
        make_dyed_recipe("yellow", "concrete", 1, 10)

    end
end

----------------------------------------------------------------------------------------------------
-------------------------------------------------- HAZARD CONCRETE
----------------------------------------------------------------------------------------------------

if settings.startup["dye-enable-hazard-concrete"].value == true then

        make_dyed_recipe("red", "hazard-concrete", 1, 10)
        make_dyed_recipe("blue", "hazard-concrete", 1, 10)
        make_dyed_recipe("green", "hazard-concrete", 1, 10)

    if settings.startup["dye-secondary-color"].value == true then

        make_dyed_recipe("cyan", "hazard-concrete", 1, 10)
        make_dyed_recipe("magenta", "hazard-concrete", 1, 10)
        make_dyed_recipe("yellow", "hazard-concrete", 1, 10)

    end
end

----------------------------------------------------------------------------------------------------
-------------------------------------------------- REFINED CONCRETE
----------------------------------------------------------------------------------------------------

if settings.startup["dye-enable-refined-concrete"].value == true then

        make_dyed_recipe("red", "refined-concrete", 1, 10)
        make_dyed_recipe("blue", "refined-concrete", 1, 10)
        make_dyed_recipe("green", "refined-concrete", 1, 10)

    if settings.startup["dye-secondary-color"].value == true then

        make_dyed_recipe("cyan", "refined-concrete", 1, 10)
        make_dyed_recipe("magenta", "refined-concrete", 1, 10)
        make_dyed_recipe("yellow", "refined-concrete", 1, 10)

        data.extend({
        {
          type = "recipe",
          name = "planetaris-orange-refined-concrete",
          category = "advanced-crafting",
          enabled = false,
          allow_productivity = false,
          energy_required = 4,
          ingredients =
          {
            {type = "item", name = "planetaris-yellow-dye", amount = 1},
            {type = "item", name = "planetaris-red-dye", amount = 1},
            {type = "item", name = "refined-concrete", amount = 10},
          },
          results = {{type="item", name="planetaris-orange-refined-concrete", amount=10}},
        },
        {
          type = "recipe",
          name = "planetaris-acid-refined-concrete",
          category = "advanced-crafting",
          enabled = false,
          allow_productivity = false,
          energy_required = 4,
          ingredients =
          {
            {type = "item", name = "planetaris-yellow-dye", amount = 1},
            {type = "item", name = "planetaris-green-dye", amount = 1},
            {type = "item", name = "refined-concrete", amount = 10},
          },
          results = {{type="item", name="planetaris-acid-refined-concrete", amount=10}},
        },
        {
          type = "recipe",
          name = "planetaris-pink-refined-concrete",
          category = "advanced-crafting",
          enabled = false,
          allow_productivity = false,
          energy_required = 4,
          ingredients =
          {
            {type = "item", name = "planetaris-magenta-dye", amount = 1},
            {type = "item", name = "planetaris-yellow-dye", amount = 1},
            {type = "item", name = "refined-concrete", amount = 10},
          },
          results = {{type="item", name="planetaris-pink-refined-concrete", amount=10}},
        },
        {
          type = "recipe",
          name = "planetaris-black-refined-concrete",
          category = "advanced-crafting",
          enabled = false,
          allow_productivity = false,
          energy_required = 4,
          ingredients =
          {
            {type = "item", name = "planetaris-red-dye", amount = 1},
            {type = "item", name = "planetaris-blue-dye", amount = 1},
            {type = "item", name = "planetaris-green-dye", amount = 1},
            {type = "item", name = "refined-concrete", amount = 10},
          },
          results = {{type="item", name="planetaris-black-refined-concrete", amount=10}},
        },
        {
          type = "recipe",
          name = "planetaris-brown-refined-concrete",
          category = "advanced-crafting",
          enabled = false,
          allow_productivity = false,
          energy_required = 4,
          ingredients =
          {
            {type = "item", name = "planetaris-red-dye", amount = 1},
            {type = "item", name = "planetaris-green-dye", amount = 1},
            {type = "item", name = "refined-concrete", amount = 10},
          },
          results = {{type="item", name="planetaris-brown-refined-concrete", amount=10}},
        },
      })


    end
end

----------------------------------------------------------------------------------------------------
-------------------------------------------------- HAZARD REFINED CONCRETE
----------------------------------------------------------------------------------------------------

if settings.startup["dye-enable-refined-hazard-concrete"].value == true then

        make_dyed_recipe("red", "refined-hazard-concrete", 1, 10)
        make_dyed_recipe("blue", "refined-hazard-concrete", 1, 10)
        make_dyed_recipe("green", "refined-hazard-concrete", 1, 10)

    if settings.startup["dye-secondary-color"].value == true then

        make_dyed_recipe("cyan", "refined-hazard-concrete", 1, 10)
        make_dyed_recipe("magenta", "refined-hazard-concrete", 1, 10)
        make_dyed_recipe("yellow", "refined-hazard-concrete", 1, 10)

    end
end
