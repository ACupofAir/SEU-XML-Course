<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <script src="back.js" type="text/javascript"></script>
        <body style="position:relative"> 
            <iframe src="group.svg" frameborder="0" style="position:absolute; left:350px; top:300px; width:250; height:100"/>
            <table style="position:absolute; left:350px; top:500px; width:250; height:100; color:Tomato;" border="0">
                <tr><td style="text-align:center; font-family:Papyrus; font-size:50px;"><xsl:value-of select="xmlGroup/groupName" /></td></tr>
                <tr><td style="text-align:center; font-family:Papyrus; font-size:15px;"><xsl:value-of select="xmlGroup/groupBrief" /></td></tr>
            </table>
            <xsl:apply-templates select="xmlGroup/groupMember"/>
            <iframe src="logo1.svg" frameborder="0" style="position:absolute; left:1450px; top:300px; width:300; height:100"/>
            <iframe src="logo2.svg" frameborder="0" style="position:absolute; left:1450px; top:450px; width:200; height:200"/>
            <p><a href="wwbbzz_1-6-2.xml">data</a></p>
            <p><a href="wwbbzz_1-6-3.xml">publicize</a></p>
        </body>
    </html>
</xsl:template>

<xsl:template match="xmlGroup/groupMember">
<table style="position:absolute; left:700px; top:300px; width:700; height:400; color:#e6ffff; font-family:Papyrus; font-size:20px;">
    <xsl:for-each select="member">
        <tr>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="cno"/></td>
        </tr>
        <tr><td><xsl:value-of select="brief"/></td></tr>
        <tr><td><xsl:value-of select="info"/></td></tr>
    </xsl:for-each>
</table>
</xsl:template>

</xsl:stylesheet>