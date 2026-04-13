<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean class="user.UserBean" id="user" scope="session" />
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>顧客管理</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/style.css">
</head>
<body>
	<h1>顧客管理</h1>
	<div class="main">
		<!-- TODO ｢新規登録｣画面 -->
		<h2>新規登録</h2>
		<form name="form1" action="CostomerServlet" method="post"
			onsubmit="return funcConfirm()">
			<table>
				<tr>
					<td class="title">氏名</td>
					<td><input type="text" name="user_name" maxlength="10"></td>
				</tr>
				<tr>
					<td class="title">郵便番号</td>
					<td><input type="text" name="post_code" maxlength="10"></td>
				</tr>
				<tr>
					<td class="title">住所1</td>
					<td><input type="text" name="address1" maxlength="50"></td>
				</tr>
				<tr>
					<td class="title">住所2</td>
					<td><input type="text" name="address2" maxlength="50"></td>
				</tr>
				<tr>
					<td class="title">TEL</td>
					<td><input type="tel" name="telephone_number" maxlength="20" ></td>
				</tr>
				<tr>
					<td class="title">FAX</td>
					<td><input type="tel" name="fax_number" maxlength="20"></td>
				</tr>
				<tr>
					<td class="title">E-mail</td>
					<td><input type="email" name="e-mail" maxlength="50"></td>
				</tr>
			</table>
			<p>
				<!--
                <input type="submit" value="送信">
             -->
				<button name="state" value="new_confirm">送信</button>
				<input type="button" value="戻る" onclick="history.back()">
			</p>
		</form>
	</div>
</body>
<script type="text/javascript">
	function funcConfirm() {
		// TODO バリデーションチェック･alertダイアログ処理（折原※正規表現は今回使っていません）
		if (document.form1.user_name.value == "" || !document.form1.user_name.value.match(".*\\S+.*")) {
			alert("氏名が入力されていません。");
			return false;
		}
		if (!document.form1.post_code.value == "" && !document.form1.post_code.value.match(/^[\x20-\x7E]+$/)) {
			alert("郵便番号は半角数字と半角ハイフンで入力してください。");
			return false;
		}
		if (!document.form1.telephone_number.value == "" && !document.form1.telephone_number.value.match(/^[\x20-\x7E]+$/)) {
			alert("TELは半角数字と半角ハイフンで入力してください。");
			return false;
		}
		if (!document.form1.fax_number.value == "" && !document.form1.fax_number.value.match(/^[\x20-\x7E]+$/)) {
			alert("FAXは半角数字と半角ハイフンで入力してください。");
			return false;
		}
	}
</script>
</html>
