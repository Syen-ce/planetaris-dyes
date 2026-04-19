require ("__base__.prototypes.entity.pipecovers")
require ("__base__.prototypes.entity.entity-util")

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local simulations = require("__base__.prototypes.factoriopedia-simulations")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")

--- @param i integer
local function make_visualization(i)
  return
  {
    filename = "__base__/graphics/entity/pipe/visualization.png",
    priority = "extra-high",
    x = i * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  }
end

--- @param i integer
local function make_disabled_visualization(i)
  return
  {
    filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
    priority = "extra-high",
    x = i * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  }
end

local function make_pipepictures(pipe_color)
  return
  {
    straight_vertical_single =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-straight-vertical-single.png",
      priority = "extra-high",
      width = 160,
      height = 160,
      scale = 0.5
    },
    straight_vertical =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-straight-vertical.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5
    },
    straight_vertical_window =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-straight-vertical-window.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5
    },
    straight_horizontal_window =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-straight-horizontal-window.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5
    },
    straight_horizontal =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-straight-horizontal.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5
    },
    corner_up_right =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-corner-up-right.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5
    },
    corner_up_left =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-corner-up-left.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5
    },
    corner_down_right =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-corner-down-right.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5
    },
    corner_down_left =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-corner-down-left.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5
    },
    t_up =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-t-up.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5
    },
    t_down =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-t-down.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5
    },
    t_right =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-t-right.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5
    },
    t_left =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-t-left.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5
    },
    cross =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-cross.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5
    },
    ending_up =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-ending-up.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5
    },
    ending_down =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-ending-down.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5
    },
    ending_right =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-ending-right.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5
    },
    ending_left =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-ending-left.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5
    },
    straight_vertical_single_visualization = make_visualization(0),
    straight_vertical_visualization = make_visualization(5),
    straight_vertical_window_visualization = make_visualization(5),
    straight_horizontal_window_visualization = make_visualization(10),
    straight_horizontal_visualization = make_visualization(10),
    corner_up_right_visualization = make_visualization(3),
    corner_up_left_visualization = make_visualization(9),
    corner_down_right_visualization = make_visualization(6),
    corner_down_left_visualization = make_visualization(12),
    t_up_visualization = make_visualization(11),
    t_down_visualization = make_visualization(14),
    t_right_visualization = make_visualization(7),
    t_left_visualization = make_visualization(13),
    cross_visualization = make_visualization(15),
    ending_up_visualization = make_visualization(1),
    ending_down_visualization = make_visualization(4),
    ending_right_visualization = make_visualization(2),
    ending_left_visualization = make_visualization(8),
    straight_vertical_single_disabled_visualization = make_disabled_visualization(0),
    straight_vertical_disabled_visualization = make_disabled_visualization(5),
    straight_vertical_window_disabled_visualization = make_disabled_visualization(5),
    straight_horizontal_window_disabled_visualization = make_disabled_visualization(10),
    straight_horizontal_disabled_visualization = make_disabled_visualization(10),
    corner_up_right_disabled_visualization = make_disabled_visualization(3),
    corner_up_left_disabled_visualization = make_disabled_visualization(9),
    corner_down_right_disabled_visualization = make_disabled_visualization(6),
    corner_down_left_disabled_visualization = make_disabled_visualization(12),
    t_up_disabled_visualization = make_disabled_visualization(11),
    t_down_disabled_visualization = make_disabled_visualization(14),
    t_right_disabled_visualization = make_disabled_visualization(7),
    t_left_disabled_visualization = make_disabled_visualization(13),
    cross_disabled_visualization = make_disabled_visualization(15),
    ending_up_disabled_visualization = make_disabled_visualization(1),
    ending_down_disabled_visualization = make_disabled_visualization(4),
    ending_right_disabled_visualization = make_disabled_visualization(2),
    ending_left_disabled_visualization = make_disabled_visualization(8),
    horizontal_window_background =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-horizontal-window-background.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5
    },
    vertical_window_background =
    {
      filename = "__planetaris-dyes__/graphics/entity/pipes/" ..pipe_color.."/pipe-vertical-window-background.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5
    },
    fluid_background =
    {
      filename = "__base__/graphics/entity/pipe/fluid-background.png",
      priority = "extra-high",
      width = 64,
      height = 40,
      scale = 0.5
    },
    low_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    middle_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    high_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    gas_flow =
    {
      filename = "__base__/graphics/entity/pipe/steam.png",
      priority = "extra-high",
      line_length = 10,
      width = 48,
      height = 30,
      frame_count = 60
    }
  }
end

local disabled_visualization = {
      north =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
        priority = "extra-high",
        x = 64,
        size = 64,
        scale = 0.5,
        flags = {"icon"}
      },
      south =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
        priority = "extra-high",
        x = 192,
        size = 64,
        scale = 0.5,
        flags = {"icon"}
      },
      west =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
        priority = "extra-high",
        x = 256,
        size = 64,
        scale = 0.5,
        flags = {"icon"}
      },
      east =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
        priority = "extra-high",
        x = 128,
        size = 64,
        scale = 0.5,
        flags = {"icon"}
      },
    }

