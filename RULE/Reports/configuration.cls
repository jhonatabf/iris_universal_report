/// 
Class IRIS.JHONATA.RULE.Reports.configuration Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "Ens.Rule.GeneralBusinessRuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="" production="">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="Descrição dos projetos" disabled="false">
<when condition="project = &quot;ENCOUNTER&quot;">
<assign property="title" value="&quot;Encounters&quot;"></assign>
<assign property="descProject" value="&quot;Hospital Encounter List&quot;"></assign>
<assign property="titleColumn" value="&quot;Doctor,Name,Observation,Sector,Type&quot;"></assign>
<assign property="typeColumn" value="&quot;string,string,string,string,string&quot;"></assign>
<assign property="query" value="&quot;select Doctor as row1, Name as row2, Observation as row3, Sector as row4, Type as row5 from IRIS_JHONATA_OBJ_Reports_Persistent.ecounters&quot;"></assign>
</when>
<when condition="project = &quot;PRODUCT&quot;">
<assign property="title" value="&quot;Products&quot;"></assign>
<assign property="descProject" value="&quot;All products in organization&quot;"></assign>
<assign property="titleColumn" value="&quot;Name,Description,Quantity&quot;"></assign>
<assign property="typeColumn" value="&quot;string,string,integer&quot;"></assign>
<assign property="query" value="&quot;select Name as row1, Description as row2, Quantity as row3 from IRIS_JHONATA_OBJ_Reports_Persistent.products&quot;"></assign>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
