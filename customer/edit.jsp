<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="user.UserBean" id="user" scope="session" />
<jsp:useBean class="customer.CustomerBean" id="customer" scope="session" />
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

        <!-- TODO ｢既存データ編集･削除｣画面 -->
            <h2>既存データの編集</h2>
        <form name="form1" action="CustomerServlet" method="post"
            onsubmit="return funcConfirm()">
            <table>
            	<tr>
                    <td class="title">氏名</td>
                    <td><input type="text" name="name" maxlength="20"
                        value="<%=userEdit.getName()%>"></td>
                </tr>
                <tr>
                    <td class="title">郵便番号</td>
                    <td><input type="text" name="zip" maxlength="15"
                        value="<%=userEdit.getZip()%>"></td>
                </tr>
                <tr>
                 <td class="title">住所1</td>
                    <td><input type="text" name="address1" maxlength="15"
                        value="<%=Edit.getAddress1() %>"></td>
                </tr>
                <tr>
                 <td class="title">住所2</td>
                    <td><input type="text" name="address2" maxlength="15"
                        value="<%=userEdit.getAddress2()%>"></td>
                </tr>
                <tr>
                 <td class="title">TEL</td>
                    <td><input type="text" name="tel" maxlength="15"
                        value="<%=userEdit.getTel()%>"></td>
                </tr>
                <tr>
                 <td class="title">FAX</td>
                    <td><input type="text" name="fax" maxlength="15"
                        value="<%=userEdit.getFax()%>"></td>
                </tr>
                <tr>
                 <td class="title">E-mail</td>
                    <td><input type="text" name="email" maxlength="15"
                        value="<%=userEdit.getEmail()%>"></td>
                </tr>
                <tr>
                   
                </tr>
            </table>
            
            <p>
                <button name="state" value="edit_confirm">送信</button>
                <input type="button" value="戻る" onclick="history.back()">
             
            </p>
        </form>
    </div>
    <script type="text/javascript">
        function funcConfirm() {
        	if (document.form1.user_name.value == "") {
    			alert("氏名が入力されていません。");
    			return false;
    		}
    		if (document.form1.post_code.value == "") {
    			alert("郵便番号が入力されていません。");
    			return false;
    		} else if (!document.form1.post_code.value.match(/^[\x20-\x7E]+$/)) {
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
    		if (document.form1.telephone_number.value == "") {
    			alert("電話番号が入力されていません。");
    			return false;
    		} else if (!document.form1.post_code.value.match(/^[\x20-\x7E]+$/)) {
    			alert("電話番号は半角数字と半角ハイフンで入力してください");
    			return false;
    		}
    		if (document.form1.fax_number.value == "") {
    			alert("FAXが入力されていません。");
    			return false;
    		} else if (!document.form1.post_code.value.match(/^[\x20-\x7E]+$/)) {
    			alert("電話番号は半角数字と半角ハイフンで入力してください");
    			return false;
    		}
    		if (document.form1.e - mail.value == "") {
    			alert("メールアドレスが入力されていません。");
    			return false;
    		}
    </script>
    </div>
</body>
<%-- script type="text/javascript">
    function funcConfirm() {

        // TODO バリデーションチェック･alertダイアログ処理

    }
</script>--%>
</html>
