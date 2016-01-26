<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
    <ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
   
   <pattern>
       <rule context="stooge">
           <assert test="text() &lt; 100">
               One stooge can't have more than 100!!
           </assert>
       </rule>
   </pattern>
    <pattern>
        <rule context="stooge">
            <assert test="text() &gt; 0">
                One stooge has to have more than 0!!
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="results">
            <assert test="./stooge[@name='Curly']/text() + ./stooge[@name='Larry']/text() + ./stooge[@name='Moe']/text() =100">
                All votes must add up to 100!!
            </assert>
        </rule>
    </pattern>
</schema>    
<!--nll 11-2:  I goofed around with the numbers and my Schematron is working!!-->
