<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>
    <xsl:template match="CV">
        <office:document-content
            xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0"
            xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
            xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0" xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0">
            <office:automatic-styles>
                <style:style style:family="paragraph" style:name="EC" style:parent-style-name="Normal"/>
            </office:automatic-styles>
            <office:body>
                <office:text>
                    <text:p text-style-name="EC">
                        <xsl:value-of select="etat_civil/prenom"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="etat_civil/nom"/>
                    </text:p>
                    <text:p text-style-name="EC">
                        <xsl:value-of select="etat_civil/naissance"/>
                    </text:p>
                    <text:p text-style-name="EC">
                        <xsl:value-of select="etat_civil/nationnalite"/>
                    </text:p>
                </office:text>
                <office:text>
                    <text:p text-style-name="AD">
                        <xsl:value-of select="coordonnees/adresse/numero"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="coordonnees/adresse/voie"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="coordonnees/adresse/nom"/>
                    </text:p>
                    <text:p text-style-name="AD">
                        <xsl:value-of select="coordonnees/adresse/CP"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="coordonnees/adresse/ville"/>
                    </text:p>
                </office:text>
            </office:body>
        </office:document-content>
    </xsl:template>
</xsl:stylesheet>
