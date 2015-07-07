

Dim oXMLDoc, oXMLHTTP

Set oXMLHTTP = CreateObject("MSXML2.XMLHTTP.3.0")

Set oXMLDoc = CreateObject("MSXML2.DOMDocument")

call oXMLHTTP.open("GET","http://StgWSvc01/WebServices/leadmanager.asmx/ProcessLeads",False)

call oXMLHTTP.setRequestHeader("Content-Type","application/x-www-form-urlencoded")

call oXMLHTTP.send()

set oXMLHTTP = Nothing

Set oXMLDoc = Nothing

WScript.Quit
