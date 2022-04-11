<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <script src="back.js" type="text/javascript"></script>
        <body> 
            <p style="position:absolute; left:600px; top:0px; font-size:40px; font-family:'Brush Script MT'; color:#FF66FF;"><xsl:copy-of select="key('chooseIntro','yse')"/></p>
            <table border="1" style="background-image: url(./gold.png);background-repeat: no-repeat;background-position: center;
            position:absolute; left:350px; top:100px; width:1200;height:600px">
                <xsl:copy-of select="$header" />
                <xsl:apply-templates select="ChinaMedals/medals/golds"/>
            </table>
            <table border="1" style="background-image: url(./silver.png);background-repeat: no-repeat;background-position: center;
            position:absolute; left:350px; top:700px; width:1200;height:200px">
                <xsl:copy-of select="$header" />
                <xsl:apply-templates select="ChinaMedals/medals/silvers"/>
            </table>
            <table border="1" style="background-image: url(./bronze.png);background-repeat: no-repeat;background-position: center;
            position:absolute; left:350px; top:900px; width:1200;">
                <xsl:copy-of select="$header" />
                <xsl:apply-templates select="ChinaMedals/medals/bronzes"/>
            </table>
            <p><a href="wwbbzz_1-6-1.xml">back</a></p>
        </body>
    </html>
</xsl:template>

<xsl:template name="common_player">
    <xsl:param name="kind"/>
    <xsl:for-each select="$kind">
        <xsl:sort select="NAME"/>
        <tr>
            <xsl:if test="position() mod 2 = 1">
                <xsl:attribute name="bgcolor">grey</xsl:attribute>
            </xsl:if>
            <td style="font-size:30px;font-family:Papyrus;color:blue;text-align:center;width:500px">
                <xsl:choose>
                    <xsl:when test="NAME/@isSingle = 'true'">
                        <xsl:value-of select="NAME"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <ins><xsl:value-of select="NAME"/></ins>
                    </xsl:otherwise>
                </xsl:choose>
            </td>
            <td style="width:300px"><xsl:for-each select="current()/PLAYER/player">
                <div>
                    <xsl:number format="1"/>.
                    <strong style="font-size:20px; color:green"><xsl:value-of select="playerName"/></strong>
                    _
                    <em style="font-size:10px;"><xsl:value-of select="playerSex"/></em>
                </div>
            </xsl:for-each></td>
            <td style="font-size:20px;color:red;text-align:center"><xsl:value-of select="SCORE"/></td>            
        </tr>
    </xsl:for-each>
</xsl:template>

<xsl:key name="chooseIntro" match="ChinaMedals/intro" use="@isUse"/>

<xsl:variable name="header">
    <tr bgcolor="#9acd32">
        <th>Competition Items</th>
        <th>Participants</th>
        <th>Grades</th>
    </tr>
</xsl:variable>

<xsl:template match="ChinaMedals/medals/golds">
    <xsl:call-template name="common_player">
        <xsl:with-param name="kind" select="gold"></xsl:with-param>
    </xsl:call-template>
</xsl:template>

<xsl:template match="ChinaMedals/medals/silvers">
    <xsl:call-template name="common_player">
        <xsl:with-param name="kind" select="silver"></xsl:with-param>
    </xsl:call-template>
</xsl:template>

<xsl:template match="ChinaMedals/medals/bronzes">
    <xsl:call-template name="common_player">
        <xsl:with-param name="kind" select="bronze"></xsl:with-param>
    </xsl:call-template>
</xsl:template>

</xsl:stylesheet>