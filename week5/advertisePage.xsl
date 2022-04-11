<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
		<body style="margin:0;"> 
			<img src="background.svg" style="z-index:-10; position:fixed; width:100%"/>
			<img src="dracula.svg" style="width:400px;z-index:-10; opacity: 0.7; position:fixed; left:40%; top: 50%"/>
			<div style="padding-top: 5%">
				<div style="text-align:center; font-family:cursive; font-size:35px;">
					<img src="email.svg" style="width:50px; margin-right:20px"/>
					<xsl:value-of select="advertise/email" />
				</div>
				<div style="text-align:center; font-family:cursive; font-size:35px;margin-top:20px">
					<img src="github.svg" style="width:50px; margin-right:20px;"/>
					<xsl:value-of select="advertise/github" />
				</div>
			</div>
			<p style=" text-align:center">
				<a href="teamPage.xml">
					<img src="home.svg" style="width:70px;"/>
				</a>
			</p>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>