<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<horario>
			<profesor>Montse Madridejos</profesor>
			<xsl:apply-templates select="_____________________________" />
		</horario>
	</xsl:template>
 
</xsl:stylesheet>


<!-- <?xml version="1.0" encoding="UTF-8"?>
<stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
	<template match="/">
		<horario>
			<profesor>
				Montse Madridejos
			</profesor>
			<!-- <xsl:apply-templates match="hola"/> -->
			<!-- <apply-templates match="aula1" /> -->
		</horario>
	</template>
	<!--
	<xsl:template match="/horario/clase/" name="hloa">
	<p><xsl:value-of select="modulo" /></p>
	</xsl:template>


		<template match="horario/clase/aula/" name="aula1">
		<p>
			<attribute name="dia">
				<value-of select="/@dia" />
			</attribute>
		</p>
	</template>
	-->
 
</stylesheet> -->