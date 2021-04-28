Class IRIS.JHONATA.OBJ.Reports.Persistent.ecounters Extends (%Persistent, %XML.Adaptor)
{

Property Code As %Integer;

Property Name As %String(MAXLEN = 80);

Property Type As %String(MAXLEN = 20);

Property Doctor As %String(MAXLEN = 80);

Property Sector As %String(MAXLEN = 80);

Property Date As %String;

Property Observation As %String(MAXLEN = 300);

Storage Default
{
<Data name="ecountersDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Code</Value>
</Value>
<Value name="3">
<Value>Name</Value>
</Value>
<Value name="4">
<Value>Type</Value>
</Value>
<Value name="5">
<Value>Doctor</Value>
</Value>
<Value name="6">
<Value>Sector</Value>
</Value>
<Value name="7">
<Value>Date</Value>
</Value>
<Value name="8">
<Value>Observation</Value>
</Value>
</Data>
<DataLocation>^IRIS.JHONATA.OBJ82C0.ecountersD</DataLocation>
<DefaultData>ecountersDefaultData</DefaultData>
<IdLocation>^IRIS.JHONATA.OBJ82C0.ecountersD</IdLocation>
<IndexLocation>^IRIS.JHONATA.OBJ82C0.ecountersI</IndexLocation>
<StreamLocation>^IRIS.JHONATA.OBJ82C0.ecountersS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
