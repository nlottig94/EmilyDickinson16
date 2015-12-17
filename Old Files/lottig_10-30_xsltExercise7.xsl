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
    
    <xsl:variable name="poems" select="collection('Dickinson')"/>
    <!--<xsl:variable name="newline" select="'&#10;'"/>-->
    <!-- nll 11-1:  Thie xslt is going through the Dickinson files that we have been working with.  Therefore, I have not uploaded all of those files because I am sure you all have them already! -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Emily Dickinson's Fascicle 16</title>
                <link rel="stylesheet" type="text/css" href="lottig_xslt7_style.css"/>
                <!--<link rel="stylesheet" type="text/css" href="stewart_xsl7.css"/>-->
            </head>
            <body>
                <h1>Emily Dickinson's Fascicle 16</h1>
                <div class="Contents">
                    <h2>Table of Contents</h2>
                    <ul>
                       <xsl:apply-templates select="$poems//body" mode="ToC"/>
                    </ul>
                </div>
                <hr/>
                <div class="Table">
                    <h2>Variants Within the Poems</h2>
                    <table>
                        <tr>
                            <th>Title of Poem</th>
                            <th>First Line</th>
                            <th>Number of Lines in the Poem</th>
                            <th>Presence of Variants</th>
                            <th>Number of Variants</th>
                            <th>Variant 1</th>
                            <th>Variant 2</th>
                            <th>Variant 3</th>
                        </tr>
                        <xsl:apply-templates select="$poems//body" mode="Table"/>
                    </table>
                </div>
                <div class="main">
                    <xsl:apply-templates select="$poems//body"/>
                </div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="body" mode="ToC">
        <li>
            <a href="#p{//idno}"><strong><xsl:apply-templates select="//head/title"/></strong></a>: <xsl:apply-templates select="//lg[1]/l[1]"/>
            [Variants: <xsl:value-of select="count(//rdg/@wit)"/>]
        </li>
    </xsl:template>
    
    <xsl:template match="body" mode="Table">
        <tr>
            <td><a href="#p{//idno}"><strong><xsl:apply-templates select="//head/title"/></strong></a></td>
            <td><xsl:apply-templates select="//lg[1]/l[1]"/></td>
            <td><xsl:value-of select="count(//lg/l)"/></td>
            <td><xsl:apply-templates select=".//l/app/rdg/@wit='var0'"/></td>
            <td><xsl:value-of select="count(//rdg/@wit)"/></td>
            <td><ul><xsl:for-each select="distinct-values(.//l/app/rdg[@wit='var0'])"><li><xsl:value-of select="."/></li></xsl:for-each></ul></td> <!--nll 11-2: I figured it out!! -->
            <td><ul><xsl:for-each select="distinct-values(.//l/app/rdg[@wit='var1'])"><li><xsl:value-of select="."/></li></xsl:for-each></ul></td>
            <td><ul><xsl:for-each select="distinct-values(.//l/app/rdg[@wit='var2'])"><li><xsl:value-of select="."/></li></xsl:for-each></ul></td>
        </tr>
    </xsl:template>
    
    <xsl:template match="head">
        <h2 id="p{//idno}"><xsl:apply-templates select="//head/title"/></h2>
    </xsl:template>
    
    <xsl:template match="lg">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="l">
        <xsl:apply-templates select="count(preceding::l) + 1"/>: <xsl:apply-templates/>
        <xsl:if test="following-sibling::l">
            <br/>
            <xsl:text>&#x0A;</xsl:text>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="rdg">
        <span class="{@wit}"><xsl:apply-templates/></span>
    </xsl:template>

</xsl:stylesheet>