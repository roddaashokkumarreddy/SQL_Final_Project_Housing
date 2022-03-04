delimiter //
create procedure choosing_configurations( in a integer)
begin
	if a = 1 then
		select distinct fn.Flat_Name as Flat_Name, fn.Flat_Address as Flat_Address, fo.Configurations as Configurations
        from flat_names  fn 
        inner join flat_overview fo 
        on fn.Flat_Id = fo.Flat_Id
        where fo.Configurations like '%1%';
    end if;
    if a = 2 then
		select distinct fn.Flat_Name as Flat_Name, fn.Flat_Address as Flat_Address, fo.Configurations as Configurations
        from flat_names  fn 
        inner join flat_overview fo 
        on fn.Flat_Id = fo.Flat_Id
        where fo.Configurations like '%2%';
    end if;
    if a = 3 then
		select distinct fn.Flat_Name as Flat_Name, fn.Flat_Address as Flat_Address, fo.Configurations as Configurations
        from flat_names  fn 
        inner join flat_overview fo 
        on fn.Flat_Id = fo.Flat_Id
        where fo.Configurations like '%3%';
    end if;
    if a = 4 then
		select distinct fn.Flat_Name as Flat_Name, fn.Flat_Address as Flat_Address, fo.Configurations as Configurations
        from flat_names  fn 
        inner join flat_overview fo 
        on fn.Flat_Id = fo.Flat_Id
        where fo.Configurations like '%4%';
    end if;
    if a = 5 then
		select distinct fn.Flat_Name as Flat_Name, fn.Flat_Address as Flat_Address, fo.Configurations as Configurations
        from flat_names  fn 
        inner join flat_overview fo 
        on fn.Flat_Id = fo.Flat_Id
        where fo.Configurations like '%Residential%';
    end if;
        if a = 6 then
		select distinct fn.Flat_Name as Flat_Name, fn.Flat_Address as Flat_Address, fo.Configurations as Configurations
        from flat_names  fn 
        inner join flat_overview fo 
        on fn.Flat_Id = fo.Flat_Id
        where fo.Configurations like '%Triplex%';
    end if;
end