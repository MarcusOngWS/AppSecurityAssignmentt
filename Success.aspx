<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="AppSecurityAssignment.Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnlogout" runat="server" Text="Logout" OnClick="Logoutme" Visible="false" />
        </div>
    </form>
</body>
</html>
