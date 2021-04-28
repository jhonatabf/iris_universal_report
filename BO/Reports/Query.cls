Class IRIS.JHONATA.BO.Reports.Query Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Method GetRows(pRequest As IRIS.JHONATA.MSG.Reports.Row.request, Output pResponse As IRIS.JHONATA.MSG.Reports.Row.response) As %Status
{
	
	Set tSC = $$$OK
	Set pResponse = ##class(IRIS.JHONATA.MSG.Reports.Row.response).%New()
	
	Try {

		Set rs = ##class(EnsLib.SQL.Snapshot).%New()
		Set rs.MaxRowsToGet = 10000
		set sql = pRequest.query
		
		Set result=##class(%ResultSet).%New("%DynamicQuery:SQL")
		
	    Set sc=result.Prepare(sql)  
	     

        Set tl = 0
        For i=1:1:pRequest.columns {
            Set sc=result.Execute()
				While result.Next(.sc) {
					Set tData = ##class(IRIS.JHONATA.OBJ.Reports.Row.row).%New()
					Set tData.row = result.Get("row"_i)
					Do pResponse.data.Insert(tData)
				}
	  	}
	}
    Catch(tException) {
		$$$LOGERROR(tException.Code_" "_tException.Name_" "_tException.Location_" "_tException.Data_" "_$ZError)
	}

	Quit tSC
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="IRIS.JHONATA.MSG.Reports.Row.request">
        <Method>GetRows</Method>
    </MapItem>
</MapItems>
}

}
