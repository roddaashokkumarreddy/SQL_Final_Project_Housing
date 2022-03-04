create view Building_View as
	select distinct fn.Flat_Name as Flat_Name, fn.Flat_Address as Flat_Address, fn.Avg_Price as Average_Price,
    fo.Configurations as Configurations, fo.Possession_Starts as Possession_Starts, fo.Sizes as Sizes,
    fo.LaunchDate as Launch_Date, fd.About_Description
    from flat_names fn
	join flat_overview fo
    on fn.Flat_Id = fo.Flat_Id
    join flat_description fd
    on fn.Flat_Id = fd.Flat_Id;




