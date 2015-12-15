<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="DickinsonColl" select="collection('Dickinson')"/>
    <xsl:variable name="y-interval" select="100"/>
    <xsl:variable name="x-interval" select="50"/>
    
    <xsl:template match="/">
        <svg width="100%" height="100%">
            <g transform="translate(100, 600)">
                <g id="baseStuff">
                    <!-- title -->
                    <text x="275" y="-525" text-anchor="middle" font-size="18px">Percentage of Dash Changes in Published Versions Compared to Originals</text>
                    <!-- y-Axis -->
                    <line x1="0" x2="0" y1="0" y2="-450" stroke="black" stroke-width="1"/>
                    <!-- x-Axis -->
                    <line x1="-1" x2="550" y1="0" y2="0" stroke="black" stroke-width="1"/>
                    <!-- y-axis marks -->
                    <text x="-25" y="-100" text-anchor="middle">25%</text>
                    <line x1="-10" x2="550" y1="-100" y2="-100" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                    <text x="-25" y="-200" text-anchor="middle">50%</text>
                    <line x1="-10" x2="550" y1="-200" y2="-200" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                    <text x="-25" y="-300" text-anchor="middle">75%</text>
                    <line x1="-10" x2="550" y1="-300" y2="-300" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                    <text x="-25" y="-400" text-anchor="middle">100%</text>
                    <line x1="-10" x2="550" y1="-400" y2="-400" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                    <!-- y-axis label -->
                    <text x="210" y="-50" transform="rotate(-90)" text-anchor="middle" font-size="20px">Percentage of Usages</text>
                    
                </g>
            </g>
        </svg>
    </xsl:template>
    
</xsl:stylesheet>