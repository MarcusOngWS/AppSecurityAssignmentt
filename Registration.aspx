<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="AppSecurityAssignment.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <script type ="text/javascript">
            function validate() {
                var str = document.getElementById('<%=tb_password.ClientID %>').value;

                if (str.length < 8) {
                    document.getElementById("lbl_passchecker").innerHTML = "Password Length Must be at Least 8 Characters";
                    document.getElementById("lbl_passchecker").style.color = "Red";
                    return ("too_short")
                }

                else if (str.search(/[0-9]/) == -1) {
                    document.getElementById("lbl_passchecker").innerHTML = "Password require at least 1 number";
                    document.getElementById("lbl_passchecker").style.color = "Red";
                    return ("no_number");
                }

                else if (str.search(/[A-Z]/) == -1) {
                    document.getElementById("lbl_passchecker").innerHTML = "Password require at least 1 Uppercase Character";
                    document.getElementById("lbl_passchecker").style.color = "Red";
                    return ("no_upper");
                }

                else if (str.search(/[a-z]/) == -1) {
                    document.getElementById("lbl_passchecker").innerHTML = "Password require at least 1 Lowercase Character";
                    document.getElementById("lbl_passchecker").style.color = "Red";
                    return ("no_lower");
                }

                else if (str.search(/[!@#$%^&*]/) == -1) {
                    document.getElementById("lbl_passchecker").innerHTML = "Password require at least 1 Special Character";
                    document.getElementById("lbl_passchecker").style.color = "Red";
                    return ("no_special");
                }

                document.getElementById("lbl_passchecker").innerHTML = "Good Password"
                document.getElementById("lbl_passchecker").style.color = "Green";
            }
        </script>
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
            <asp:Label ID="emailerror" runat="server" Text="Label"></asp:Label>
            <br />
            Password
            <asp:TextBox ID="tb_password" runat="server" onkeyup="javascript:validate()" TextMode="Password"></asp:TextBox>
            <asp:Label ID="lbl_passchecker" runat="server" Text="Label"></asp:Label>
            <br />
            Date of Birth
            <asp:TextBox ID="tb_dob" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_password" ErrorMessage="Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character for password:" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&amp;])[A-Za-z\d$@$!%*?&amp;]{8,}" Display="Dynamic"></asp:RegularExpressionValidator>
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
