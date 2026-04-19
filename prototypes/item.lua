local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")

data.extend({

{
    type = "item",
    name = "planetaris-red-dye",
    icon = "__planetaris-dyes__/graphics/icons/red-dye.png",
    fuel_value = "2MJ",
    fuel_category = "chemical",
    subgroup = "dyes",
    order = "a",
    inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 100,
    weight = 2 * kg
  },
  {
    type = "item",
    name = "planetaris-blue-dye",
    icon = "__planetaris-dyes__/graphics/icons/blue-dye.png",
    fuel_value = "2MJ",
    fuel_category = "chemical",
    subgroup = "dyes",
    order = "b",
    inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 100,
    weight = 2 * kg
  },
  {
    type = "item",
    name = "planetaris-green-dye",
    icon = "__planetaris-dyes__/graphics/icons/green-dye.png",
    fuel_value = "2MJ",
    fuel_category = "chemical",
    subgroup = "dyes",
    order = "c",
    inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 100,
    weight = 2 * kg
  },
})

if settings.startup["dye-secondary-color"].value == true then
  data.extend({
  {
    type = "item",
    name = "planetaris-cyan-dye",
    icon = "__planetaris-dyes__/graphics/icons/cyan-dye.png",
    fuel_value = "2MJ",
    fuel_category = "chemical",
    subgroup = "dyes",
    order = "d",
    inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 100,
    weight = 2 * kg
  },
  {
    type = "item",
    name = "planetaris-magenta-dye",
    icon = "__planetaris-dyes__/graphics/icons/magenta-dye.png",
    fuel_value = "2MJ",
    fuel_category = "chemical",
    subgroup = "dyes",
    order = "e",
    inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 100,
    weight = 2 * kg
  },
  {
    type = "item",
    name = "planetaris-yellow-dye",
    icon = "__planetaris-dyes__/graphics/icons/yellow-dye.png",
    fuel_value = "2MJ",
    fuel_category = "chemical",
    subgroup = "dyes",
    order = "f",
    inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 100,
    weight = 2 * kg
  },
})
end

  -- Concrete
