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
		<form name="form1" action="CustomerServlet" method="post"
			onsubmit="return funcConfirm()">
			<table>
				<tr>
					<td class="title">氏名</td>
					<td><input type="text" name="name" maxlength="20"></td>
				</tr>
				<tr>
					<td class="title">郵便番号</td>
					<td><input type="text" name="zip" maxlength="20"></td>
				</tr>
				<tr>
					<td class="title">住所1</td>
					<td><input type="text" name="address1" maxlength="100"></td>
				</tr>
				<tr>
					<td class="title">住所2</td>
					<td><input type="text" name="address2" maxlength="100"></td>
				</tr>
				<tr>
					<td class="title">TEL</td>
					<td><input type="tel" name="tel" maxlength="20"></td>
				</tr>
				<tr>
					<td class="title">FAX</td>
					<td><input type="tel" name="fax" maxlength="20"></td>
				</tr>
				<tr>
					<td class="title">E-mail</td>
					<td><input type="email" name="email" maxlength="100"></td>
				</tr>
			</table>
			<p>
				<!--
                <input type="submit" value="送信">
             -->
				<button name="state" value="new_confirm">送信</button>
				<button name="state" value="menu">戻る</button>
			</p>
		</form>
	</div>
</body>
<script type="text/javascript">
	function funcConfirm() {
		// TODO バリデーションチェック･alertダイアログ処理（確認中：折原）
		if (document.form1.name.value == "") {
			alert("氏名が入力されていません。");
			return false;
		}
		if (document.form1.zip.value == "") {
			alert("郵便番号が入力されていません。");
			return false;
		} else if (!document.form1.zip.value.match(/^[\x20-\x7E]+$/)) {
			alert("郵便番号は半角数字と半角ハイフンで入力してください");
			return false;
		}
		if (document.form1.address1.value == "") {
			alert("住所1が入力されていません。");
			return false;
		}
		if (document.form1.address2.value == "") {
			alert("住所2が入力されていません。");
			return false;
		}
		if (document.form1.tel.value == "") {
			alert("電話番号が入力されていません。");
			return false;
		} else if (!document.form1.tel.value.match(/^[\x20-\x7E]+$/)) {
			alert("電話番号は半角数字と半角ハイフンで入力してください");
			return false;
		}
		if (document.form1.fax.value == "") {
			alert("FAXが入力されていません。");
			return false;
		} else if (!document.form1.fax.value.match(/^[\x20-\x7E]+$/)) {
			alert("FAXは半角数字と半角ハイフンで入力してください");
			return false;
		}
		if (document.form1.email.value == "") {
			alert("メールアドレスが入力されていません。");
			return false;
		}
	}
</script>
</html>
