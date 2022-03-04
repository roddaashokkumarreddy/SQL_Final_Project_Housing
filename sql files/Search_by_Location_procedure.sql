delimiter //
create procedure choosing_locations( in a integer)
begin
	if a = 1 then
		select distinct Flat_Name, Flat_Address from flat_names where Flat_Address like "%Bangalore";
    end if;
    if a = 2 then
		select distinct Flat_Name, Flat_Address from flat_names where Flat_Address like "%Hyderabad";
    end if;
    if a = 3 then
		select distinct Flat_Name, Flat_Address from flat_names where Flat_Address like "%Chennai";
    end if;
    if a = 4 then
		select distinct Flat_Name, Flat_Address from flat_names where Flat_Address like "%Pune";
    end if;
    if a = 5 then
		select distinct Flat_Name, Flat_Address from flat_names where Flat_Address like "%Mumbai";
    end if;
end