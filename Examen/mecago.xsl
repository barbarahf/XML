<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <horario>
            <profesor>
				Montse Madridejos
            </profesor>

            <xsl:apply-templates match="inside" />

        </horario>
    </xsl:template>


    <xsl:template match="clase" name="aula1">
        <xsl:for-each select="aula">
            <xsl:for-each select="modulo">
                <xsl:if test="@profesor ='Montse'">
                    <materia>
                        <xsl:attribute name = "dia">
                            <xsl:value-of select="@dia" />
                        </xsl:attribute>
                        <xsl:attribute name = "especialidad">
                            <xsl:value-of select="@especialidad" />
                        </xsl:attribute>
                        <xsl:attribute name = "curso">
                            <xsl:value-of select="@curso" />
                        </xsl:attribute>
                    </materia>
                </xsl:if>
            </xsl:for-each>
        </xsl:for-each>

    </xsl:template>


    <xsl:template match="aula1" name="inside">

    </xsl:template>
</xsl:stylesheet>