local visualization =
    {
      north =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
        priority = "extra-high",
        x = 64,
        size = 64,
        scale = 0.5,
        flags = {"icon"}
      },
      south =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
        priority = "extra-high",
        x = 192,
        size = 64,
        scale = 0.5,
        flags = {"icon"}
      },
      west =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
        priority = "extra-high",
        x = 256,
        size = 64,
        scale = 0.5,
        flags = {"icon"}
      },
      east =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
        priority = "extra-high",
        x = 128,
        size = 64,
        scale = 0.5,
        flags = {"icon"}
      },
    }

  local function ground_pictures(color)
    return
    {
      north =
      {
        filename = "__planetaris-dyes__/graphics/entity/pipe-to-ground/pipe-to-ground-"..color.."/pipe-to-ground-up.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      },
      south =
      {
        filename = "__planetaris-dyes__/graphics/entity/pipe-to-ground/pipe-to-ground-"..color.."/pipe-to-ground-down.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      },
      west =
      {
        filename = "__planetaris-dyes__/graphics/entity/pipe-to-ground/pipe-to-ground-"..color.."/pipe-to-ground-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      },
      east =
      {
        filename = "__planetaris-dyes__/graphics/entity/pipe-to-ground/pipe-to-ground-"..color.."/pipe-to-ground-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    }
  end

local function make_pipe_and_underground(color, order)
  return
  data.extend({
      {
        type = "pipe",
        name = "planetaris-"..color.."-pipe",
        icon = "__planetaris-dyes__/graphics/icons/pipe-"..color..".png",
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "planetaris-"..color.."-pipe"},
        max_health = 100,
        corpse = "pipe-remnants",
        dying_explosion = "pipe-explosion",
        icon_draw_specification = {scale = 0.5},
        resistances =
        {
          {
            type = "fire",
            percent = 80
          },
          {
            type = "impact",
            percent = 30
          }
        },
        fast_replaceable_group = "pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box =
        {
          volume = 100,
          pipe_covers = pipecoverspictures(), -- in case a real pipe is connected to a ghost
          pipe_connections =
          {
            { direction = defines.direction.north, position = {0, 0}, connection_category = "pipe-"..color},
            { direction = defines.direction.east, position = {0, 0}, connection_category = "pipe-"..color},
            { direction = defines.direction.south, position = {0, 0}, connection_category = "pipe-"..color},
            { direction = defines.direction.west, position = {0, 0}, connection_category = "pipe-"..color},
          },
          hide_connection_info = true
        },
        impact_category = "metal",
        pictures = make_pipepictures("pipe-"..color),
        working_sound = sounds.pipe,
        open_sound = sounds.metal_small_open,
        close_sound = sounds.metal_small_close,

        horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
        vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
      },
      {
        type = "pipe-to-ground",
        name = "planetaris-"..color.."-pipe-to-ground",
        icon = "__planetaris-dyes__/graphics/icons/pipe-to-ground-"..color..".png",
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "planetaris-"..color.."-pipe-to-ground"},
        max_health = 150,
        corpse = "pipe-to-ground-remnants",
        dying_explosion = "pipe-to-ground-explosion",
        factoriopedia_simulation = simulations.factoriopedia_pipe_to_ground,
        icon_draw_specification = {scale = 0.5},
        resistances =
        {
          {
            type = "fire",
            percent = 80
          },
          {
            type = "impact",
            percent = 40
          }

        },
        fast_replaceable_group = "pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box =
        {
          volume = 100,
          pipe_covers = pipecoverspictures(),
          pipe_connections =
          {
            { direction = defines.direction.north, position = {0, 0}, connection_category = {"default", "pipe-"..color} },
            {
              connection_type = "underground",
              direction = defines.direction.south,
              position = {0, 0},
              max_underground_distance = 10,
              connection_category = "pipe-"..color,
            }
          },
          hide_connection_info = true
        },
        impact_category = "metal",
        working_sound = sounds.pipe,
        open_sound = sounds.metal_small_open,
        close_sound = sounds.metal_small_close,
        pictures = ground_pictures(color),
        visualization = visualization,
        disabled_visualization = disabled_visualization
      },
      {
        type = "item",
        name = "planetaris-"..color.."-pipe",
        localised_description = {"item-description.planetaris-dyed-pipe"},
        icon = "__planetaris-dyes__/graphics/icons/pipe-"..color..".png",
        subgroup = "pipe-dyed",
        order = "a[pipe]-"..order,
        inventory_move_sound = item_sounds.metal_small_inventory_move,
        pick_sound = item_sounds.metal_small_inventory_pickup,
        drop_sound = item_sounds.metal_small_inventory_move,
        place_result = "planetaris-"..color.."-pipe",
        stack_size = 100,
        weight = 5 * kg,
      },
      {
        type = "item",
        name = "planetaris-"..color.."-pipe-to-ground",
        icon = "__planetaris-dyes__/graphics/icons/pipe-to-ground-"..color..".png",
        subgroup = "pipe-dyed",
        order = "b[underground]-"..order,
        inventory_move_sound = item_sounds.metal_small_inventory_move,
        pick_sound = item_sounds.metal_small_inventory_pickup,
        drop_sound = item_sounds.metal_small_inventory_move,
        place_result = "planetaris-"..color.."-pipe-to-ground",
        stack_size = 50,
        weight = 50 * kg
      },
  })
end

----------------------------------------------------------------------------

if settings.startup["dye-enable-pipes"].value == true then

      make_pipe_and_underground("red",   "a")
      make_pipe_and_underground("blue",  "b")
      make_pipe_and_underground("green", "c")

    if settings.startup["dye-secondary-color"].value == true then

      make_pipe_and_underground("cyan",    "d")
      make_pipe_and_underground("magenta", "e")
      make_pipe_and_underground("yellow",  "f")

    end

end