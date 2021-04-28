Class IRIS.JHONATA.OBJ.Reports.Content.Project.project Extends (%SerialObject, %XML.Adaptor)
{

Property code As %String(MAXLEN = 10);

Property title As %String(MAXLEN = 255);

Property description As %String(MAXLEN = 500);

Storage Default
{
<Data name="projectState">
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>title</Value>
</Value>
<Value name="3">
<Value>description</Value>
</Value>
</Data>
<State>projectState</State>
<StreamLocation>^IRIS.JHONATA.OBJ.RF96F.projectS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
