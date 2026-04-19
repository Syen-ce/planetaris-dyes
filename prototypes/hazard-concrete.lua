local sounds = require("__base__/prototypes/entity/sounds")
local tile_sounds = require("__base__/prototypes/tile/tile-sounds")
local tile_trigger_effects = require("__base__/prototypes/tile/tile-trigger-effects")
local tile_pollution = require("__base__/prototypes/tile/tile-pollution-values")
local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")

local tile_graphics = require("__base__/prototypes/tile/tile-graphics")
local tile_spritesheet_layout = tile_graphics.tile_spritesheet_layout

local concrete_vehicle_speed_modifier = 0.8

local function make_hazard_concrete(color, order, color_code)
return
data.extend({
      {
    type = "tile",
    name = "planetaris-"..color.."-hazard-concrete-left",
    order = "a[artificial]-b[concrete]-b[hazard]-"..color,
    subgroup = "artificial-tiles-dyed",
    needs_correction = false,
    next_direction = "planetaris-"..color.."-hazard-concrete-right",
    transition_merges_with_tile = "concrete",
    minable = {mining_time = 0.1, result = "planetaris-"..color.."-hazard-concrete"},
    mined_sound = sounds.deconstruct_bricks(0.8),
    collision_mask = tile_collision_masks.ground(),
    walking_speed_modifier = 1.4,
    layer = 15,
    layer_group = "ground-artificial",
    decorative_removal_probability = 0.25,
    placeable_by = {item = "planetaris-"..color.."-hazard-concrete", count = 1},
    variants =
    {
      transition = tile_graphics.generic_texture_on_concrete_transition,

      material_background =
      {
        picture = "__planetaris-dyes__/graphics/terrain/hazard/"..color.."/hazard-concrete-left.png",
        count = 8,
        scale = 0.5
      }
    },
    walking_sound = tile_sounds.walking.concrete,
    driving_sound = tile_sounds.driving.concrete,
    build_sound = tile_sounds.building.concrete,
    map_color=color_code,
    scorch_mark_color = {r = 0.373, g = 0.307, b = 0.243, a = 1.000},
    vehicle_friction_modifier = concrete_vehicle_speed_modifier,

    trigger_effect = tile_trigger_effects.hazard_concrete_left_trigger_effect(),

  },
  {
    type = "tile",
    name = "planetaris-"..color.."-hazard-concrete-right",
    order = "a[artificial]-b[concrete]-b[hazard]-"..order,
    subgroup = "artificial-tiles-dyed",
    needs_correction = false,
    next_direction = "planetaris-"..color.."-hazard-concrete-left",
    transition_merges_with_tile = "concrete",
    minable = {mining_time = 0.1, result = "planetaris-"..color.."-hazard-concrete"},
    mined_sound = sounds.deconstruct_bricks(0.8),
    collision_mask = tile_collision_masks.ground(),
    walking_speed_modifier = 1.4,
    layer = 15,
    layer_group = "ground-artificial",
    decorative_removal_probability = 0.25,
    placeable_by = {item = "planetaris-"..color.."-hazard-concrete", count = 1},
    variants =
    {
      transition = tile_graphics.generic_texture_on_concrete_transition,

      material_background =
      {
        picture = "__planetaris-dyes__/graphics/terrain/hazard/"..color.."/hazard-concrete-right.png",
        count = 8,
        scale = 0.5
      }
    },
    walking_sound = tile_sounds.walking.concrete,
    driving_sound = tile_sounds.driving.concrete,
    build_sound = tile_sounds.building.concrete,
    map_color=color_code,
    scorch_mark_color = {r = 0.373, g = 0.307, b = 0.243, a = 1.000},
    vehicle_friction_modifier = concrete_vehicle_speed_modifier,

    trigger_effect = tile_trigger_effects.hazard_concrete_right_trigger_effect()
  },
  {
    type = "item",
    name = "planetaris-"..color.."-hazard-concrete",
    icon = "__planetaris-dyes__/graphics/icons/"..color.."-hazard-concrete.png",
    subgroup = "terrain-dyed",
    order = order.."-c",
    inventory_move_sound = item_sounds.concrete_inventory_move,
    pick_sound = item_sounds.concrete_inventory_pickup,
    drop_sound = item_sounds.concrete_inventory_move,
    stack_size = 100,
    weight = 10*kg,
    place_as_tile =
    {
      result = "planetaris-"..color.."-hazard-concrete-left",
      condition_size = 1,
      condition = {layers={water_tile=true}}
    },
  },
})
end

