Class IRIS.JHONATA.OBJ.Reports.Persistent.products Extends (%Persistent, %XML.Adaptor)
{

Property Code As %Integer;

Property Name As %String(MAXLEN = 80);

Property Description As %String(MAXLEN = 255);

Property Quantity As %Integer;

Storage Default
{
<Data name="productsDefaultData">
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
<Value>Description</Value>
</Value>
<Value name="5">
<Value>Quantity</Value>
</Value>
</Data>
<DataLocation>^IRIS.JHONATA.OBJ82C0.productsD</DataLocation>
<DefaultData>productsDefaultData</DefaultData>
<IdLocation>^IRIS.JHONATA.OBJ82C0.productsD</IdLocation>
<IndexLocation>^IRIS.JHONATA.OBJ82C0.productsI</IndexLocation>
<StreamLocation>^IRIS.JHONATA.OBJ82C0.productsS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
