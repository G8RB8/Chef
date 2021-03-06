
function getHTTPObject()
{
	var xmlhttp = null;
	var success = false;

	try
	{
		xmlhttp = new ActiveXObject("MSXML2.ServerXMLHTTP");
		success = true;
		return xmlhttp;
	}
	catch (e)
	{
		writeToFile("ERROR: getHTTPObject(): MSXML2.ServerXMLHTTP object");
		xmlhttp = false;
	}

	if (!xmlhttp && typeof XMLHttpRequest != 'undefined')
	{
		try
		{
			xmlhttp = new XMLHttpRequest();
		}
		catch (e)
		{
			xmlhttp = false;
		}
	}

	return xmlhttp;
}

function handleServiceResponse()
{
	if (httpObj.readyState == 4) // a value of 4 represents a request-completed state
	{
		isWorking = false;

		if (httpObj.status == 200)
		{
			// do something with either xmlDoc or textResponse or with both
			var textResponse = httpObj.responseText;
			nDate = new Date();
			writeToFile("handleServiceResponse Response: " + textResponse);
		}
	}
	else
	{
	}
}

function callService(url)
{
	if (!isWorking)
	{
		httpObj.setTimeouts(58000, 580000, 120000, 120000);
		httpObj.open("GET", url, false);

		try
		{
			httpObj.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		}
		catch(e)
		{
			writeToFile("callService Error: " + e.description);
		}

		isWorking = true;
		httpObj.onreadystatechange = handleServiceResponse;
		try
		{
			httpObj.send(null);
		}
		catch(e)
		{
			writeToFile("callService Error: " + e.description);
		}

		return true;
	}
}

function writeToFile(str, opt)
{
	var d = new Date();
	var fso, s;
	var tfile = d.getFullYear() + (d.getMonth() + 1 < 10 ? "0" + (d.getMonth() + 1) : d.getMonth() + 1) + (d.getDate() < 10 ? "0" + d.getDate() : d.getDate()) + ".txt";

	fso = new ActiveXObject("Scripting.FileSystemObject");
	s = fso.OpenTextFile(tfile , 8, 1, -2);

	if (opt != 1)
	{
		s.writeline(d + " - " + str);
	}
	else
	{
		s.writeline(str);
	}
	s.Close();
}

/* -------------------------------- */

writeToFile("-------------------------------------------------------------------", 1);
writeToFile("Start");

var isWorking = false;

writeToFile("getHTTPObject()");
var httpObj = getHTTPObject();

writeToFile("callService()");
callService("http://StgWSvc01/webservices/LeadManager.asmx/ProcessLeadDisposition");

writeToFile("End");
