-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()
-- ================================================================== --
--<>-- 'Hoodoos', also called 'tent rocks', 'earth pyramids', and (my favorite) 'fairy chimneys', are irregular spires of rock formed by erosion.
--<>-- They are typically found in sedimentary and volcanic rock formations and are often affected by the varying erosion patterns of alternating hard and soft rock layers.
--<>-- Due to the varying composition of rock layers, they range greatly in size, shape, and height, and are often banded by various colorations.
--<>-- Some 'Tent Rocks' in Armenia were carved out and used/lived in at one point. 
-- ================================================================== --
local tentpeak1 = {
	".........",
	".........",
	".........",
	".........",
	"....C....",
	".........",
	".........",
	".........",
	".........",
}
local tentpeak2 = {
	".........",
	".........",
	".........",
	"....S....",
	"...SCS...",
	"....S....",
	".........",
	".........",
	".........",
}
local tentpeak3 = {
	".........",
	".........",
	"....s....",
	"...SCS...",
	"..sC.Cs..",
	"...SCS...",
	"....s....",
	".........",
	".........",
}
local tentcap1 = {
	".........",
	".........",
	"...sSs...",
	"..sCCCs..",
	"..SC.CS..",
	"..sCCCs..",
	"...sSs...",
	".........",
	".........",
}
local tentcap2 = {
	".........",
	"...sss...",
	"..sSCSs..",
	".sSC.CSs.",
	".sC...Cs.",
	".sSC.CSs.",
	"..sSCSs..",
	"...sss...",
	".........",
}
local tentcap3 = {
	"...sss...",
	"..sSSSs..",
	".sSCCCSs.",
	"sSCl.lCSs",
	"sSC......",
	"sSCl.lCSs",
	".sSCCCSs.",
	"..sSSSs..",
	"...sss...",
}
local tentcap4 = {
	".ssSSSss.",
	"sSSCCCSSs",
	"sSClllCSs",
	"SCl...lCS",
	"SCl......",
	"SCl...lCS",
	"sSClllCSs",
	"sSSCCCSSs",
	".ssSSSss.",
}
local tentfloor = {
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
nodecore.hoodoo_tentrock_schematic = nodecore.ezschematic(
	{
		["."]	=	{name = "air", prob = 0},

		s	=	{name = "nc_terrain:stone", prob = 120},
		S	=	{name = "nc_terrain:stone", prob = 240},
		C	=	{name = "nc_terrain:stone", prob = 255},

		l	=	{name = "nc_woodwork:shelf", prob = 10}, --fun afterthought. why the heck not?
	},
	{
		stem,			--52
		stem,			--51
		stem,			--50
		stem,			--49
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
		tentfloor,			--25
		tentfloor,			--24
		tentfloor,			--23
		tentfloor,			--22
		tentcap4,			--21
		tentcap4,			--20
		tentcap4,			--19
		tentcap3,			--18
		tentcap3,			--17
		tentcap3,			--16
		tentcap2,			--15
		tentcap2,			--14
		tentcap2,			--13
		tentcap1,			--12
		tentcap1,			--11
		tentcap1,			--10
		tentpeak3,			--9
		tentpeak3,			--8
		tentpeak3,			--7
		tentpeak2,			--6
		tentpeak2,			--5
		tentpeak2,			--4
		tentpeak1,			--3
		tentpeak1,			--2
		tentpeak1,			--1
	},
	{
		yslice_prob = {
			{ypos = 1, prob = 255},	--1 (This is the top)
			{ypos = 2, prob = 250},	--2
			{ypos = 3, prob = 250},	--3
			{ypos = 4, prob = 255},	--4
			{ypos = 5, prob = 250},	--5
			{ypos = 6, prob = 250},	--6
			{ypos = 7, prob = 255},	--7
			{ypos = 8, prob = 250},	--8
			{ypos = 9, prob = 250},	--9
			{ypos = 10, prob = 255},	--10
			{ypos = 11, prob = 250},	--11
			{ypos = 12, prob = 250},	--12
			{ypos = 13, prob = 255},	--13
			{ypos = 14, prob = 250},	--14
			{ypos = 15, prob = 250},	--15
			{ypos = 16, prob = 255},	--16
			{ypos = 17, prob = 250},	--17
			{ypos = 18, prob = 250},	--18
			{ypos = 19, prob = 255},	--19
			{ypos = 20, prob = 250},	--20
			{ypos = 21, prob = 250},	--21
			{ypos = 22, prob = 255},	--22 (tentfloor)
			{ypos = 23, prob = 250},	--23 (tentfloor)
			{ypos = 24, prob = 250},	--24 (tentfloor)
			{ypos = 25, prob = 255},	--25 (tentfloor)
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
			{ypos = 48, prob = 100},	--48
			{ypos = 49, prob = 100},	--49
			{ypos = 50, prob = 100},	--50
			{ypos = 51, prob = 100},	--51
			{ypos = 52, prob = 100},	--52 (This is the bottom)
		}
	}
)
minetest.register_decoration({
		label = "tent-rock hoodoo",
		deco_type = "schematic",
		place_on = {"group:soil", "group:sand", "group:gravel", "group:stone"},
		sidelen = 16,
		fill_ratio = 0.00001,	--temporary, will replace with noise parameters once more satisfied with structure
		biomes = {"unknown", "seabed", "dune", "savanna", "tropic"},
		y_min = -128,
		y_max = 128,
		schematic = nodecore.hoodoo_tentrock_schematic,
		flags = "force_placement", "place_center_x, place_center_z", "all_floors",
		rotation = "random",
		place_offset_y = -5,
		replacements = {},
	})
-- ================================================================== --

