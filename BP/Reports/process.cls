/// 
Class IRIS.JHONATA.Reports.process Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='IRIS.JHONATA.MSG.Reports.request' response='IRIS.JHONATA.MSG.Reports.response' height='2000' width='2000' >
<context>
<property name='rowResponse' type='IRIS.JHONATA.OBJ.Reports.Row.row' instantiate='0' />
<property name='k1' type='%Integer' initialexpression='1' instantiate='0' />
<property name='project' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='50' />
</parameters>
</property>
<property name='title' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='250' />
</parameters>
</property>
<property name='descProject' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='500' />
</parameters>
</property>
<property name='finalResponse' type='IRIS.JHONATA.MSG.Reports.response' instantiate='1' />
<property name='titleColumn' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='150' />
</parameters>
</property>
<property name='typeColumn' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='80' />
</parameters>
</property>
<property name='countResult' type='%Integer' initialexpression='0' instantiate='0' />
<property name='countColumn' type='%Integer' initialexpression='0' instantiate='0' />
<property name='k2' type='%Integer' initialexpression='1' instantiate='0' />
<property name='infoColumn' type='IRIS.JHONATA.OBJ.Reports.Information.columns' collection='list' instantiate='0' />
<property name='i' type='%Integer' instantiate='0' />
<property name='c1' type='%Integer' initialexpression='1' instantiate='0' />
<property name='r1' type='%Integer' initialexpression='1' instantiate='0' />
<property name='l1' type='%Integer' initialexpression='1' instantiate='0' />
<property name='k3' type='%Integer' initialexpression='1' instantiate='0' />
<property name='limitUpdated' type='%Integer' initialexpression='0' instantiate='0' />
<property name='destin' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='250' />
</parameters>
</property>
</context>
<sequence xend='200' yend='1500' >
<assign name="Código do projeto" property="context.project" value="request.topic" action="set" xpos='200' ypos='250' />
<rule name='Configurações do Projeto' rule='IRIS.JHONATA.RULE.Reports.configuration'  xpos='200' ypos='350' >
</rule>
<code name='Add Info Column' xpos='200' ypos='450' >
<![CDATA[ For i=1:1:$Length(context.titleColumn,",") { 
	 Set titulo = ##class(IRIS.JHONATA.OBJ.Reports.Information.columns).%New()
	 Set titulo.title= $Piece(context.titleColumn,",",i)
	 Set titulo.type= $Piece(context.typeColumn,",",i)
	 Do context.infoColumn.Insert(titulo)
 }
 Set context.countColumn = $Length(context.titleColumn,",")]]>
</code>
<call name='GetData' target='@context.destin' async='0' xpos='200' ypos='550' >
<request type='IRIS.JHONATA.MSG.Reports.Row.request' >
<assign property="callrequest.countColumns" value="context.countColumn" action="set" />
</request>
<response type='IRIS.JHONATA.MSG.Reports.Row.response' >
<assign property="context.rowResponse" value="callresponse" action="set" />
</response>
</call>
<if condition='context.rowResponse.data' xpos='200' ypos='650' xend='200' yend='1400' >
<true>
<trace value='"nada"' xpos='470' ypos='800' />
<foreach name='Count Rows' property='context.rowResponse.data' key='context.c1' xpos='470' ypos='900' xend='200' yend='350' >
<assign name="Count Result" property="context.countResult" value="context.countResult + 1" action="set" xpos='200' ypos='250' />
</foreach>
<assign name="Set count rows" property="context.countResult" value="context.countResult / context.countColumn" action="set" xpos='470' ypos='1000' />
<trace value='"Colum: "_context.countColumn' xpos='470' ypos='1100' />
<transform name='DTL Payload' class='IRIS.JHONATA.DT.Reports.transformation' source='context.rowResponse' target='context.finalResponse' xpos='470' ypos='1200' />
<assign name="Resposta" property="response" value="context.finalResponse" action="set" xpos='470' ypos='1300' />
</true>
<false>
<alert value='"Dados não encontrados"' xpos='200' ypos='800' />
</false>
</if>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
