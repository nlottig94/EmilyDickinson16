<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    <!--<xsl:variable name="Dickinson" select="collection('Dickinson')"/>-->
    <!--2016-02-08 ebb: This won't work because the line numbering doesn't really know 
    where to begin across the entire collection, and because you're running an identity transformation
    over a single file. So what we need to do instead is actually NOT work with 
    a variable for the collection for this, but instead set up <oXygen/> to run 
    an identity transform over each individual XML file in turn in the Dickinson directory. There's
    a way to set this up to do what we call a "batch transformation", and I wrote a tutorial on it for Obdurodon that I'm sharing on your Issues board. -->
    <xsl:template match="//l">
        <l n="{count(preceding::l) +1}">
           <xsl:apply-templates/>
        </l>
    </xsl:template>
</xsl:stylesheet>