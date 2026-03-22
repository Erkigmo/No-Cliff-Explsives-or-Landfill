for r, recipe in pairs(data.raw.recipe) do
	if recipe.results ~= nil and next(recipe.results) ~= nil then
		for res, result in pairs(recipe.results) do
		    if result.name == 'landfill' or result.name == 'cliff-explosives' then
		    	recipe.results[res].amount = 0
		    end
		end
	end
end

data.raw.technology['landfill'].effects = nil
data.raw.technology['cliff-explosives'].effects = nil