local sounds = require("__base__/prototypes/entity/sounds")
local tile_sounds = require("__base__/prototypes/tile/tile-sounds")
local tile_trigger_effects = require("__base__/prototypes/tile/tile-trigger-effects")
local tile_pollution = require("__base__/prototypes/tile/tile-pollution-values")
local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")

local tile_graphics = require("__base__/prototypes/tile/tile-graphics")
local tile_spritesheet_layout = tile_graphics.tile_spritesheet_layout

local stone_path_vehicle_speed_modifier = 1.1

-- ~~~STONE_STONE_PATH

local stone_path_transitions =
{
  {
    to_tiles = water_tile_type_names,
    transition_group = water_transition_group_id,

    spritesheet = "__base__/graphics/terrain/water-transitions/stone-path.png",
    layout = tile_spritesheet_layout.transition_8_8_8_4_4,
    background_enabled = false,
    effect_map_layout =
    {
      spritesheet = "__base__/graphics/terrain/effect-maps/water-stone-mask.png",
      inner_corner_count = 1,
      outer_corner_count = 1,
      side_count = 1,
      u_transition_count = 1,
      o_transition_count = 1
    }
  },
  stone_path_to_out_of_map_transition
}

local stone_path_transitions_between_transitions =
{
  {
    transition_group1 = default_transition_group_id,
    transition_group2 = water_transition_group_id,

    spritesheet = "__base__/graphics/terrain/water-transitions/stone-path-transitions.png",
    layout = tile_spritesheet_layout.transition_3_3_3_1_0,
    background_enabled = false,
    effect_map_layout =
    {
      spritesheet = "__base__/graphics/terrain/effect-maps/water-stone-to-land-mask.png",
      o_transition_count = 0
    }
  },
  {
    transition_group1 = default_transition_group_id,
    transition_group2 = out_of_map_transition_group_id,

    background_layer_offset = 1,
    background_layer_group = "zero",
    offset_background_layer_by_tile_layer = true,

    spritesheet = "__base__/graphics/terrain/out-of-map-transition/stone-path-out-of-map-transition-b.png",
    layout = tile_spritesheet_layout.transition_3_3_3_1_0,
    mask_enabled = false
  },
  {
    transition_group1 = water_transition_group_id,
    transition_group2 = out_of_map_transition_group_id,

    background_layer_offset = 1,
    background_layer_group = "zero",
    offset_background_layer_by_tile_layer = true,

    spritesheet = "__base__/graphics/terrain/out-of-map-transition/stone-path-shore-out-of-map-transition.png",
    layout = tile_spritesheet_layout.transition_3_3_3_1_0,
    mask_enabled = false,
    effect_map_layout =
    {
      spritesheet = "__base__/graphics/terrain/effect-maps/water-stone-to-out-of-map-mask.png",
      u_transition_count = 0,
      o_transition_count = 0
    }
  }
}

local stone_path_to_out_of_map_transition =
{
  to_tiles = out_of_map_tile_type_names,
  transition_group = out_of_map_transition_group_id,

  background_layer_offset = 1,
  background_layer_group = "zero",
  offset_background_layer_by_tile_layer = true,

  spritesheet = "__base__/graphics/terrain/out-of-map-transition/stone-path-out-of-map-transition.png",
  layout = tile_spritesheet_layout.transition_4_4_8_1_1,
  mask_enabled = false
}



local function make_stone_path(color, order, color_code)
    return
data.extend({
{
    type = "tile",
    name = "planetaris-"..color.."-stone-path",
    order = "a[artificial]-a[refined]-"..order,
    subgroup = "artificial-tiles-dyed",
    needs_correction = false,
    minable = {mining_time = 0.1, result = "planetaris-"..color.."-stone-brick"},
    transition_merges_with_tile = "stone-path",
    mined_sound = sounds.deconstruct_bricks(0.8),
    collision_mask = tile_collision_masks.ground(),
    walking_speed_modifier = 1.3,
    layer = 11,
    layer_group = "ground-artificial",
    decorative_removal_probability = 0.15,
    variants = {
      main =
      {
        {
          picture = "__planetaris-dyes__/graphics/terrain/stone-path/stone-path-"..color.."/stone-path-1.png",
          count = 16,
          size = 1,
          scale = 0.5
        },
        {
          picture = "__planetaris-dyes__/graphics/terrain/stone-path/stone-path-"..color.."/stone-path-2.png",
          count = 16,
          size = 2,
          probability = 0.39,
          scale = 0.5
        },
        {
          picture = "__planetaris-dyes__/graphics/terrain/stone-path/stone-path-"..color.."/stone-path-4.png",
          count = 16,
          size = 4,
          probability = 1,
          scale = 0.5
        }
      },
      transition =
      {
        overlay_layout =
        {
          inner_corner =
          {
            spritesheet = "__planetaris-dyes__/graphics/terrain/stone-path/stone-path-"..color.."/stone-path-inner-corner.png",
            count = 16,
            tile_height = 2,
            scale = 0.5
          },
          outer_corner =
          {
            spritesheet = "__planetaris-dyes__/graphics/terrain/stone-path/stone-path-"..color.."/stone-path-outer-corner.png",
            count = 8,
            tile_height = 2,
            scale = 0.5
          },
          side =
          {
            spritesheet = "__planetaris-dyes__/graphics/terrain/stone-path/stone-path-"..color.."/stone-path-side.png",
            count = 16,
            tile_height = 2,
            scale = 0.5
          },
          u_transition =
          {
            spritesheet = "__planetaris-dyes__/graphics/terrain/stone-path/stone-path-"..color.."/stone-path-u.png",
            count = 8,
            tile_height = 2,
            scale = 0.5
          },
          o_transition =
          {
            spritesheet = "__planetaris-dyes__/graphics/terrain/stone-path/stone-path-"..color.."/stone-path-o.png",
            count = 4,
            scale = 0.5
          }
        },
      }
    },
    transitions = stone_path_transitions,
    transitions_between_transitions = stone_path_transitions_between_transitions,

    walking_sound = tile_sounds.walking.concrete,
    driving_sound = tile_sounds.driving.stone,
    build_sound = tile_sounds.building.concrete,
    map_color= color_code,
    scorch_mark_color = {r = 0.373, g = 0.307, b = 0.243, a = 1.000},
    vehicle_friction_modifier = stone_path_vehicle_speed_modifier,

    trigger_effect = tile_trigger_effects.stone_path_trigger_effect()
  },
  {
    type = "item",
    name = "planetaris-"..color.."-stone-brick",
    icon = "__planetaris-dyes__/graphics/icons/"..color.."-stone-brick.png",
    subgroup = "terrain-dyed",
    order = order.."-a",
    inventory_move_sound = item_sounds.brick_inventory_move,
    pick_sound = item_sounds.brick_inventory_pickup,
    drop_sound = item_sounds.brick_inventory_move,
    stack_size = 100,
    place_as_tile =
    {
      result = "planetaris-"..color.."-stone-path",
      condition_size = 1,
      condition = {layers={water_tile=true}}
    }
  },
})
end





if settings.startup["dye-enable-stone-path"].value == true then

      make_stone_path("red",   "a", {86, 74, 74}) -- originial color {86, 82, 74}
      make_stone_path("blue",  "b", {74, 75, 86})
      make_stone_path("green", "c", {74, 86, 74})

    if settings.startup["dye-secondary-color"].value == true then

      make_stone_path("cyan",    "d", {74, 86, 86})
      make_stone_path("magenta", "e", {83, 74, 86})
      make_stone_path("yellow",  "f", {86, 84, 74})

    end
end