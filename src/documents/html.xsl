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
                        <p>167 rue de la savoyarde <br/> 73230 Saint Alban Leysse </p>
                    </div>
                    <div class="etat_civil2">
                        <p>06.13.46.54.14</p>
                        <p>arn.alizee@gmail.com</p>
                        <p>http://alizee-arnaud.com</p>
                        <p>Permis B</p>
                    </div>
                    <div style="clear: both;"></div>
                    <h2>Formation</h2>
                    <div class="details">
                        <p><span>09/09/2013 - 14/07/2014</span> Licence Pro METINET en Alternance - IUT Lyon 1, Bourg-en-Bresse</p>
                    </div>
                    <h2>Expériences Professionnelles</h2>
                    <h3>Stage(s)</h3>
                    <div class="details">
                        <p><span>09/09/2013 - 14/07/2014</span> Alternance chez Applibox, Villefranche s/S (69) - Développeur EZ publish</p>
                    </div>
                    <h3>Emploi(s)</h3>
                    <div class="details">
                        <p><span>01/07/2013 - 31/07/2014</span> CDD dans l'agence 3c-evolution, Meylan (38) - Développeur Joomla!</p>
                    </div>
                    <h2>Compétences diverses</h2>
                    <h3>Compétences techniques</h3>
                    <div class="details">
                        <p><span class="competences">Langages de programmation</span> Java, PHP, JavaScript, HTML5, CSS3, UML, PL-SQL...</p>
                    </div>
                    <div class="details">
                        <p><span class="competences">Environnement</span> Connaissance des IDE Netbeans, Eclipse et PhpStorm.
                            Connaissances en réseau, architecture matérielle.
                            Maîtrise des environnements Unix, Windows XP, 7 et 8.
                            Notions des logiciels SAP, Solidedge, MatLab, Maple, Photoshop</p>
                    </div>
                    <h3>Langue(s) parlé(es)</h3>
                    <div class="details">
                        <p><span class="competences">Italien</span>Lu +++ Parlé +++ Ecrit +++</p>
                    </div>
                    <div class="details">
                        <p><span class="competences">Anglais</span>Lu ++ Parlé + Ecrit ++</p>
                    </div>
                    <h2>Intérêts</h2>
                    <div class="details">
                        <p><span class="interets">Judo</span>Ceinture noire, pratique depuis 16ans</p>
                    </div>
                </div>
            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>
