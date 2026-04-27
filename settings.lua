data.extend({
	{
		type = "bool-setting",
		name = "dye-secondary-color",
		setting_type = "startup",
		default_value = true,
		order = "a-b",
	},

	{
		type = "bool-setting",
		name = "dye-enable-pipes",
		setting_type = "startup",
		default_value = true,
		order = "b-a",
	},
    {
		type = "bool-setting",
		name = "dye-enable-wall",
		setting_type = "startup",
		default_value = true,
		order = "b-b",
	},
    {
		type = "bool-setting",
		name = "dye-enable-stone-path",
		setting_type = "startup",
		default_value = true,
		order = "b-c",
	},
    {
		type = "bool-setting",
		name = "dye-enable-concrete",
		setting_type = "startup",
		default_value = true,
		order = "b-d",
	},
    {
		type = "bool-setting",
		name = "dye-enable-refined-concrete",
		setting_type = "startup",
		default_value = true,
		order = "b-e",
	},
    {
		type = "bool-setting",
		name = "dye-enable-hazard-concrete",
		setting_type = "startup",
		default_value = true,
		order = "b-d",
	},
    {
		type = "bool-setting",
		name = "dye-enable-refined-hazard-concrete",
		setting_type = "startup",
		default_value = true,
		order = "b-e",
	}
})

if mods["space-age"] and not mods["planetaris-tellus"] then
	data.extend({
    {
		type = "bool-setting",
		name = "disable-gleba-recipe-surface-conditions",
		setting_type = "startup",
		default_value = false,
		order = "c-a",
	}		
	})
end