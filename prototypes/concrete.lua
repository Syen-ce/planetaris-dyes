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

local function make_concrete(color, order, color_code)
return
data.extend({
  {
    type = "tile",
    name = "planetaris-"..color.."-concrete",
    order = "a[artificial]-b[concrete]-a-"..order,
    subgroup = "artificial-tiles-dyed",
    needs_correction = false,
    next_direction = "planetaris-"..color.."-concrete",
    transition_merges_with_tile = "concrete",
    minable = {mining_time = 0.1, result = "planetaris-"..color.."-concrete"},
    mined_sound = sounds.deconstruct_bricks(0.8),
    collision_mask = tile_collision_masks.ground(),
    walking_speed_modifier = 1.4,
    layer = 13,
    layer_group = "ground-artificial",
    transition_overlay_layer_offset = 2, -- need to render border overlay on top of hazard-concrete
    decorative_removal_probability = 0.25,
    placeable_by = {item = "planetaris-"..color.."-concrete", count = 1},
    variants =
    {
      transition =
      {
        overlay_layout =
        {
          inner_corner =
          {
            spritesheet = "__planetaris-dyes__/graphics/terrain/concrete/"..color.."/concrete-inner-corner.png",
            count = 16,
            scale = 0.5
          },
          outer_corner =
          {
            spritesheet = "__planetaris-dyes__/graphics/terrain/concrete/"..color.."/concrete-outer-corner.png",
            count = 8,
            scale = 0.5
          },
          side =
          {
            spritesheet = "__planetaris-dyes__/graphics/terrain/concrete/"..color.."/concrete-side.png",
            count = 16,
            scale = 0.5
          },
          u_transition =
          {
            spritesheet = "__planetaris-dyes__/graphics/terrain/concrete/"..color.."/concrete-u.png",
            count = 8,
            scale = 0.5
          },
          o_transition =
          {
            spritesheet = "__planetaris-dyes__/graphics/terrain/concrete/"..color.."/concrete-o.png",
            count = 4,
            scale = 0.5
          }
        },
        mask_layout =
        {
          inner_corner =
          {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-inner-corner-mask.png",
            count = 16,
            scale = 0.5
          },
          outer_corner =
          {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-outer-corner-mask.png",
            count = 8,
            scale = 0.5
          },
          side =
          {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-side-mask.png",
            count = 16,
            scale = 0.5
          },
          u_transition =
          {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-u-mask.png",
            count = 8,
            scale = 0.5
          },
          o_transition =
          {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-o-mask.png",
            count = 4,
            scale = 0.5
          }
        }
      },

      material_background =
      {
        picture = "__planetaris-dyes__/graphics/terrain/concrete/"..color.."/concrete.png",
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
    name = "planetaris-"..color.."-concrete",
    icon = "__planetaris-dyes__/graphics/icons/"..color.."-concrete.png",
    subgroup = "terrain-dyed",
    order = order.."-b",
    inventory_move_sound = item_sounds.concrete_inventory_move,
    pick_sound = item_sounds.concrete_inventory_pickup,
    drop_sound = item_sounds.concrete_inventory_move,
    stack_size = 100,
    weight = 10*kg,
    place_as_tile =
    {
      result = "planetaris-"..color.."-concrete",
      condition_size = 1,
      condition = {layers={water_tile=true}}
    },
  },
})
end

if settings.startup["dye-enable-concrete"].value == true then

      make_concrete("red",   "a", {176, 41, 39}) -- originial color {176, 142, 39}
      make_concrete("blue",  "b", {39, 53, 176})
      make_concrete("green", "c", {39, 176, 53})

    if settings.startup["dye-secondary-color"].value == true then

      make_concrete("cyan",    "d", {39, 171, 176})
      make_concrete("magenta", "e", {176, 39, 146})
      make_concrete("yellow",  "f", {173, 155, 17})

    end

end