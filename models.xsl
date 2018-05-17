<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<head>
				<title>Monuments</title>
				<script type="text/javascript" src="code.js"></script>
				<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
				<style type="text/css" src="style.css"></style>
			</head>

			<body>
				<div class="title">
					<h1>Monuments of our Countries</h1>
				</div>

				<div class="search">
					
					<h2>Search</h2>
					<p>
						By text: 
						<input type="text" name="" id="searchbar"/>
						<input type="button" value="SEARCH" onclick="search();"/>
					</p>
					<p>
						By Country: 
						<select id="option" onclick="selectcountry();">
							<option value="all" selected="selected" >All</option>
							<option value="fr" >France</option>
							<option value="pt" >Portugal</option>
							<option value="es" >Spain</option>
							<option value="el" >Turkey</option>
						</select>

					</p>


				</div>

				<xsl:for-each select="monuments/monument">

					<div class="entry show">

						<div class="info">
							<h3><xsl:value-of select="names/name[@lang='en']"/></h3>

							<p>
								Located in 
								<xsl:value-of select="location/place"/>, 
								<xsl:value-of select="location/country"/>
							</p>
							<p>
								<xsl:value-of select="description"/>
							</p>
							<p>
								More info at
								<a> 
									<xsl:attribute name="href">
										<xsl:value-of select="link"/>
									</xsl:attribute>
									<xsl:value-of select="link"/>
								</a>

							</p>
						</div>
						<div class="image"> 
							<img>
								<xsl:attribute name="src">
									<xsl:value-of select="picture"/>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="names/name[@lang='en']"/>
								</xsl:attribute>
								<xsl:attribute name="height">300</xsl:attribute>
								<xsl:attribute name="width">300</xsl:attribute>

							</img> 
						</div>
					</div>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
