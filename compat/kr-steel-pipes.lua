if not mods["k2-steel-pipes"] then return end

data.raw["pipe"]["kr-steel-pipe"].fluid_box.pipe_connections = {
        { direction = defines.direction.north, position = { 0, 0 }, connection_category = "kr-steel-pipe" },
        { direction = defines.direction.east, position = { 0, 0 }, connection_category = "kr-steel-pipe" },
        { direction = defines.direction.south, position = { 0, 0 }, connection_category = "kr-steel-pipe" },
        { direction = defines.direction.west, position = { 0, 0 }, connection_category = "kr-steel-pipe" },
      }


data.raw["pipe-to-ground"]["kr-steel-pipe-to-ground"].fluid_box.pipe_connections = {
        {
          flow_direction = "input-output",
          direction = defines.direction.north,
          position = { 0, 0 },
          connection_category = "kr-steel-pipe",
        },
        {
          flow_direction = "input-output",
          direction = defines.direction.south,
          position = { 0, 0 },
          connection_type = "underground",
          max_underground_distance = 30,
          connection_category = "kr-steel-pipe",
        },
      }