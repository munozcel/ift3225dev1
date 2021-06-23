<?xml version ="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Bibliotheqye</title>
                <style type="text/css"> th { background-color: silver; } .ligne {background-color: #ffcccc; } td { border-style: solid; border-width: 1px; }</style>
            </head>
            <body>
                <h2>Bibliotheque</h2>
                <table>
                    <tr>
                        <th>Titre</th>
                        <th>Annee</th>
                        <th>Prix</th>
                        <th>Couverture</th>
                        <th>Commentaire</th>
                    </tr>
                    <xsl:for-each select="bibliotheque/livres">
                        <xsl:sort select="titre" data-type="text" order="ascending"/>
                        <tr>
                            <xsl:if test="position() mod 2 = 0">
                                <xsl:attribute name="class">ligne</xsl:attribute>
                            </xsl:if>
                            <td>
                                <xsl:value-of select="titre"/>
                            </td>
                            <td>
                                <xsl:value-of select="annee"/>
                            </td>
                            <td>
                                <xsl:value-of select="prix"/>
                            </td>
                            <td>
                                <xsl:value-of select="couverture"/>
                            </td>
                            <td>
                                <xsl:value-of select="commentaire"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template