<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AppSecurityAssignment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <script src="https://www.google.com/recaptcha/api.js?render=6LeLfUIaAAAAAAtJxkltFmM6ppVRqxg_cVrwNy9R"></script>
            <br />
            Email :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tb_email" runat="server" Height="22px"></asp:TextBox>
            <br />
            Password :
            <asp:TextBox ID="tb_password" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <br />
        </div>
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
        <br />
        <br />
        <br />
        <asp:Label ID="lblgscore" runat="server" Text="Label"></asp:Label>
        <br />
        <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response"/>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <script>
 grecaptcha.ready(function () {
     grecaptcha.execute('6LeLfUIaAAAAAAtJxkltFmM6ppVRqxg_cVrwNy9R', { action: 'Login' }).then(function (token) {
 document.getElementById("g-recaptcha-response").value = token;
 });
 });
    </script>
</body>
</html>
