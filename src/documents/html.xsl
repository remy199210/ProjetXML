<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    
    <xsl:template match="CV">
        <html>
            <head>
                <title>html.xsl</title>
                <style type="txt/css">
                    .photo, .etat_civil{
                        display: inline-block;
                    }
                    .photo{
                        margin-right: 10px;
                    }
                </style>
            </head>
            <body>
                <div class="photo"><img src="" alt="photo de profil cv"/></div>
                <div class="etat_civil">
                    <p><xsl:value-of select="/etat_civil/prenom"/></p>
                    <p><xsl:value-of select="/etat_civil/nom"/></p>
                    <p><xsl:value-of select="/etat_civil/naissance"/></p>
                    <p><xsl:value-of select="/etat_civil/nationnalite"/></p>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
