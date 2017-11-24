<!DOCTYPE HTML>

<html lang = "jp">

<head>
    <meta charset = "UTF-8">
	<title>ルーレット</title>
</head>

<body>

<h2>メンバーの確認</h2>
<br><br>
{{member}}
<br><br>

<h2>お酒の確認</h2>
<br><br>
{{alcohol}}
<br><br>

<form name = "information_true" method = "POST" action = "/information_decision">
    <input type = "submit" value = "このメンバー・お酒でルーレット開始">
</form>

</body>
</html>
