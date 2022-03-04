delimiter //
create procedure choosing_price( in a float)
begin
    if a = 56789 then
		select distinct Flat_Name, Flat_Address, Avg_Price from flat_names 
        where Avg_Price = 'Price on request';
    end if;
	if a > 0 and a < 1 then
		select distinct Flat_Name, Flat_Address, Avg_Price from flat_names 
        where cast(substring_index(Avg_Price,'K',1) as float) > 100.00 ;
	end if;
	if a >= 1 and a < 10 then
		select distinct Flat_Name, Flat_Address, Avg_Price from flat_names 
        where cast(substring_index(Avg_Price,'K',1) as float) between 1.00 and 10.00 ;
    end if;
    if a >= 10 and a < 20 then
		select distinct Flat_Name, Flat_Address, Avg_Price from flat_names 
        where cast(substring_index(Avg_Price,'K',1) as float) between 10.00 and 20.00 ;
    end if;
    if a >= 20 and a < 30 then
		select distinct Flat_Name, Flat_Address, Avg_Price from flat_names 
        where cast(substring_index(Avg_Price,'K',1) as float) between 20.00 and 30.00 ;
    end if;
    if a >= 30 and a < 40 then
		select distinct Flat_Name, Flat_Address, Avg_Price from flat_names 
        where cast(substring_index(Avg_Price,'K',1) as float) between 30.00 and 40.00 ;
    end if;
    if a >= 40 then
		select distinct Flat_Name, Flat_Address, Avg_Price from flat_names 
        where cast(substring_index(Avg_Price,'K',1) as float) between 40.00 and 100.00;
    end if;
end