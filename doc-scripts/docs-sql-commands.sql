--- Generate a data dictionary
---
SELECT
  UcdmEntity.Name Entity,
  UcdmElement.name Element,
  UcdmElement.code ElementCode,
  UcdmElement.description ElementDescription,
  UcdmEntityTableMapping.UcdmTable UcdmTable,
  UcdmEntityTableMapping.UcdmColumn UcdmColumn
FROM UcdmElement
LEFT JOIN UcdmEntity ON UcdmEntity.Id=UcdmElement.UcdmEntityId
LEFT JOIN UcdmEntityTableMapping on UcdmElement.Id=UcdmEntityTableMapping.UcdmElementId
ORDER BY UcdmEntity.Id, UcdmElement.id;


-- Generate Canvas -> UCDM mappings
--
-- Generates a mapping of Canvas Data tables & columns
-- to UCDM entities and elements and to UCDM tables and
-- columns.
--
SELECT
  CanvasDataUcdmMapping.CanvasDataTable CDTable,
  CanvasDataUcdmMapping.CanvasDataField CDColumn,
  UcdmEntity.name Entity,
  UcdmElement.name Element,
  UcdmEntityTableMapping.UcdmTable UcdmTable,
  UcdmEntityTableMapping.UcdmColumn UcdmColumn,
  UcdmElement.OptionSet OptionSet

FROM CanvasDataUcdmMapping
LEFT JOIN UcdmElement on UcdmElement.Id=CanvasDataUcdmMapping.UcdmElementId
LEFT JOIN UcdmEntity  on UcdmEntity.Id=UcdmElement.UcdmEntityId
LEFT JOIN UcdmEntityTableMapping on UcdmEntityTableMapping.UcdmElementId=UcdmElement.Id
ORDER BY
  CanvasDataUcdmMapping.CanvasDataTable;
