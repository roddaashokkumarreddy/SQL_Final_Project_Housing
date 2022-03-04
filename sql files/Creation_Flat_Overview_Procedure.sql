delimiter //
create procedure inserting_tables ()
begin

		INSERT INTO flat_names (Flat_Name, Flat_Address, Avg_Price)
		SELECT Flat_Name, Flat_Address, Average_Price
		FROM master_data;
        
		INSERT INTO flat_overview (Configurations, Possession_Starts, Sizes, LaunchDate)
		SELECT  Configurations, Posession_starts, Sizes, LaunchDate
		FROM master_data;


		INSERT INTO flat_description (About_Description)
		SELECT  About FROM master_data;

		INSERT INTO locations VALUES (1,"Bangalore");
		INSERT INTO locations VALUES (2,"Hyderabad");
		INSERT INTO locations VALUES (3,"Pune");
		INSERT INTO locations VALUES (4,"Chennai");
		INSERT INTO locations VALUES (5,"Mumbai");

		INSERT INTO project_description (ProjectArea, ProjectSize)
		SELECT  ProjectArea, Projectsize
		FROM master_data;

end