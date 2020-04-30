<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>M04 -Notas</h1>
                <table style="border: solid 1px">

                    <tr style="border: solid 1px">
                        <th style="background-color:#81D62C">Foto</th>
                        <th style="background-color:#81D62C">Nombre</th>
                        <th style="background-color:#81D62C">Apellido</th>
                        <th style="background-color:#81D62C">Telefono</th>
                        <th style="background-color:#81D62C">Repetidor</th>
                        <th style="background-color:#81D62C">Nota practica</th>
                        <th style="background-color:#81D62C">Nota Examen</th>
                        <th style="background-color:#81D62C">Nota Total</th>
                    </tr>
                    <xsl:for-each select="/evaluacion/alumno">
                        <tr>
                            <th style="border: solid 1px">
                                <img src="./oscar.jpg" style="width:130px;height:90px;"/>
                            </th>
                            <th style="border: solid 1px">
                                <xsl:value-of select="nombre"></xsl:value-of>
                            </th>
                            <th style="border: solid 1px">
                                <xsl:value-of select="apellidos"></xsl:value-of>
                            </th>
                            <th style="border: solid 1px">
                                <xsl:value-of select="telefono"></xsl:value-of>
                            </th>
                            <th style="border: solid 1px">
                                <xsl:value-of select="@repite"></xsl:value-of>

                            </th>
                            <th style="border: solid 1px">
                                <xsl:value-of select="practicas"></xsl:value-of>
                            </th>
                            <th style="border: solid 1px">
                                <xsl:value-of select="examen"></xsl:value-of>
                            </th>
                            <th style="border: solid 1px">
                                <xsl:variable name="color" select="'red'" />
                                <xsl:choose>
                                    <xsl:when test="((examen+practicas) div 2) &lt; 5">
                                        <div style="color:red">
                                            <xsl:value-of select="(examen+practicas) div 2"></xsl:value-of>
                                        </div>
                                    </xsl:when>
                                    <xsl:when test="((examen+practicas) div 2) &gt;= 8">
                                        <div style="color:blue">
                                            <xsl:value-of select="(examen+practicas) div 2"></xsl:value-of>
                                        </div>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="(examen+practicas) div 2"></xsl:value-of>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </th>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>