local function make_refined_hazard_concrete(color, order, color_code)
return
data.extend({
{
    type = "tile",
    name = "planetaris-"..color.."-refined-hazard-concrete-left",
    order = "a[artificial]-c[refined]-a[dyed]-"..order,
    subgroup = "artificial-tiles-dyed",
    needs_correction = false,
    next_direction = "planetaris-"..color.."-refined-hazard-concrete-right",
    transition_merges_with_tile = "refined-concrete",
    minable = {mining_time = 0.1, result = "planetaris-"..color.."-refined-hazard-concrete"},
    mined_sound = sounds.deconstruct_bricks(0.8),
    collision_mask = tile_collision_masks.ground(),
    walking_speed_modifier = 1.5,
    layer = 19,
    layer_group = "ground-artificial",
    decorative_removal_probability = 0.25,
    placeable_by = {item = "planetaris-"..color.."-refined-hazard-concrete", count = 1},
    variants =
    {
      transition = tile_graphics.generic_texture_on_concrete_transition,

      material_background =
      {
        picture = "__planetaris-dyes__/graphics/terrain/hazard/"..color.."/refined-hazard-concrete-left.png",
        count = 8,
        scale = 0.5
      }
    },
    walking_sound = tile_sounds.walking.refined_concrete,
    driving_sound = tile_sounds.driving.concrete,
    build_sound = tile_sounds.building.concrete,
    map_color=color_code,
    scorch_mark_color = {r = 0.373, g = 0.307, b = 0.243, a = 1.000},
    vehicle_friction_modifier = concrete_vehicle_speed_modifier,

    trigger_effect = tile_trigger_effects.hazard_concrete_left_trigger_effect()
  },
  {
    type = "tile",
    name = "planetaris-"..color.."-refined-hazard-concrete-right",
    order = "a[artificial]-c[refined]-b[hazard]-"..order,
    subgroup = "artificial-tiles-dyed",
    needs_correction = false,
    next_direction = "planetaris-"..color.."-refined-hazard-concrete-left",
    transition_merges_with_tile = "refined-concrete",
    minable = {mining_time = 0.1, result = "planetaris-"..color.."-refined-hazard-concrete"},
    mined_sound = sounds.deconstruct_bricks(0.8),
    collision_mask = tile_collision_masks.ground(),
    walking_speed_modifier = 1.5,
    layer = 19,
    layer_group = "ground-artificial",
    decorative_removal_probability = 0.25,
    placeable_by = {item = "planetaris-"..color.."-refined-hazard-concrete", count = 1},
    variants =
    {
      transition = tile_graphics.generic_texture_on_concrete_transition,

      material_background =
      {
        picture = "__planetaris-dyes__/graphics/terrain/hazard/"..color.."/refined-hazard-concrete-right.png",
        count = 8,
        scale = 0.5
      }
    },
    walking_sound = tile_sounds.walking.refined_concrete,
    driving_sound = tile_sounds.driving.concrete,
    build_sound = tile_sounds.building.concrete,
    map_color=color_code,
    scorch_mark_color = {r = 0.373, g = 0.307, b = 0.243, a = 1.000},
    vehicle_friction_modifier = concrete_vehicle_speed_modifier,

    trigger_effect = tile_trigger_effects.hazard_concrete_right_trigger_effect()
  },
  {
    type = "item",
    name = "planetaris-"..color.."-refined-hazard-concrete",
    icon = "__planetaris-dyes__/graphics/icons/"..color.."-refined-hazard-concrete.png",
    subgroup = "terrain-dyed",
    order = order.."-e",
    inventory_move_sound = item_sounds.concrete_inventory_move,
    pick_sound = item_sounds.concrete_inventory_pickup,
    drop_sound = item_sounds.concrete_inventory_move,
    stack_size = 100,
    weight = 10*kg,
    place_as_tile =
    {
      result = "planetaris-"..color.."-refined-hazard-concrete-left",
      condition_size = 1,
      condition = {layers={water_tile=true}}
    },
  },
})
end

if settings.startup["dye-enable-hazard-concrete"].value == true then

      make_hazard_concrete("red",   "a", {176, 41, 39}) -- originial color {176, 142, 39}
      make_hazard_concrete("blue",  "b", {39, 53, 176})
      make_hazard_concrete("green", "c", {39, 176, 53})

    if settings.startup["dye-secondary-color"].value == true then

      make_hazard_concrete("cyan",    "d", {39, 171, 176})
      make_hazard_concrete("magenta", "e", {176, 39, 146})
      make_hazard_concrete("yellow",  "f", {173, 155, 17})

    end

end

if settings.startup["dye-enable-refined-hazard-concrete"].value == true then

      make_refined_hazard_concrete("red",   "a", {176, 41, 39})
      make_refined_hazard_concrete("blue",  "b", {39, 53, 176})
      make_refined_hazard_concrete("green", "c", {39, 176, 53})

    if settings.startup["dye-secondary-color"].value == true then

      make_refined_hazard_concrete("cyan",    "d", {39, 171, 176})
      make_refined_hazard_concrete("magenta", "e", {176, 39, 146})
      make_refined_hazard_concrete("yellow",  "f", {173, 155, 17})

    end
end