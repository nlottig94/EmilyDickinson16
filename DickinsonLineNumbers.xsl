<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:variable name="Dickinson" select="collection('Dickinson')"/>
    <xsl:template match="$Dickinson//l">
        <l>
            <xsl:attribute name="n"><xsl:value-of select="count(preceding::l) +1"/></xsl:attribute>
            <xsl:apply-templates select="l"/></l>
    </xsl:template>
</xsl:stylesheet>