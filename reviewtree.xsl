<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>

			<style>
				/*style.css*/
				html
				{
					font-family: sans-serif;
				}

				header
				{
					font-size: 2em;
					font-family: sans-serif;
					background-color: #388E3C;
					color: white;
					padding-top: 40px;
					padding-bottom: 40px;
					padding-left: 60px;
					/*box-shadow: 0 14px 12px 0 rgba(0, 0, 0, 0.17);*/
					

				}

				h2
				{
					font-size:1.5em;
					background-color: #388E1C;
					font-family: sans-serif;
					color: white;
					padding-top: 20px;
					padding-bottom: 20px;
					padding-left: 20px;
				}

				table
				{
					border-collapse: collapse;
				    width: 100%;
				    border: 1px solid black;
				    text-align: left;
				    padding: 8px;
				}

				td
				{
					padding: 15px;
				    text-align: left;
				    border: 1px solid gray;
				}

				tr:nth-child(even) 
				{
					background-color: #f2f2f2
				}

				th {
				    padding-top: 12px;
				    padding-bottom: 12px;
				    padding-left: 15px;
				    background-color: #4CAF50;
				    color: white;
				}

				p
				{
					text-align: center;
				}

				a
				{
					outline: black solid 1px;
					padding: 10px;
					background-color: #E0E0E0;
					color: black;
				}
			</style>
			<head>
				
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
