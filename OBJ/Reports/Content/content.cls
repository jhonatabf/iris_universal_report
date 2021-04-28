Class IRIS.JHONATA.OBJ.Reports.Content.content Extends (%SerialObject, %XML.Adaptor)
{

Property project As IRIS.JHONATA.OBJ.Reports.Content.Project.project;

Property columns As list Of IRIS.JHONATA.OBJ.Reports.Content.Columns.columns;

Storage Default
{
<Data name="contentState">
<Value name="1">
<Value>project</Value>
</Value>
<Value name="2">
<Value>columns</Value>
</Value>
</Data>
<State>contentState</State>
<StreamLocation>^IRIS.JHONATA.OBJ.R624C.contentS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
