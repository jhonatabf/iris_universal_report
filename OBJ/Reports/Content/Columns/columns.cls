Class IRIS.JHONATA.OBJ.Reports.Content.Columns.columns Extends (%SerialObject, %XML.Adaptor)
{

Property description As %String(MAXLEN = 80);

Property meta As %String(MAXLEN = 50);

Property data As list Of IRIS.JHONATA.OBJ.Reports.Content.Columns.Data.data;

Storage Default
{
<Data name="columnsState">
<Value name="1">
<Value>description</Value>
</Value>
<Value name="2">
<Value>meta</Value>
</Value>
<Value name="3">
<Value>data</Value>
</Value>
</Data>
<State>columnsState</State>
<StreamLocation>^IRIS.JHONATA.OBJ.RF1C9.columnsS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
