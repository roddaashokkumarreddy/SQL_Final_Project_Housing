Delimiter //
create procedure creation_tables ()
begin
		CREATE TABLE Flat_Names (
			Flat_Id INTEGER PRIMARY KEY AUTO_INCREMENT,
			Flat_Name text,
			Flat_Address text,
			Avg_Price text
		);

		CREATE TABLE Locations (
			Location_Id INTEGER PRIMARY KEY AUTO_INCREMENT,
			Location_Name text
		);
        
		CREATE TABLE Flat_Overview (
			Flat_Id INTEGER PRIMARY KEY AUTO_INCREMENT,
			Configurations text,
			Possession_Starts text,
			Sizes text,
			LaunchDate text,
			FOREIGN KEY (Flat_Id) REFERENCES flat_names(Flat_Id)
		);
        
		CREATE TABLE flat_description (
			Flat_Id INTEGER PRIMARY KEY AUTO_INCREMENT,
			About_Description text,
			FOREIGN KEY (Flat_Id) REFERENCES flat_names(Flat_Id)
		);
        
		CREATE TABLE project_description (
			Flat_Id INTEGER PRIMARY KEY AUTO_INCREMENT,
			ProjectArea text,
			ProjectSize text,
			FOREIGN KEY (Flat_Id) REFERENCES flat_names(Flat_Id)
		);

end