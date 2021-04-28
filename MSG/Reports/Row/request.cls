Class IRIS.JHONATA.MSG.Reports.Row.request Extends Ens.Request
{

Property columns As %Integer;

Property query As %String(MAXLEN = 4000);

Storage Default
{
<Data name="requestDefaultData">
<Subscript>"request"</Subscript>
<Value name="1">
<Value>columns</Value>
</Value>
<Value name="2">
<Value>query</Value>
</Value>
</Data>
<DefaultData>requestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
