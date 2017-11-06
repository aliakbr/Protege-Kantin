[QueryGroup="Query Umum"] @collection [[
[QueryItem="Makanan Murah"]
PREFIX : <http://www.semanticweb.org/rplsdragon/ontologies/2017/10/kantin-ontology#>
SELECT * WHERE {?makanan a :Makanan; a :ProdukMurah; :hasNama ?nama; :hasPrice ?harga}

[QueryItem="Makanan Mahal"]
PREFIX : <http://www.semanticweb.org/rplsdragon/ontologies/2017/10/kantin-ontology#>
SELECT * WHERE {?makanan a :Makanan; a :ProdukMahal; :hasNama ?nama; :hasPrice ?harga}
]]
