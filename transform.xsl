<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:tei="http://www.tei-c.org/ns/1.0">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="//titleStmt/title/title"/><xsl:text> </xsl:text><xsl:value-of select="//div1/@rend"/></title>
                <style>
                    body { font-family: Arial, sans-serif; }
                    .line-number { font-weight: bold; position: absolute; left: 5em;}
                    .line .line-number { margin-left: -10em; }
                    .line { text-indent: 10em; }	
                    .booklist { margin: auto; width: 50%; padding: 10px; }
                    .goUpLink { color: inherit; text-decoration: inherit; }
                </style>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="//titleStmt/title/title"/> - <xsl:value-of select="//div1/@rend"/>
                </h1>
                <div class="booklist"><a href="./Perseus:text:2011.01.0831.html">1</a> ❦
                    <a href="./Perseus:text:2011.01.1002.html">2</a> ❦
                    <a href="./Perseus:text:2011.01.0250.html">3</a> ❦
                    <a href="./Perseus:text:2011.01.0401.html">4</a> ❦
                    <a href="./Perseus:text:2011.01.0712.html">5</a> ❦
                    <a href="./Perseus:text:2011.01.0411.html">6</a> ❦
                    <a href="./Perseus:text:2011.01.0779.html">7</a> ❦
                    <a href="./Perseus:text:2011.01.0659.html">8</a> ❦
                    <a href="./Perseus:text:2011.01.0578.html">9</a> ❦
                    <a href="./Perseus:text:2011.01.0991.html">10</a> ❦
                    <a href="./Perseus:text:2011.01.1068.html">11</a> ❦
                    <a href="./Perseus:text:2011.01.0242.html">12</a>
                </div>
                <div>
                    <xsl:apply-templates select="//div1/l"/>
                </div>
                <div>
<p>Text provided by Perseus Digital Library (<a href="https://creativecommons.org/licenses/by-sa/3.0/">CC BY-SA 3.0</a>). Original version available for viewing and download at <a href="http://www.perseus.tufts.edu/hopper/">http://www.perseus.tufts.edu/hopper/</a>.</p>
</div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="l">
        <div class="line">
            <xsl:if test="@n mod 5 = 0">
                <span class="line-number"><a href="#" class="goUpLink"><xsl:value-of select="@n"/></a></span>
            </xsl:if>
            <xsl:value-of select="."/>
        </div>
    </xsl:template>
</xsl:stylesheet>
