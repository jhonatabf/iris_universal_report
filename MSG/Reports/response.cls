Class IRIS.JHONATA.MSG.Reports.response Extends Ens.Response
{

Property topic As %String;

Property content As IRIS.JHONATA.OBJ.Reports.Content.content;

Storage Default
{
<Data name="responseDefaultData">
<Subscript>"response"</Subscript>
<Value name="1">
<Value>topic</Value>
</Value>
<Value name="2">
<Value>content</Value>
</Value>
</Data>
<DefaultData>responseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
