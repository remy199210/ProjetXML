<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    
    <xsl:template match="CV">
        <html>
            <head>
                <title>html.xsl</title>
                <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css'/>
                <style type="text/css">
                    body{
                        font-family: 'Open Sans Condensed', sans-serif;
                        background: #212121;
                        color: white;
                    }
                    p{
                        margin: 0px;
                        padding: 0px;
                    }
                    h1{
                        text-transform: uppercase;
                        font-weight: 300;
                        font-size: 40px;
                        margin-bottom: 0;
                        padding: 46px 0px 0px 226px;
                    }
                    h2{
                        text-transform: uppercase;
                        font-weight: 300;
                        font-size: 32px;
                        padding: 0px 0px 0px 30px;
                        background: #464646;
                        border-bottom: solid 1px white;
                    }
                    h3{
                        text-transform: uppercase;
                        font-weight: 300;
                        font-size: 20px;
                        padding: 0px 0px 0px 30px;
                    }
                    .photo, .etat_civil, .etat_civil2{
                    }
                    .etat_civil, .etat_civil2{
                        color: #84a4ff;
                        background: #373737;
                        padding: 10px;
                        float: left;
                        margin-left: 20px;
                    }
                    .etat_civil2{
                    }
                    .entete img{
                        height: 214px;
                        margin: 30px 15px 15px 30px;
                    }
                    .photo{
                        margin-right: 10px;
                        float: left;
                    }
                    .details p span{
                        color: #f3554d;
                        margin-right: 30px;
                        margin-left: 30px;
                    }
                    .details p span.competences{
                        color: #45f33a;
                    }
                    .details p span.interets{
                        color: #f38ddc;
                    }
                </style>
            </head>
            <body>
                <div class="entete">
                    <div class="photo">
                        <img src="file:///C:/Users/Aliz%C3%A9e/Pictures/alizee.png" alt="photo de profil cv" />
                    </div>
                    <h1>
                        <xsl:value-of select="etat_civil/prenom"/><xsl:text> </xsl:text><xsl:value-of select="etat_civil/nom"/>
                    
                </h1>
                    <div class="etat_civil">
                        <p><xsl:value-of select="etat_civil/naissance"/></p>
                        <p><xsl:value-of select="etat_civil/nationnalite"/></p>
                        <p><xsl:value-of select="coordonnees/adresse/numero"/><xsl:text> </xsl:text><xsl:value-of select="coordonnees/adresse/voie"/><xsl:text> </xsl:text><xsl:value-of select="coordonnees/adresse/nom"/> <br/> <xsl:value-of select="coordonnees/adresse/CP"/><xsl:text> </xsl:text><xsl:value-of select="coordonnees/adresse/ville"/> </p>
                    </div>
                    <div class="etat_civil2">
                        <p><xsl:value-of select="coordonnees/telephone"/></p>
                        <p><xsl:value-of select="coordonnees/mail"/></p>
                        <p><xsl:value-of select="coordonnees/site_web"/></p>
                        <p>Permis <xsl:value-of select="permis/@type"/></p>
                    </div>
                    <div style="clear: both;"></div>
                    <h2><xsl:value-of select="formations/@titre"/></h2>
                    
                    <xsl:for-each select="formations/formation">
                        <div class="details">
                            <p>
                                <span>
                                    <xsl:value-of select="date_debut"/>
                                    <xsl:text> </xsl:text>-<xsl:text> </xsl:text>
                                    <xsl:value-of select="date_fin"/>
                                </span> 
                                <xsl:value-of select="diplome/@type"/>
                                <xsl:text> </xsl:text>
                                <xsl:if test="diplome/@mention = true()">
                                    mention:<xsl:text> </xsl:text>
                                    <xsl:value-of select="diplome/@mention"/>
                                </xsl:if>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="diplome/intitule"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="diplome/option"/> - <xsl:value-of select="etablissement/nom"/>, <xsl:value-of select="etablissement/ville"/>
                            </p>
                        </div>
                    </xsl:for-each>
                    
                    <h2><xsl:value-of select="experiences/@titre"/></h2>
                    <xsl:if test="experiences/experience[@titre = 'stage'] = true()">
                        <h3>Stage(s)</h3>
                        <xsl:for-each select="experiences/experience[@titre = 'stage']">
                            <div class="details">
                                <p>
                                    <span>
                                        <xsl:value-of select="date_debut"/>
                                        <xsl:text> </xsl:text>-<xsl:text> </xsl:text>
                                        <xsl:value-of select="date_fin"/>
                                    </span>
                                    <xsl:value-of select="intitule"/>
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="entreprise/nom"/>,
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="entreprise/ville"/>
                                    <xsl:text> </xsl:text>
                                    <xsl:text>(</xsl:text>
                                    <xsl:value-of select="entreprise/departement"/>
                                    <xsl:text>)</xsl:text>
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="entreprise/section"/>,
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="description"/>
                                </p>
                            </div>
                        </xsl:for-each>
                    </xsl:if>
                    <xsl:if test="experiences/experience[@titre = 'emploi'] = true()">
                        <h3>Emploi(s)</h3>
                        <xsl:for-each select="experiences/experience[@titre = 'emploi']">
                            <div class="details">
                                <p>
                                    <span>
                                        <xsl:value-of select="date_debut"/>
                                        <xsl:text> </xsl:text>-<xsl:text> </xsl:text>
                                        <xsl:value-of select="date_fin"/>
                                    </span>
                                    <xsl:value-of select="intitule"/>
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="entreprise/nom"/>,
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="entreprise/ville"/>
                                    <xsl:text> </xsl:text>
                                    <xsl:text>(</xsl:text>
                                    <xsl:value-of select="entreprise/departement"/>
                                    <xsl:text>)</xsl:text>
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="entreprise/section"/>,
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="description"/>
                                </p>
                            </div>
                        </xsl:for-each>
                    </xsl:if>
                    <h2>Compétences diverses</h2>
                    <xsl:if test="competences/competence[@titre != 'Langue'] = true()">
                        <h3>Compétences techniques</h3>
                        <xsl:for-each select="competences/competence[@titre != true()]">
                            <div class="details">
                                <p><span class="competences"><xsl:value-of select="nom"/></span> <xsl:value-of select="details"/></p>
                            </div>
                        </xsl:for-each>
                    </xsl:if>
                    <xsl:if test="competences/competence[@titre = 'Langue'] = true()">
                        <h3>Langue(s) parlé(es)</h3>
                        <xsl:for-each select="competences/competence[@titre = 'Langue']">
                            <div class="details">
                                <p><span class="competences"><xsl:value-of select="nom"/></span><xsl:value-of select="details"/></p>
                            </div>
                        </xsl:for-each>
                    </xsl:if>
                    <xsl:if test="interets/interet = true()">
                        <h2>Intérêts</h2>
                        <xsl:for-each select="interets/interet">
                            <div class="details">
                                <p><span class="interets"><xsl:value-of select="nom"/></span><xsl:value-of select="details"/></p>
                            </div>
                        </xsl:for-each>
                    </xsl:if>
                </div>
            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>
