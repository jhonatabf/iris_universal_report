Class IRIS.JHONATA.DT.Reports.transformation Extends Ens.DataTransformDTL [ DependsOn = (IRIS.JHONATA.MSG.Reports.Row.response, IRIS.JHONATA.MSG.Reports.response) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='IRIS.JHONATA.MSG.Reports.Row.response' targetClass='IRIS.JHONATA.MSG.Reports.response' create='new' language='objectscript' >
<assign value='context.project' property='target.topic' action='set' />
<assign value='context.project' property='target.content.project.code' action='set' />
<assign value='context.title' property='target.content.project.title' action='set' />
<assign value='context.descProject' property='target.content.project.description' action='set' />
<foreach property='context.infoColumn' key='context.k2' >
<assign value='$PIECE(context.titleColumn,",",context.k2)' property='target.content.columns.(context.k2).description' action='set' />
<assign value='$PIECE(context.typeColumn,",",context.k2)' property='target.content.columns.(context.k2).meta' action='set' />
<foreach property='context.rowResponse.data' key='context.k1' >
<if condition='(context.r1 &lt;= (context.k2*context.countResult))' >
<true>
<assign value='context.rowResponse.data.GetAt(context.r1).row' property='target.content.columns.(context.k2).data.(context.k1).value' action='set' />
<assign value='context.r1 + 1' property='context.r1' action='set' />
</true>
</if>
</foreach>
</foreach>
</transform>
}

}
