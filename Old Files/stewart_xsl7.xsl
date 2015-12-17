<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:variable name="dickinsonColl" select="collection('Dickinson')"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Emily Dickinson's Fasicle 16</title>
                <link rel="stylesheet" type="text/css" href="stewart_xsl7.css"/> 
            </head>
            <body>
                <h1>Emily Dickinson’s Fascicle 16</h1>
                <h2>Table of Contents</h2>
                <ul>
                    <table>
                        <tr>
                            <th>Poem</th>
                            <th>First Line</th>
                            <th>Number of Lines</th>
                            <th>Number of Variants</th>
                            <th>Variants</th>
                        </tr>
                        <xsl:apply-templates select="$dickinsonColl//body" mode="toc"/>
                    </table>
                        
                </ul>
                <hr/>
                <div id="main">
                    <xsl:apply-templates select="$dickinsonColl//body"/>
                </div>
            </body>
        </html>
    </xsl:template>
    
 

    
    <xsl:template match="$dickinsonColl//body" mode="toc">
        <tr>
            <td><a href="#p{preceding::idno}"><xsl:apply-templates select="//body//title"/></a></td>
            <td><xsl:apply-templates select="//lg[1]/l[1]"/></td>
            <td><xsl:value-of select="count(//lg/l)"/></td>
            <td><xsl:value-of select="count(//rdg)"/></td>
            <td><xsl:apply-templates select="string-join((//rdg), '; ')"/></td>
        </tr>
    </xsl:template>

    <xsl:template match="$dickinsonColl//body">
        <h2 id="p{preceding::idno}"><xsl:apply-templates select=".//title"/></h2>
        <xsl:apply-templates select="lg"/>
    </xsl:template>
    
    <xsl:template match="$dickinsonColl//lg">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match="$dickinsonColl//l">
        <xsl:value-of select="count(preceding::l) +1"/><xsl:text>: </xsl:text> 
        <xsl:apply-templates/><br/>
    </xsl:template>
    <xsl:template match="$dickinsonColl//rdg">
        <span class="wit"><xsl:apply-templates/></span>
    </xsl:template>
    
</xsl:stylesheet>