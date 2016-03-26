<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="DickinsonColl" select="collection('Dickinson')"/>
    <xsl:variable name="y-interval" select="4"/>
    <xsl:variable name="x-interval" select="50"/>
   
   
    <xsl:template match="/">
        <svg width="100%" height="125%">
            <g transform="translate(100, 550)">
                <g id="baseStuff">
                    <line x1="25" x2="25" y1="0" y2="-450" stroke="#EEEEEE" stroke-width="50"/>
                    <line x1="125" x2="125" y1="0" y2="-450" stroke="#EEEEEE" stroke-width="50"/>
                    <line x1="225" x2="225" y1="0" y2="-450" stroke="#EEEEEE" stroke-width="50"/>
                    <line x1="325" x2="325" y1="0" y2="-450" stroke="#EEEEEE" stroke-width="50"/>
                    <line x1="425" x2="425" y1="0" y2="-450" stroke="#EEEEEE" stroke-width="50"/>
                    <line x1="525" x2="525" y1="0" y2="-450" stroke="#EEEEEE" stroke-width="50"/>
                    <!-- title -->
                    <text x="275" y="-485" text-anchor="middle" font-size="25px" font-family="'Open Sans', sans-serif">Percentage of Dash Reduction</text>
                    <text x="275" y="-460" text-anchor="middle" font-size="25px" font-family="'Open Sans', sans-serif">in Published Versions Compared to Originals</text>
                    <!-- y-Axis -->
                    <!--<line x1="0" x2="0" y1="0" y2="-450" stroke="black" stroke-width="1"/>-->
                    <!-- x-Axis -->
                    <line x1="-1" x2="550" y1="0" y2="0" stroke="black" stroke-width="1"/>
                    <!-- y-axis marks -->
                    <text x="-25" y="-100" text-anchor="middle" font-family="'Open Sans', sans-serif">25%</text>
                    <line x1="-10" x2="550" y1="-100" y2="-100" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                    <text x="-25" y="-200" text-anchor="middle" font-family="'Open Sans', sans-serif">50%</text>
                    <line x1="-10" x2="550" y1="-200" y2="-200" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                    <text x="-25" y="-300" text-anchor="middle" font-family="'Open Sans', sans-serif">75%</text>
                    <line x1="-10" x2="550" y1="-300" y2="-300" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                    <text x="-25" y="-400" text-anchor="middle" font-family="'Open Sans', sans-serif">100%</text>
                    <line x1="-10" x2="550" y1="-400" y2="-400" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                    <!-- y-axis label -->
                    <text x="210" y="-50" transform="rotate(-90)" text-anchor="middle" font-size="14px" font-family="'Open Sans', sans-serif">Percentage of Reduction</text>
                    <!-- x-axis marks -->
                    <line x1="0" x2="0" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="25" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 1</text>
                    <line x1="50" x2="50" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="75" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 2</text>
                    <line x1="100" x2="100" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="125" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 3</text>
                    <line x1="150" x2="150" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="175" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 4</text>
                    <line x1="200" x2="200" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="225" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 5</text>
                    <line x1="250" x2="250" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="275" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 6</text>
                    <line x1="300" x2="300" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="325" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 7</text>
                    <line x1="350" x2="350" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="375" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 8</text>
                    <line x1="400" x2="400" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="425" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 9</text>
                    <line x1="450" x2="450" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="475" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 10</text>
                    <line x1="500" x2="500" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="525" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 11</text>
                    <line x1="550" x2="550" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <!--<line x1="0" x2="0" y1="10" y2="-450" stroke="grey" stroke-width="2.5"/>
                    <text x="25" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 1</text>
                    <line x1="50" x2="50" y1="10" y2="-450" stroke="black" stroke-width="2.5" stroke-dasharray="10 5"/>
                    <text x="75" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 2</text>
                    <line x1="100" x2="100" y1="10" y2="-450" stroke="black" stroke-width="2.5" stroke-dasharray="10 5"/>
                    <text x="125" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 3</text>
                    <line x1="150" x2="150" y1="10" y2="-450" stroke="black" stroke-width="2.5" stroke-dasharray="10 5"/>
                    <text x="175" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 4</text>
                    <line x1="200" x2="200" y1="10" y2="-450" stroke="black" stroke-width="2.5" stroke-dasharray="10 5"/>
                    <text x="225" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 5</text>
                    <line x1="250" x2="250" y1="10" y2="-450" stroke="black" stroke-width="2.5" stroke-dasharray="10 5"/>
                    <text x="275" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 6</text>
                    <line x1="300" x2="300" y1="10" y2="-450" stroke="black" stroke-width="2.5" stroke-dasharray="10 5"/>
                    <text x="325" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 7</text>
                    <line x1="350" x2="350" y1="10" y2="-450" stroke="black" stroke-width="2.5" stroke-dasharray="10 5"/>
                    <text x="375" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 8</text>
                    <line x1="400" x2="400" y1="10" y2="-450" stroke="black" stroke-width="2.5" stroke-dasharray="10 5"/>
                    <text x="425" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 9</text>
                    <line x1="450" x2="450" y1="10" y2="-450" stroke="black" stroke-width="2.5" stroke-dasharray="10 5"/>
                    <text x="475" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 10</text>
                    <line x1="500" x2="500" y1="10" y2="-450" stroke="black" stroke-width="2.5" stroke-dasharray="10 5"/>
                    <text x="525" y="25" text-anchor="middle" font-size="10px" font-family="'Open Sans', sans-serif">Poem 11</text>
                    <line x1="550" x2="550" y1="10" y2="-450" stroke="grey" stroke-width="2.5"/>-->
                </g>
                <g id="legend">
                    <circle cx="25" cy="55" r="15" fill="#0099CC" />
                    <text x="40" y="58" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black">&#10137;</text>
                    <text x="52" y="47" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">The Poems of Emily</text>
                    <text x="75" y="59" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">Dickinson,</text>
                    <text x="55" y="71" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">Centenary Edition</text>
                    <circle cx="25" cy="115" r="15" fill="#ec008c" />
                    <text x="40" y="118" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black">&#10137;Letter to Susan Dickinson</text>
                    <circle cx="25" cy="175" r="15" fill="#ff4dff" />
                    <text x="40" y="178" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">&#10137;Atlantic Monthly</text>
                    <circle cx="210" cy="55" r="15" fill="#8800CC" />
                    <text x="225" y="58" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">&#10137;Bolts of Melody</text>
                    <circle cx="210" cy="115" r="15" fill="#2200CC" />
                    <text x="225" y="118" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">&#10139;Final Harvest</text>
                    <circle cx="210" cy="175" r="15" fill="#00CC00" />
                    <text x="225" y="178" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">&#10137;Further Poems</text>
                    <circle cx="400" cy="175" r="15" fill="#ACE500" />
                    <text x="415" y="178" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">&#10137;Poems, Third Series</text>
                    <circle cx="400" cy="115" r="15" fill="#FFFF00" />
                    <text x="415" y="118" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">&#10137;Poems, Second Series</text>
                    <circle cx="400" cy="55" r="15" fill="#FF9900" />
                    <text x="415" y="58" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">&#10137;Poems</text>
                    
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
                  
                 <!--ebb: Here's one way to calculate the dashes, using analyze-string within an inner for-each loop.
                 We need a for-each because we have to look inside each element that contains a dash (within each poem). Then
                 we use analyze-string to isolate the dash characters, and output a letter "X" every time it finds one. As this variable loops through
                 each text node, it accumulates a string of X characters for every dash it finds. In the variable following
                 this one, $dashCount, we calculate the string-length of those X's.-->
                  
                  <xsl:variable name="nonRdgDash">
                      <xsl:for-each select="//l[text()[contains(., '&#8212;')]]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountNonRdg">
                      <xsl:value-of select="string-length($nonRdgDash)"/>
                  </xsl:variable>
                  
                  <xsl:variable name="dashX">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#df16') or contains(., 'var')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                       <xsl:matching-substring>
                           <xsl:text>X</xsl:text>
                       </xsl:matching-substring>        
                      </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountDickinson">
                      <xsl:value-of select="string-length($dashX) + $dashCountNonRdg"/>
                  </xsl:variable>
                  
                  <xsl:variable name="ceDash">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#ce')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountCE">
                      <xsl:value-of select="string-length($ceDash) + $dashCountNonRdg"/>
                  </xsl:variable>
                  <xsl:variable name="CER">
                      <xsl:value-of select="(($dashCountDickinson - $dashCountCE) div $dashCountDickinson) * 100"/>
                  </xsl:variable>
                  <xsl:variable name="lsdDash">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#lSD')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountlSD">
                      <xsl:value-of select="string-length($lsdDash) + $dashCountNonRdg"/>
                  </xsl:variable>
                  <xsl:variable name="lSD">
                      <xsl:value-of select="(($dashCountDickinson - $dashCountlSD) div $dashCountDickinson) * 100"/>
                  </xsl:variable>
                  
                  <xsl:variable name="amDash">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#am')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountAM">
                      <xsl:value-of select="string-length($amDash) + $dashCountNonRdg"/>
                  </xsl:variable>
                  <xsl:variable name="am">
                      <xsl:value-of select="(($dashCountDickinson - $dashCountAM) div $dashCountDickinson) * 100"/>
                  </xsl:variable>
                  
                  <xsl:variable name="bmDash">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#bm')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountBM">
                      <xsl:value-of select="string-length($bmDash) + $dashCountNonRdg"/>
                  </xsl:variable>
                  <xsl:variable name="bm">
                      <xsl:value-of select="(($dashCountDickinson - $dashCountBM) div $dashCountDickinson) * 100"/>
                  </xsl:variable>
                  
                  <xsl:variable name="fhDash">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#fh')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountFH">
                      <xsl:value-of select="string-length($fhDash) + $dashCountNonRdg"/>
                  </xsl:variable>
                  <xsl:variable name="fh">
                      <xsl:value-of select="(($dashCountDickinson - $dashCountFH) div $dashCountDickinson) * 100"/>
                  </xsl:variable>
                  
                  <xsl:variable name="fpDash">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#fp')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountFP">
                      <xsl:value-of select="string-length($fpDash) + $dashCountNonRdg"/>
                  </xsl:variable>
                  <xsl:variable name="fp">
                      <xsl:value-of select="(($dashCountDickinson - $dashCountFP) div $dashCountDickinson) * 100"/>
                  </xsl:variable>
                  
                  <xsl:variable name="poems3Dash">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#poems3')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountPOEMS3">
                      <xsl:value-of select="string-length($poems3Dash) + $dashCountNonRdg"/>
                  </xsl:variable>
                  <xsl:variable name="poems3">
                      <xsl:value-of select="(($dashCountDickinson - $dashCountPOEMS3) div $dashCountDickinson) * 100"/>
                  </xsl:variable>
                  
                  <xsl:variable name="poems2Dash">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#poems2')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountPOEMS2">
                      <xsl:value-of select="string-length($poems2Dash) + $dashCountNonRdg"/>
                  </xsl:variable>
                  <xsl:variable name="poems2">
                      <xsl:value-of select="(($dashCountDickinson - $dashCountPOEMS2) div $dashCountDickinson) * 100"/>
                  </xsl:variable>
                  
                  <xsl:variable name="poems1Dash">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#poems1')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountPOEMS1">
                      <xsl:value-of select="string-length($poems1Dash) + $dashCountNonRdg"/>
                  </xsl:variable>
                  <xsl:variable name="poems1">
                      <xsl:value-of select="(($dashCountDickinson - $dashCountPOEMS1) div $dashCountDickinson) * 100"/>
                  </xsl:variable>
                 
                  <!--ebb: Here is an alternate way to count the dashes (commented out variables below). These variables 
                      calculate the dash count thus:
                      1) We first calculate the string-length of the node that contains one or more dashes, 
                      2) Then we use translate() to remove the dashes out of the string, and
                      3) Finally we subtract the shorter string-length (without dashes) from the first
                      string-length. This approach yields the same values as the one I've activated above.
                 <xsl:variable name="dashContainers">
                      <xsl:value-of select=".//body//*/text()[contains(., '&#8212;')]"/>
                  </xsl:variable>
                  <!-\-ebb: This variable, $dashContainers, steps down from the body element in each file in the collection, and 
                      holds the text nodes of any element that contain dash characters. -\->
              <xsl:variable name="dashCount">
                  <xsl:value-of select="string-length($dashContainers) - string-length(translate($dashContainers, '&#8212;', ''))"/>
                  </xsl:variable>-->
               
              <!--ebb: You'll maybe want to comment out this "Dash Count!" below or use it differently in an SVG element: I just wanted a 
              diagnostic reading of the dash count in the output code while checking! -->
              <xsl:comment><xsl:text>Poem number: </xsl:text><xsl:value-of select="$poemNumber"/>
                  <xsl:text>. Dash Count: </xsl:text><xsl:value-of select="$dashCountDickinson"/>
              <xsl:text> CE % Reduction: </xsl:text><xsl:value-of select="$CER"/>
              <xsl:text> CE Dash Count: </xsl:text><xsl:value-of select="$dashCountCE"/></xsl:comment> 
                  <xsl:if test="(count(//rdg[@wit[contains(., '#ce')]])) &gt; 0"><line x1="{($poemNumber*$x-interval)-45}" x2="{($poemNumber*$x-interval)-45}" y1="0" y2="-{$CER*$y-interval}" stroke="#0099CC" stroke-width="3"/><circle cx="{($poemNumber*$x-interval)-45}" cy="-{$CER*$y-interval}" r="3" fill="#0099CC" /></xsl:if>
                  
                  <xsl:if test="(count(//rdg[@wit[contains(., '#lSD')]])) &gt; 0"><line x1="{($poemNumber*$x-interval)-40}" x2="{($poemNumber*$x-interval)-40}" y1="0" y2="-{$lSD*$y-interval}" stroke="#ec008c" stroke-width="3"/><circle cx="{($poemNumber*$x-interval)-40}" cy="-{$lSD*$y-interval}" r="3" fill="#ec008c" /></xsl:if>
                  
                  <xsl:if test="(count(//rdg[@wit[contains(., '#am')]])) &gt; 0"><line x1="{($poemNumber*$x-interval)-35}" x2="{($poemNumber*$x-interval)-35}" y1="0" y2="-{$am*$y-interval}" stroke="#ff4dff" stroke-width="3"/><circle cx="{($poemNumber*$x-interval)-35}" cy="-{$am*$y-interval}" r="3" fill="#ff4dff" /></xsl:if>
                  
                  <xsl:if test="(count(//rdg[@wit[contains(., '#bm')]])) &gt; 0"><line x1="{($poemNumber*$x-interval)-30}" x2="{($poemNumber*$x-interval)-30}" y1="0" y2="-{$bm*$y-interval}" stroke="#8800CC" stroke-width="3"/><circle cx="{($poemNumber*$x-interval)-30}" cy="-{$bm*$y-interval}" r="3" fill="#8800CC" /></xsl:if>
                  
                  <xsl:if test="(count(//rdg[@wit[contains(., '#fh')]])) &gt; 0"><line x1="{($poemNumber*$x-interval)-25}" x2="{($poemNumber*$x-interval)-25}" y1="0" y2="-{$fh*$y-interval}" stroke="#2200CC" stroke-width="3"/><circle cx="{($poemNumber*$x-interval)-25}" cy="-{$fh*$y-interval}" r="3" fill="#2200CC" /></xsl:if>
                  
                  <xsl:if test="(count(//rdg[@wit[contains(., '#fp')]])) &gt; 0"><line x1="{($poemNumber*$x-interval)-20}" x2="{($poemNumber*$x-interval)-20}" y1="0" y2="-{$fp*$y-interval}" stroke="#00CC00" stroke-width="3"/><circle cx="{($poemNumber*$x-interval)-20}" cy="-{$fp*$y-interval}" r="3" fill="#00CC00" /></xsl:if>
                  
                  <xsl:if test="(count(//rdg[@wit[contains(., '#poems3')]])) &gt; 0"><line x1="{($poemNumber*$x-interval)-15}" x2="{($poemNumber*$x-interval)-15}" y1="0" y2="-{$poems3*$y-interval}" stroke="#ACE500" stroke-width="3"/><circle cx="{($poemNumber*$x-interval)-15}" cy="-{$poems3*$y-interval}" r="3" fill="#ACE500" /></xsl:if>
                  
                  <xsl:if test="(count(//rdg[@wit[contains(., '#poems2')]])) &gt; 0"><line x1="{($poemNumber*$x-interval)-10}" x2="{($poemNumber*$x-interval)-10}" y1="0" y2="-{$poems2*$y-interval}" stroke="#FFFF00" stroke-width="3"/><circle cx="{($poemNumber*$x-interval)-10}" cy="-{$poems2*$y-interval}" r="3" fill="#FFFF00" /></xsl:if>
                  
                  <xsl:if test="(count(//rdg[@wit[contains(., '#poems1')]])) &gt; 0"><line x1="{($poemNumber*$x-interval)-5}" x2="{($poemNumber*$x-interval)-5}" y1="0" y2="-{$poems1*$y-interval}" stroke="#FF9900" stroke-width="3"/><circle cx="{($poemNumber*$x-interval)-5}" cy="-{$poems1*$y-interval}" r="3" fill="#FF9900" /></xsl:if>
                  </xsl:for-each>
                  </g>
            </g>
        </svg>
    </xsl:template>
   
    
</xsl:stylesheet>