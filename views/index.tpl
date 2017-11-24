<!DOCTYPE HTML>

<html lang="jp">

<head>
    <meta charset="UTF-8">
	<title>ルーレット</title>
</head>

<body>

<h1>Drink or Die</h1>
<br><br><br><br>

<b>
メンバーの名前・お酒の名前を登録してください。
<br>
＊名前は英数字のみ、名前は「,」で区切ってください。
例）ichirou,jirou,sannnrou や maru,nikka,horoyoi
</b>

<br><br>

<form name="information" method="POST" action="/enter">
    
    <h2>メンバー登録:</h2>
    <input type="text" name="member_information">

    <h2>お酒の種類:</h2>
    <input type="text" name="alcohol_information">
<br><br>
    <input type="submit" value="送信">
</form>

</body>
</html>
