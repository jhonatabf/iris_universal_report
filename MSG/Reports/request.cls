Class IRIS.JHONATA.MSG.Reports.request Extends Ens.Request
{

Property topic As %String;

Storage Default
{
<Data name="requestDefaultData">
<Subscript>"request"</Subscript>
<Value name="1">
<Value>topic</Value>
</Value>
</Data>
<DefaultData>requestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
