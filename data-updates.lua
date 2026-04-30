PlanetarisLib = require ("PlanetarisLib")
require ("compat.space-age")
require ("compat.tellus")

-- Add pipe connections

local base_pipe_categories = {"pipe-red", "pipe-blue", "pipe-green", "pipe-yellow", "pipe-cyan", "pipe-magenta"}
local pipe_categories = {"pipe-red", "pipe-blue", "pipe-green", "pipe-yellow", "pipe-cyan", "pipe-magenta"}

if mods["Krastorio2-spaced-out"] then
    table.insert(pipe_categories, "kr-steel-pipe")
end

local function has_value(tbl, val)
    for _, v in pairs(tbl) do
        if v == val then return true end
    end
    return false
end

local function patch_fluid_connections(entity)
    local all_fluid_boxes = {}

    -- collect all possible fluid box fields
    for _, key in pairs({"fluid_box", "input_fluid_box", "output_fluid_box", "fuel_fluid_box", "oxidizer_fluid_box"}) do
        if entity[key] then
            table.insert(all_fluid_boxes, entity[key])
        end
    end

    -- also collect fluid_boxes array (assembling machines etc)
    if entity.fluid_boxes then
        for _, fb in pairs(entity.fluid_boxes) do
            table.insert(all_fluid_boxes, fb)
        end
    end

    -- energy source fluid box
    if entity.energy_source and entity.energy_source.type == "fluid" then
        table.insert(all_fluid_boxes, entity.energy_source.fluid_box)
    end

    for _, fb in pairs(all_fluid_boxes) do
        if fb.pipe_connections then
            for _, connection in pairs(fb.pipe_connections) do
                if connection.connection_type == nil or connection.connection_type == "normal" then

                    if connection.connection_category == nil then
                        connection.connection_category = {"default"}
                    elseif type(connection.connection_category) == "string" then
                        connection.connection_category = {connection.connection_category}
                    end

                    if has_value(connection.connection_category, "default") then
                        for _, cat in pairs(pipe_categories) do
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

local function patch_pipe_fluid_connections(entity)
    local all_fluid_boxes = {}

    -- collect all possible fluid box fields
    for _, key in pairs({"fluid_box", "input_fluid_box", "output_fluid_box", "fuel_fluid_box", "oxidizer_fluid_box"}) do
        if entity[key] then
            table.insert(all_fluid_boxes, entity[key])
        end
    end

    -- also collect fluid_boxes array (assembling machines etc)
    if entity.fluid_boxes then
        for _, fb in pairs(entity.fluid_boxes) do
            table.insert(all_fluid_boxes, fb)
        end
    end

    -- energy source fluid box
    if entity.energy_source and entity.energy_source.type == "fluid" then
        table.insert(all_fluid_boxes, entity.energy_source.fluid_box)
    end

    for _, fb in pairs(all_fluid_boxes) do
        if fb.pipe_connections then
            for _, connection in pairs(fb.pipe_connections) do
                if connection.connection_type == nil or connection.connection_type == "normal" then

                    if connection.connection_category == nil then
                        connection.connection_category = {"default"}
                    elseif type(connection.connection_category) == "string" then
                        connection.connection_category = {connection.connection_category}
                    end

                    if has_value(connection.connection_category, "default") then
                        for _, cat in pairs(base_pipe_categories) do
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
    "infinity-pipe",
    "pipe-to-ground",
    "storage-tank",
    "pump",
    "furnace",
    "offshore-pump",
    "assembling-machine",
    "furnace",
    "mining-drill",
    "boiler",
    "generator",
    "reactor",
    "thruster",
    "valve",
    "heat-exchanger",
    "fusion-generator",
    "fluid-turret",
}

local pipe_types = {
    "pipe",
    "pipe-to-ground",
}

local pipe_names = {
    ["pipe"] = true,
    --["pipe-to-ground"] = true,
}


for _, entity_type in pairs(entity_types) do
    for _, entity in pairs(data.raw[entity_type] or {}) do
        patch_fluid_connections(entity)
    end
end

-- Exlude other pipes

for _, entity_type in pairs(pipe_types) do
    for _, entity in pairs(data.raw[entity_type] or {}) do
        if pipe_names[entity.name] == true then
            patch_pipe_fluid_connections(entity)
        end
    end
end