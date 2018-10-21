WITH
SET [~COLUMNS] AS
    Hierarchize({{[tiempo].[año].Members}, {[tiempo].[mes].Members}, {[tiempo].[semana].Members}, {[tiempo].[dia].Members}})
SET [~ROWS] AS
    {[Curso].[Curso].Members}
SELECT
NON EMPTY CrossJoin([~COLUMNS], {[Measures].[elipse], [Measures].[manoalzada]}) ON COLUMNS,
NON EMPTY [~ROWS] ON ROWS
FROM [uah_batch]