if settings.startup["dye-enable-refined-concrete"].value == true then
    data.extend({
      {
        type = "item",
        name = "planetaris-red-refined-concrete",
        icon = "__planetaris-dyes__/graphics/icons/red-refined-concrete.png",
        subgroup = "terrain-dyed",
        order = "a-d",
        inventory_move_sound = item_sounds.brick_inventory_move,
        pick_sound = item_sounds.brick_inventory_pickup,
        drop_sound = item_sounds.brick_inventory_move,
        stack_size = 100,
        place_as_tile =
        {
          result = "red-refined-concrete",
          condition_size = 1,
          condition = {layers={water_tile=true}}
        }
      },
      {
        type = "item",
        name = "planetaris-blue-refined-concrete",
        icon = "__planetaris-dyes__/graphics/icons/blue-refined-concrete.png",
        subgroup = "terrain-dyed",
        order = "b-d",
        inventory_move_sound = item_sounds.brick_inventory_move,
        pick_sound = item_sounds.brick_inventory_pickup,
        drop_sound = item_sounds.brick_inventory_move,
        stack_size = 100,
        place_as_tile =
        {
          result = "blue-refined-concrete",
          condition_size = 1,
          condition = {layers={water_tile=true}}
        }
      },
      {
        type = "item",
        name = "planetaris-green-refined-concrete",
        icon = "__planetaris-dyes__/graphics/icons/green-refined-concrete.png",
        subgroup = "terrain-dyed",
        order = "c-d",
        inventory_move_sound = item_sounds.brick_inventory_move,
        pick_sound = item_sounds.brick_inventory_pickup,
        drop_sound = item_sounds.brick_inventory_move,
        stack_size = 100,
        place_as_tile =
        {
          result = "green-refined-concrete",
          condition_size = 1,
          condition = {layers={water_tile=true}}
        }
      },
    })

  if settings.startup["dye-secondary-color"].value == true then
    data.extend({
      {
        type = "item",
        name = "planetaris-cyan-refined-concrete",
        icon = "__planetaris-dyes__/graphics/icons/cyan-refined-concrete.png",
        subgroup = "terrain-dyed",
        order = "d-d",
        inventory_move_sound = item_sounds.brick_inventory_move,
        pick_sound = item_sounds.brick_inventory_pickup,
        drop_sound = item_sounds.brick_inventory_move,
        stack_size = 100,
        place_as_tile =
        {
          result = "cyan-refined-concrete",
          condition_size = 1,
          condition = {layers={water_tile=true}}
        }
      },
      {
        type = "item",
        name = "planetaris-magenta-refined-concrete",
        icon = "__planetaris-dyes__/graphics/icons/magenta-refined-concrete.png",
        subgroup = "terrain-dyed",
        order = "e-d",
        inventory_move_sound = item_sounds.brick_inventory_move,
        pick_sound = item_sounds.brick_inventory_pickup,
        drop_sound = item_sounds.brick_inventory_move,
        stack_size = 100,
        place_as_tile =
        {
          result = "purple-refined-concrete",
          condition_size = 1,
          condition = {layers={water_tile=true}}
        }
      },
      {
        type = "item",
        name = "planetaris-yellow-refined-concrete",
        icon = "__planetaris-dyes__/graphics/icons/yellow-refined-concrete.png",
        subgroup = "terrain-dyed",
        order = "f-d",
        inventory_move_sound = item_sounds.brick_inventory_move,
        pick_sound = item_sounds.brick_inventory_pickup,
        drop_sound = item_sounds.brick_inventory_move,
        stack_size = 100,
        place_as_tile =
        {
          result = "yellow-refined-concrete",
          condition_size = 1,
          condition = {layers={water_tile=true}}
        }
      },
      {
        type = "item",
        name = "planetaris-orange-refined-concrete",
        icon = "__planetaris-dyes__/graphics/icons/orange-refined-concrete.png",
        subgroup = "terrain-dyed",
        order = "g-d",
        inventory_move_sound = item_sounds.brick_inventory_move,
        pick_sound = item_sounds.brick_inventory_pickup,
        drop_sound = item_sounds.brick_inventory_move,
        stack_size = 100,
        place_as_tile =
        {
          result = "orange-refined-concrete",
          condition_size = 1,
          condition = {layers={water_tile=true}}
        }
      },
      {
        type = "item",
        name = "planetaris-acid-refined-concrete",
        icon = "__planetaris-dyes__/graphics/icons/acid-refined-concrete.png",
        subgroup = "terrain-dyed",
        order = "h-d",
        inventory_move_sound = item_sounds.brick_inventory_move,
        pick_sound = item_sounds.brick_inventory_pickup,
        drop_sound = item_sounds.brick_inventory_move,
        stack_size = 100,
        place_as_tile =
        {
          result = "acid-refined-concrete",
          condition_size = 1,
          condition = {layers={water_tile=true}}
        }
      },
      {
        type = "item",
        name = "planetaris-pink-refined-concrete",
        icon = "__planetaris-dyes__/graphics/icons/pink-refined-concrete.png",
        subgroup = "terrain-dyed",
        order = "i-d",
        inventory_move_sound = item_sounds.brick_inventory_move,
        pick_sound = item_sounds.brick_inventory_pickup,
        drop_sound = item_sounds.brick_inventory_move,
        stack_size = 100,
        place_as_tile =
        {
          result = "pink-refined-concrete",
          condition_size = 1,
          condition = {layers={water_tile=true}}
        }
      },
      {
        type = "item",
        name = "planetaris-black-refined-concrete",
        icon = "__planetaris-dyes__/graphics/icons/black-refined-concrete.png",
        subgroup = "terrain-dyed",
        order = "j-d",
        inventory_move_sound = item_sounds.brick_inventory_move,
        pick_sound = item_sounds.brick_inventory_pickup,
        drop_sound = item_sounds.brick_inventory_move,
        stack_size = 100,
        place_as_tile =
        {
          result = "black-refined-concrete",
          condition_size = 1,
          condition = {layers={water_tile=true}}
        }
      },
      {
        type = "item",
        name = "planetaris-brown-refined-concrete",
        icon = "__planetaris-dyes__/graphics/icons/brown-refined-concrete.png",
        subgroup = "terrain-dyed",
        order = "k-d",
        inventory_move_sound = item_sounds.brick_inventory_move,
        pick_sound = item_sounds.brick_inventory_pickup,
        drop_sound = item_sounds.brick_inventory_move,
        stack_size = 100,
        place_as_tile =
        {
          result = "brown-refined-concrete",
          condition_size = 1,
          condition = {layers={water_tile=true}}
        }
      },
    })
  end
end