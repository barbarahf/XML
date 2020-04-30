<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html lang="es">
			<head>MUNDO</head>
			<body>
				<h1>Continentes</h1>
				<xsl:for-each select="mundo/continente">
					<h2>
						<xsl:value-of select="nombre"></xsl:value-of>
					</h2>
					<xsl:variable name="colors" select="nombre/@color" />
					<table style="border: solid 1px {$colors}">
						<tr>
							<th style="font-weight: bold; border: solid 1px {$colors}">Pais</th>
							<th style="border: solid 1px {$colors}">Capital</th>
						</tr>
						<tr>
							<td style="border: solid 1px {$colors}">
								<xsl:value-of select="paises/pais/nombre"></xsl:value-of>
							</td>
							<td style="border: solid 1px {$colors}">
								<xsl:value-of select="paises/pais/capital"></xsl:value-of>
							</td>
						</tr>
					</table>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>