<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" type="text/css" href="style.css"></link>
			</head>
			<body>
				<header>
					<h1>The Last 100 Reviews on GiantBomb.com</h1>
				</header>
				<h2>Reviews by Jeff Gerstmann</h2>
				<table>
					<tr>
					    <th>Game</th>
					    <th>Score</th>
					</tr>
					<xsl:for-each select="/response/results/review">
						<xsl:if test="reviewer = 'Jeff'">
							<tr>
								<td><xsl:value-of select="game/name"/></td>
								<td><xsl:value-of select="score"/>/5</td>
							</tr>
						</xsl:if>	
					</xsl:for-each>
				</table>
				<br></br>

				<h2>Reviews by Brad Shoemaker</h2>
				<table>
					<tr>
					    <th>Game</th>
					    <th>Score</th>
					</tr>
					<xsl:for-each select="/response/results/review">
						<xsl:if test="reviewer = 'Brad'">
							<tr>
								<td><xsl:value-of select="game/name"/></td>
								<td><xsl:value-of select="score"/>/5</td>
							</tr>
						</xsl:if>	
					</xsl:for-each>
				</table>

				<br></br>

				<h2>Reviews by Vinny Caravella</h2>
				<table>
					<tr>
					    <th>Game</th>
					    <th>Score</th>
					</tr>
					<xsl:for-each select="/response/results/review">
						<xsl:if test="reviewer = 'Vinny'">
							<tr>
								<td><xsl:value-of select="game/name"/></td>
								<td><xsl:value-of select="score"/>/5</td>
							</tr>
						</xsl:if>	
					</xsl:for-each>
				</table>	

				<br></br>

				<h2>Reviews by Ryan Davis</h2>
				<table>
					<tr>
					    <th>Game</th>
					    <th>Score</th>
					</tr>
					<xsl:for-each select="/response/results/review">
						<xsl:if test="reviewer = 'Ryan'">
							<tr>
								<td><xsl:value-of select="game/name"/></td>
								<td><xsl:value-of select="score"/>/5</td>
							</tr>
						</xsl:if>	
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
