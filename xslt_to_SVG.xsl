<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="DickinsonColl" select="collection('Dickinson')"/>
    <xsl:variable name="y-interval" select="10"/>
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
                    <!-- x-axis marks -->
                    <text x="50" y="25" text-anchor="middle" font-size="10px">Poem 1</text>
                    <line x1="50" x2="50" y1="10" y2="-10" stroke="black" stroke-width="1"/>
                    <text x="100" y="25" text-anchor="middle" font-size="10px">Poem 2</text>
                    <line x1="100" x2="100" y1="10" y2="-10" stroke="black" stroke-width="1"/>
                    <text x="150" y="25" text-anchor="middle" font-size="10px">Poem 3</text>
                    <line x1="150" x2="150" y1="10" y2="-10" stroke="black" stroke-width="1"/>
                    <text x="200" y="25" text-anchor="middle" font-size="10px">Poem 4</text>
                    <line x1="200" x2="200" y1="10" y2="-10" stroke="black" stroke-width="1"/>
                    <text x="250" y="25" text-anchor="middle" font-size="10px">Poem 5</text>
                    <line x1="250" x2="250" y1="10" y2="-10" stroke="black" stroke-width="1"/>
                    <text x="300" y="25" text-anchor="middle" font-size="10px">Poem 6</text>
                    <line x1="300" x2="300" y1="10" y2="-10" stroke="black" stroke-width="1"/>
                    <text x="350" y="25" text-anchor="middle" font-size="10px">Poem 7</text>
                    <line x1="350" x2="350" y1="10" y2="-10" stroke="black" stroke-width="1"/>
                    <text x="400" y="25" text-anchor="middle" font-size="10px">Poem 8</text>
                    <line x1="400" x2="400" y1="10" y2="-10" stroke="black" stroke-width="1"/>
                    <text x="450" y="25" text-anchor="middle" font-size="10px">Poem 9</text>
                    <line x1="450" x2="450" y1="10" y2="-10" stroke="black" stroke-width="1"/>
                    <text x="500" y="25" text-anchor="middle" font-size="10px">Poem 10</text>
                    <line x1="500" x2="500" y1="10" y2="-10" stroke="black" stroke-width="1"/>
                    <text x="550" y="25" text-anchor="middle" font-size="10px">Poem 11</text>
                    <line x1="550" x2="550" y1="10" y2="-10" stroke="black" stroke-width="1"/>
                </g>
                <g id="dots">
        <!--ebb: This seems to be working now. Compare the output values with what you can see in the poems' XML to
        double check! NOTE TO TEAM: I've set circles on your graph, and they look pretty but they are meaningless in relation to your
        Y axis and the title of your graph! 
        My numbers and values for the Y position of each red circle are just based on RAW COUNTS of the dash characters in each poem and have NOTHING to do with Percentages. You need to 
        work out how to produce percentages. It looks like you want to plot percentages based on the total number of dashes as 100%, and
        each published version's use of dashes as a distinct ratio over that original count. 
       
        -->        
              <xsl:for-each select="$DickinsonColl//TEI">
                  <xsl:variable name="poemNumber" select="number(substring-after(.//idno, '16'))"/>
                  <xsl:variable name="dashContainers">
                      <xsl:value-of select=".//body//*/text()[contains(., '&#8212;')]"/>
                  </xsl:variable>
                  <!--ebb: This variable, $dashContainers, steps down from the body element in each file in the collection, and 
                      holds the text nodes of any element that contain dash characters. -->
              <xsl:variable name="dashCount">
                  <xsl:value-of select="string-length($dashContainers) - string-length(translate($dashContainers, '&#8212;', ''))"/>
                  </xsl:variable>
               
              <!--ebb: You'll maybe want to comment out this "Dash Count!" below or use it differently in an SVG element: I just wanted a 
              readout of the dash count in the output code while checking! -->
              <xsl:comment><xsl:text>Dash Count! </xsl:text><xsl:value-of select="$dashCount"/></xsl:comment> 
                        <circle cx="{$poemNumber*$x-interval}" cy="-{$dashCount*$y-interval}" r="4" stroke="black" stroke-width="3" fill="red" />
                            
             
                    </xsl:for-each>
                </g>
            </g>
        </svg>
    </xsl:template>
   
    
</xsl:stylesheet>