<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
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
                <h2>Autre RDF</h2>
                <table>
                    <xsl:for-each select="rdf:RDF/foaf:Person/foaf:knows/">
                        <td>
                            <xsl:value-of select="foaf:name" />
                        </td>
                        <td>
                            <xsl:value-of select="foaf:mbox" />
                        </td>
                        <td>
                            <xsl:value-of select="rdfs:seeAlso" />
                        </td>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>