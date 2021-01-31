<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="AppSecurityAssignment.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            First Name
            <asp:TextBox ID="tb_firstname" runat="server"></asp:TextBox>
            <br />
            Last Name
            <asp:TextBox ID="tb_lastname" runat="server"></asp:TextBox>
            <br />
            Credit Card
            <asp:TextBox ID="tb_creditcard" runat="server"></asp:TextBox>
            <br />
            Email
            <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
            <br />
            Password
            <asp:TextBox ID="tb_password" runat="server"></asp:TextBox>
            <br />
            Date of Birth
            <asp:TextBox ID="tb_dob" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_password" ErrorMessage="Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character:" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{8,}$"></asp:RegularExpressionValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tb_email" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tb_creditcard" ErrorMessage="Please enter 16 digits for credit card " ValidationExpression="(?&lt;!\d)\d{16}(?!\d)"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />
            <br />
            <br />
            <br />
            <asp:Label ID="passworderror" runat="server" Text="."></asp:Label>
            <br />
            <asp:Label ID="namerror" runat="server" Text="."></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
