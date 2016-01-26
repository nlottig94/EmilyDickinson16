<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
    <ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    
    <pattern>
        <rule context="tei:app">
            <assert test="./tei:rdg">
                The app element must have a rdg element with a wit attribute.
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="tei:rdg">
            <assert test="./parent::tei:app/parent::tei:l/parent::tei:lg">
                The rdg tag must be contained within an app element, a l element, and a lg element!
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="tei:rdg">
            <report test="not(@wit)">
                The rdg element must have an @wit!
            </report>
        </rule>
    </pattern>
    <pattern>
        <rule context="tei:rdg">
            <assert test="@wit = ('var0', 'var1', 'var2', 'var3')">
                The @wit must have the value of var plus an integer!
            </assert>
        </rule>
    </pattern>
    
</schema>