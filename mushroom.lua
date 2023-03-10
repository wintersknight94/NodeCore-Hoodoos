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
local flatcap1 = {
	".........",
	"...sss...",
	"..sSCSs..",
	".sSCCCSs.",
	".sCCCCCs.",
	".sSCCCSs.",
	"..sSCSs..",
	"...sss...",
	".........",
}
local flatcap2 = {
	"...sss...",
	"..sSSSs..",
	".sSCCCSs.",
	"sSCCCCCSs",
	"sSCCCCCSs",
	"sSCCCCCSs",
	".sSCCCSs.",
	"..sSSSs..",
	"...sss...",
}
local flatcap3 = {
	".ssSSSss.",
	"sSSCCCSSs",
	"sSCCCCCSs",
	"SCCCCCCCS",
	"SCCCCCCCS",
	"SCCCCCCCS",
	"sSCCCCCSs",
	"sSSCCCSSs",
	".ssSSSss.",
}
local stem = {
	".........",
	".........",
	".........",
	"...sSs...",
	"...SCS...",
	"...sSs...",
	".........",
	".........",
	".........",
}
nodecore.hoodoo_mushroom_schematic = nodecore.ezschematic(
	{
		["."]	=	{name = "air", prob = 0},

		s	=	{name = "nc_terrain:stone", prob = 110},
		S	=	{name = "nc_terrain:stone", prob = 240},
		C	=	{name = "nc_terrain:stone", prob = 255},

	},
	{
		flatcap1,			--52
		flatcap1,			--51
		flatcap1,			--50
		flatcap1,			--49
		stem,			--48
		stem,			--47
		stem,			--46
		stem,			--45
		stem,			--44
		stem,			--43
		stem,			--42
		stem,			--41
		stem,			--40
		stem,			--39
		stem,			--38
		stem,			--37
		stem,			--36
		stem,			--35
		stem,			--34
		stem,			--33
		stem,			--32
		stem,			--31
		stem,			--30
		stem,			--29
		stem,			--28
		stem,			--27
		stem,			--26
		stem,			--25
		stem,			--24
		stem,			--23
		stem,			--22
		stem,			--21
		stem,			--20
		stem,			--19
		stem,			--18
		stem,			--17
		stem,			--16
		stem,			--15
		stem,			--14
		stem,			--13
		stem,			--12
		stem,			--11
		stem,			--10
		stem,			--9
		stem,			--8
		stem,			--7
		stem,			--6
		flatcap1,			--5
		flatcap2,			--4
		flatcap3,			--3
		flatcap2,			--2
		flatcap1,			--1
	},
	{
		yslice_prob = {
			{ypos = 1, prob = 160},	--1 (This is the top)
			{ypos = 2, prob = 180},	--2
			{ypos = 3, prob = 200},	--3
			{ypos = 4, prob = 180},	--4
			{ypos = 5, prob = 160},	--5
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
			{ypos = 47, prob = 140},	--47
			{ypos = 48, prob = 140},	--48
			{ypos = 49, prob = 140},	--49
			{ypos = 50, prob = 140},	--50
			{ypos = 51, prob = 140},	--51
			{ypos = 52, prob = 140},	--52 (This is the bottom)
		}
	}
)
minetest.register_decoration({
		label = "mushroom hoodoo",
		deco_type = "schematic",
		place_on = {"group:soil", "group:sand", "group:gravel", "group:stone"},
		sidelen = 16,
		fill_ratio = 0.00001,	--temporary, will replace with noise parameters once more satisfied with structure
		biomes = {"unknown", "seabed", "dune", "savanna", "tropic"},
		y_min = -128,
		y_max = 128,
		schematic = nodecore.hoodoo_mushroom_schematic,
		flags = "force_placement", "place_center_x, place_center_z", "all_floors",
		rotation = "random",
		place_offset_y = -5,
		replacements = {},
	})
-- ================================================================== --

