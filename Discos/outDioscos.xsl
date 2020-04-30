<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="discos">
        <xsl:variable name="text">
            <p> interpretado por </p>
        </xsl:variable>
        <xsl:variable name="elements">
            <xsl:for-each select="group">
                <xsl:value-of select="name"></xsl:value-of>
            </xsl:for-each>
        </xsl:variable>
        <xsl:variable name="ruta" select="//group"></xsl:variable>
        <lista>
            <xsl:for-each select="disco">
                <disco>
                    <xsl:value-of select="title"></xsl:value-of>
                    <xsl:value-of select="$text"></xsl:value-of>
                    <xsl:value-of select="$ruta = FEEDER"></xsl:value-of>
                    <!-- <xsl:if test="$ruta/@id = interpreter/@id"> -->

                    <!-- </xsl:if> -->
                </disco>
            </xsl:for-each>

        </lista>
    </xsl:template>
</xsl:stylesheet>