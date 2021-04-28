Class IRIS.JHONATA.OBJ.Reports.Information.columns Extends (%SerialObject, %XML.Adaptor)
{

Property title As %String(MAXLEN = 255);

Property type As %String(MAXLEN = 255);

Storage Default
{
<Data name="columnsState">
<Value name="1">
<Value>title</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
</Data>
<State>columnsState</State>
<StreamLocation>^IRIS.JHONATA.OBJ.R2DED.columnsS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
