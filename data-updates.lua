PlanetarisLib = require ("PlanetarisLib")
require ("compat.space-age")
require ("compat.tellus")

-- Add pipe connections

local function has_value(tbl, val)
    for _, v in pairs(tbl) do
        if v == val then return true end
    end
    return false
end

local function patch_fluid_connections(entity)
    local fluid_box = entity.fluid_box
    local fluid_boxes = entity.fluid_boxes or (fluid_box and {fluid_box}) or {}

    for _, fb in pairs(fluid_boxes) do
        if fb.pipe_connections then
            for _, connection in pairs(fb.pipe_connections) do
                if connection.connection_type == nil or connection.connection_type == "normal" then

                    if connection.connection_category == nil then
                        connection.connection_category = {"default"}
                    elseif type(connection.connection_category) == "string" then
                        connection.connection_category = {connection.connection_category}
                    end

                    if has_value(connection.connection_category, "default") then
                        for _, cat in pairs({"pipe-red", "pipe-blue", "pipe-green", "pipe-yellow", "pipe-cyan", "pipe-magenta"}) do
                            if not has_value(connection.connection_category, cat) then
                                table.insert(connection.connection_category, cat)
                            end
                        end
                    end
                end
            end
        end
    end
end

local entity_types = {
    "pipe",
    "infinity-pipe",
    "pipe-to-ground",
    "storage-tank",
    "pump",
    "offshore-pump",
    "assembling-machine",
    "furnace",
    "mining-drill",
    "boiler",
    "generator",
    "reactor",
    "heat-exchanger",
    "fluid-turret",
}


for _, entity_type in pairs(entity_types) do
    for _, entity in pairs(data.raw[entity_type] or {}) do
            patch_fluid_connections(entity)
    end
end