-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()
-- ================================================================== --
--<>-- 'Hoodoos', also called 'tent rocks', 'earth pyramids', and (my favorite) 'fairy chimneys', are irregular spires of rock formed by erosion.
--<>-- They are typically found in sedimentary and volcanic rock formations and are often affected by the varying erosion patterns of alternating hard and soft rock layers.
--<>-- Due to the varying composition of rock layers, they range greatly in size, shape, and height, and are often banded by various colorations.
-- ================================================================== --
local peak = {
	".....",
	".....",
	"..C..",
	".....",
	".....",
}
local taper = {
	".....",
	"..S..",
	".SCS.",
	"..S..",
	".....",
}
local body = {
	".....",
	".sSs.",
	".SCS.",
	".sSs.",
	".....",
}
local base = {
	".sss.",
	"sSSSs",
	"sSCSs",
	"sSSSs",
	".sss.",
}
nodecore.hoodoo_spire_schematic = nodecore.ezschematic(
	{
		["."]	=	{name = "air", prob = 0},

		s	=	{name = "nc_terrain:stone", prob = 100},
		S	=	{name = "nc_terrain:stone", prob = 225},
		C	=	{name = "nc_terrain:stone", prob = 255},
	},
	{
		base,			--52
		base,			--51
		base,			--50
		base,			--49
		base,			--48
		base,			--47
		base,			--46
		base,			--45
		base,			--44
		base,			--43
		body,			--42
		body,			--41
		body,			--40
		body,			--39
		body,			--38
		body,			--37
		body,			--36
		body,			--35
		body,			--34
		body,			--33
		body,			--32
		body,			--31
		body,			--30
		body,			--29
		body,			--28
		body,			--27
		body,			--26
		body,			--25
		body,			--24
		body,			--23
		body,			--22
		body,			--21
		body,			--20
		body,			--19
		body,			--18
		body,			--17
		body,			--16
		body,			--15
		body,			--14
		body,			--13
		body,			--12
		body,			--11
		taper,			--10
		taper,			--9
		taper,			--8
		taper,			--7
		taper,			--6
		peak,			--5
		peak,			--4
		peak,			--3
		peak,			--2
		peak,			--1
	},
	{
		yslice_prob = {
			{ypos = 1, prob = 180},	--1 (This is the top)
			{ypos = 2, prob = 160},	--2
			{ypos = 3, prob = 140},	--3
			{ypos = 4, prob = 120},	--4
			{ypos = 5, prob = 100},	--5
			{ypos = 6, prob = 100},	--6
			{ypos = 7, prob = 100},	--7
			{ypos = 8, prob = 100},	--8
			{ypos = 9, prob = 100},	--9
			{ypos = 10, prob = 100},	--10
			{ypos = 11, prob = 100},	--11
			{ypos = 12, prob = 100},	--12
			{ypos = 13, prob = 100},	--13
			{ypos = 14, prob = 100},	--14
			{ypos = 15, prob = 100},	--15
			{ypos = 16, prob = 100},	--16
			{ypos = 17, prob = 100},	--17
			{ypos = 18, prob = 100},	--18
			{ypos = 19, prob = 100},	--19
			{ypos = 20, prob = 100},	--20
			{ypos = 21, prob = 100},	--21
			{ypos = 22, prob = 100},	--22
			{ypos = 23, prob = 100},	--23
			{ypos = 24, prob = 100},	--24
			{ypos = 25, prob = 100},	--25
			{ypos = 26, prob = 100},	--26
			{ypos = 27, prob = 100},	--27
			{ypos = 28, prob = 100},	--28
			{ypos = 29, prob = 100},	--29
			{ypos = 30, prob = 100},	--30
			{ypos = 31, prob = 100},	--31
			{ypos = 32, prob = 100},	--32
			{ypos = 33, prob = 100},	--33
			{ypos = 34, prob = 100},	--34
			{ypos = 35, prob = 100},	--35
			{ypos = 36, prob = 100},	--36
			{ypos = 37, prob = 100},	--37
			{ypos = 38, prob = 100},	--38
			{ypos = 39, prob = 100},	--39
			{ypos = 40, prob = 100},	--40
			{ypos = 41, prob = 100},	--41
			{ypos = 42, prob = 100},	--42
			{ypos = 43, prob = 100},	--43
			{ypos = 44, prob = 100},	--44
			{ypos = 45, prob = 100},	--45
			{ypos = 46, prob = 100},	--46
			{ypos = 47, prob = 100},	--47
			{ypos = 48, prob = 120},	--48
			{ypos = 49, prob = 140},	--49
			{ypos = 50, prob = 160},	--50
			{ypos = 51, prob = 180},	--51
			{ypos = 52, prob = 200},	--52 (This is the bottom)
		}
	}
)
minetest.register_decoration({
		label = "pinnacle spire",
		deco_type = "schematic",
		place_on = {"group:soil", "group:sand", "group:gravel", "group:stone"},
		sidelen = 16,
		fill_ratio = 0.00001,	--temporary, will replace with noise parameters once more satisfied with structure
		biomes = {"unknown", "seabed", "dune", "savanna", "tropic"},
		y_min = -128,
		y_max = 128,
		schematic = nodecore.hoodoo_spire_schematic,
		flags = "force_placement", "place_center_x, place_center_z", "all_floors",
		rotation = "random",
		place_offset_y = -5,
		replacements = {},
	})
-- ================================================================== --

