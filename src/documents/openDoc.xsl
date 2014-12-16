<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" version="1.0"/>
    <xsl:template match="CV">
        <office:document-content office:version="1.2"
                                 xmlns:chart="urn:oasis:names:tc:opendocument:xmlns:chart:1.0"
                                 xmlns:dc="http://purl.org/dc/elements/1.1/"
                                 xmlns:dom="http://www.w3.org/2001/xml-events"
                                 xmlns:dr3d="urn:oasis:names:tc:opendocument:xmlns:dr3d:1.0"
                                 xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0"
                                 xmlns:field="urn:openoffice:names:experimental:ooo-ms-interop:xmlns:field:1.0"
                                 xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0"
                                 xmlns:form="urn:oasis:names:tc:opendocument:xmlns:form:1.0"
                                 xmlns:grddl="http://www.w3.org/2003/g/data-view#"
                                 xmlns:math="http://www.w3.org/1998/Math/MathML"
                                 xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0"
                                 xmlns:number="urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0"
                                 xmlns:of="urn:oasis:names:tc:opendocument:xmlns:of:1.2"
                                 xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
                                 xmlns:ooo="http://openoffice.org/2004/office"
                                 xmlns:oooc="http://openoffice.org/2004/calc"
                                 xmlns:ooow="http://openoffice.org/2004/writer"
                                 xmlns:rpt="http://openoffice.org/2005/report"
                                 xmlns:script="urn:oasis:names:tc:opendocument:xmlns:script:1.0"
                                 xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0"
                                 xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0"
                                 xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0"
                                 xmlns:tableooo="http://openoffice.org/2009/table"
                                 xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
                                 xmlns:textooo="http://openoffice.org/2013/office"
                                 xmlns:xforms="http://www.w3.org/2002/xforms"
                                 xmlns:xhtml="http://www.w3.org/1999/xhtml"
                                 xmlns:xlink="http://www.w3.org/1999/xlink"
                                 xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
            <office:scripts/>
            <office:font-face-decls>
                <style:font-face style:name="Mangal1" svg:font-family="Mangal"/>
                <style:font-face style:font-family-generic="roman"
                                 style:font-pitch="variable"
                                 style:name="Times New Roman" svg:font-family="'Times New Roman'"/>
                <style:font-face style:font-family-generic="swiss"
                                 style:font-pitch="variable" style:name="Arial" svg:font-family="Arial"/>
                <style:font-face style:font-family-generic="system"
                                 style:font-pitch="variable" style:name="Mangal" svg:font-family="Mangal"/>
                <style:font-face style:font-family-generic="system"
                                 style:font-pitch="variable"
                                 style:name="Microsoft YaHei" svg:font-family="'Microsoft YaHei'"/>
                <style:font-face style:font-family-generic="system"
                                 style:font-pitch="variable" style:name="SimSun" svg:font-family="SimSun"/>
            </office:font-face-decls>
            <office:automatic-styles>
                <style:style style:family="paragraph" style:name="P1" style:parent-style-name="Text_20_body">
                    <style:text-properties fo:font-size="12pt"
                                           style:font-size-asian="12pt" style:font-size-complex="12pt"/>
                </style:style>
                <style:style style:family="paragraph" style:name="P2" style:parent-style-name="Heading_20_2">
                    <style:text-properties fo:font-size="14pt"
                                           style:font-size-asian="14pt" style:font-size-complex="14pt"/>
                </style:style>
                <style:style style:family="paragraph" style:name="P3" style:parent-style-name="Heading_20_3">
                    <style:text-properties fo:font-size="12pt"
                                           style:font-size-asian="12pt" style:font-size-complex="12pt"/>
                </style:style>
                <style:style style:family="text" style:name="T1">
                    <style:text-properties fo:font-size="12pt"
                                           style:font-size-asian="12pt" style:font-size-complex="12pt"/>
                </style:style>
                <style:style style:family="text" style:name="T2">
                    <style:text-properties fo:font-size="14pt"
                                           style:font-size-asian="14pt" style:font-size-complex="14pt"/>
                </style:style>
                <style:style style:family="graphic" style:name="fr1" style:parent-style-name="Graphics">
                    <style:graphic-properties draw:blue="0%"
                                              draw:color-inversion="false"
                                              draw:color-mode="standard" draw:contrast="0%"
                                              draw:gamma="100%" draw:green="0%"
                                              draw:image-opacity="100%" draw:luminance="0%"
                                              draw:red="0%" fo:clip="rect(0cm, 0cm, 0cm, 0cm)"
                                              style:horizontal-pos="right"
                                              style:horizontal-rel="paragraph"
                                              style:mirror="none"
                                              style:number-wrapped-paragraphs="no-limit"
                                              style:run-through="foreground"
                                              style:wrap="parallel" style:wrap-contour="false"/>
                </style:style>
            </office:automatic-styles>
            <office:body>
                <office:text>
                    <text:sequence-decls>
                        <text:sequence-decl
                            text:display-outline-level="0" text:name="Illustration"/>
                        <text:sequence-decl
                            text:display-outline-level="0" text:name="Table"/>
                        <text:sequence-decl
                            text:display-outline-level="0" text:name="Text"/>
                        <text:sequence-decl
                            text:display-outline-level="0" text:name="Drawing"/>
                    </text:sequence-decls>
                    <text:p text:style-name="Standard">
                        <draw:frame draw:name="images1"
                                    draw:style-name="fr1" draw:z-index="0"
                                    svg:height="5.029cm" svg:width="3.537cm" text:anchor-type="paragraph">
                            <draw:image xlink:actuate="onLoad"
                                        xlink:href="Pictures/10000000000000F40000015B76E1ED0B.png"
                                        xlink:show="embed" xlink:type="simple"/>
                        </draw:frame>
                        <xsl:value-of select="etat_civil/prenom"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="etat_civil/nom"/>
                    </text:p>
                    <text:p text:style-name="Standard">
                        <xsl:value-of select="etat_civil/naissance"/>
                    </text:p>
                    <text:p text:style-name="Standard">
                        <xsl:value-of select="etat_civil/nationnalite"/>
                    </text:p>
                    <text:p text:style-name="Standard"/>
                    <text:p text:style-name="Standard">
                        <xsl:value-of select="coordonnees/adresse/numero"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="coordonnees/adresse/voie"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="coordonnees/adresse/nom"/>
                    </text:p>
                    <text:p text:style-name="Standard">
                        <xsl:value-of select="coordonnees/adresse/CP"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="coordonnees/adresse/ville"/>
                    </text:p>
                    <text:p text:style-name="Standard"/>
                    <text:p text:style-name="Standard">
                        <text:a text:style-name="Internet_20_link"
                                text:visited-style-name="Visited_20_Internet_20_Link"
                                xlink:href="{coordonnees/mail}"
                                xlink:type="simple">
                            <xsl:value-of select="coordonnees/mail"/>
                        </text:a>
                    </text:p>
                    <text:p text:style-name="Standard">Permis <xsl:value-of select="permis/@type"/></text:p>
                    <text:p text:style-name="Standard"/>
                    <text:p text:style-name="Standard"/>
                    <text:h text:outline-level="2" text:style-name="Heading_20_2">
                        <xsl:value-of select="formations/@title"/>
                    </text:h>
                    <xsl:for-each select="formations/formation">
                        <text:p text:style-name="Text_20_body">
                            <xsl:value-of select="date_debut"/> – <xsl:value-of select="date_fin"/>
                        </text:p>
                        <text:p text:style-name="Text_20_body">
                            BAC Scientifique TB - Européenne Anglais Histoire Géographie - Lycée Marceau – Chartres
                            <xsl:value-of select="diplome/@title"/>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="diplome/intitule"/>
                            <xsl:text> </xsl:text>
                            <xsl:if test="diplome/option">
                                 - <xsl:value-of select="diplome/option"/>
                            </xsl:if>
                             - <xsl:value-of select="diplome/etablissement/nom"/>
                             - <xsl:value-of select="diplome/etablissement/ville"/>
                        </text:p>
                    </xsl:for-each>
                    <text:h text:outline-level="2" text:style-name="Heading_20_2">Experiences Professionnelles</text:h>
                    <text:h text:outline-level="3" text:style-name="P3">Stage(s)</text:h>
                    <text:p text:style-name="Text_20_body">23/06/2010 – 30/07/2010</text:p>
                    <text:p text:style-name="Text_20_body">Stage ouvrier - Lacie SAS – Massy (91) - Zone retour fournisseurs</text:p>
                    <text:p text:style-name="Text_20_body">Inventaire, transfert informatique, manutention</text:p>
                    <text:h text:outline-level="3" text:style-name="P3">Emploi(s)</text:h>
                    <text:p text:style-name="Text_20_body">
                        <text:span text:style-name="T1">25/07/2014 – 29/08/2014</text:span>
                    </text:p>
                    <text:p text:style-name="Text_20_body">
                        <text:span text:style-name="T1">Emploi saisonnier – SNCF – Paris (75) - Bureau d'étude Infraingénérie Sud-Paris</text:span>
                    </text:p>
                    <text:p text:style-name="Text_20_body">
                        <text:span text:style-name="T1">Inventaire et Archivage de schéma de ligne. Conception (2D et 3D) d'un plan d'aménagement.</text:span>
                    </text:p>
                    <text:h text:outline-level="2" text:style-name="P2">Compétences</text:h>
                    <text:p text:style-name="P1">Languages de programmation</text:p>
                    <text:p text:style-name="P1">C, C++, Java, PHP, JavaScript, HTML5, CSS3, UML, PL-SQL.</text:p>
                    <text:h text:outline-level="3" text:style-name="P3">Langues</text:h>
                    <text:p text:style-name="Text_20_body">
                        <text:span text:style-name="T1">Espagnol - Lu ++ Parlé + Ecrit +</text:span>
                    </text:p>
                    <text:h text:outline-level="2" text:style-name="P2">Intérêts</text:h>
                    <text:p text:style-name="P1">Sports - Tennis (6 ans), Roller-hockey, Natation, Apnée, …</text:p>
                </office:text>
            </office:body>
        </office:document-content>
    </xsl:template>
</xsl:stylesheet>
