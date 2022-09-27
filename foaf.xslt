<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <html>
            <body>
                <h2>Melissa Bertin</h2>
                <p>
                    Name:
                    <xsl:value-of select="rdf:RDF/foaf:Person/foaf:name" />
                </p>
                <p>
                    Title:
                    <xsl:value-of select="rdf:RDF/foaf:Person/foaf:title" />
                </p>
                <p>
                    givenname:
                    <xsl:value-of select="rdf:RDF/foaf:Person/foaf:givenname" />
                </p>

                <p>
                    family_name:
                    <xsl:value-of select="rdf:RDF/foaf:Person/foaf:family_name" />
                </p>
                <p>
                    homepage:
                    <xsl:value-of select="rdf:RDF/foaf:Person/foaf:homepage/@rdf:resource" />
                </p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>