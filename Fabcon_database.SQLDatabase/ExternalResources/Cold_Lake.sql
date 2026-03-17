CREATE EXTERNAL DATA SOURCE [Cold_Lake]
    WITH (
    LOCATION = N'abfss://FabricWorkspaceuser129@onelake.dfs.fabric.microsoft.com/Lakehouse.Lakehouse/Files',
    PUSHDOWN = ON
    );


GO

