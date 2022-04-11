<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <script src="back.js" type="text/javascript"></script>
        <body> 
            <!-- <img src="dongaohui.png"></img> -->
            <iframe src="balloons-25746.svg" frameborder="0" style="position:absolute; left:350px; top:300px; width:250; height:100"/>
            <iframe src="balloons-25746.svg" frameborder="0" style="position:absolute; left:1350px; top:300px; width:250; height:100"/>
            <iframe src="party-309155.svg" frameborder="0" style="position:absolute; left:700px; top:600px; width:250; height:100"/>
            <iframe src="party-309155.svg" frameborder="0" style="position:absolute; left:1000px; top:600px; width:250; height:100"/>
            <table style="position:absolute; left:550px; top:100px; width:850px; text-align:center" border="0">
                <tr>
                    <td style="font-size:100px; font-family:'Brush Script MT'; color:blue;">2022 Winter Olympic</td>
                </tr>
                <tr>
                    <td style="font-size:60px; font-family:'Brush Script MT'; color:brown;"><xsl:value-of select="advertisement/rank_of_china" /></td>
                </tr>
                <tr>
                    <td style="font-size:35px; font-family:'Brush Script MT'; color:gold;"><xsl:value-of select="advertisement/num_of_golds" /></td>
                </tr>
            </table>
            <p><a href="wwbbzz_1-6-1.xml">back</a></p>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>