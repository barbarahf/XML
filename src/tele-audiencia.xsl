<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/programacio">
        <cadena>
            <nom>Un tv</nom>
            <programes>
                <xsl:for-each select="audiencia">
                    <!-- añadir atributo -->
                    <programa>
                        <xsl:attribute name="hora">
                            <xsl:value-of select="hora" />
                        </xsl:attribute>
                        <nom-programa>
                            <xsl:for-each select="cadenes">
                                <xsl:value-of select="cadena[@nom='Un TV']"></xsl:value-of>
                                <audiencia>
                                    <!-- <xsl:value-of select="cadena[@nom='Un TV']/@porcentatge"></xsl:value-of> -->
                                    <xsl:value-of select="cadena[@nom='Un TV']/@percentatge"></xsl:value-of>
                                </audiencia>
                            </xsl:for-each>
                        </nom-programa>
                    </programa>
                </xsl:for-each>
            </programes>
        </cadena>
    </xsl:template>
</xsl:stylesheet><!-- Hacer lo mismo con templates (eliminar for) -->
