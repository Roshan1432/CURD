<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication8.WebForm1" uiCulture="Auto" Theme="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 23px;
            position: fixed;
        }
        .auto-style4 {
            height: 185px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
            width: 214px;
        }
        .auto-style7 {
            width: 214px;
        }
        .auto-style8 {
            width: 100%;
            height: 233px;
        }
        .auto-style9 {
            height: 25px;
        }
        .auto-style10 {
            height: 38px;
        }
    </style>
</head>
    
<body style="height: 270px">
    <form id="form1" runat="server">
        <div class="auto-style4">


            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" align="center" style="font-family: Cambria; font-size: medium; font-weight: lighter; font-style: italic; font-variant: normal; text-transform: capitalize; color: #FF0000; background-color: #00FFFF; ">Create Delete Update Reset</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                </table>


            <table class="auto-style8">
                <tr>
                    <td class="auto-style6" style="font-family: 'Copperplate Gothic Bold'; font-size: large; font-style: italic; font-variant: normal; text-transform: uppercase; color: #FF9999; line-height: normal; background-image: inherit; background-color: #00FFFF; background-attachment: scroll; border-style: none">Name</td>
                    <td class="auto-style5" style="font-family: 'Copperplate Gothic Bold'; font-size: large; font-style: italic; font-variant: normal; text-transform: uppercase; color: #FF9999; line-height: normal; background-image: inherit; background-color: #00FFFF; background-attachment: scroll; border-style: none">
                        <asp:TextBox ID="name" runat="server" Width="186px" ForeColor="#99CCFF"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="font-family: 'Copperplate Gothic Bold'; font-size: large; font-style: italic; font-variant: normal; text-transform: uppercase; color: #FF9999; line-height: normal; background-image: inherit; background-color: #00FFFF; background-attachment: scroll; border-style: none">Gender</td>
                    <td style="font-family: 'Copperplate Gothic Bold'; font-size: large; font-style: italic; font-variant: normal; text-transform: uppercase; color: #FF9999; line-height: normal; background-image: inherit; background-color: #00FFFF; background-attachment: scroll; border-style: none">
                        <asp:TextBox ID="Gen" runat="server" Width="186px" ForeColor="#99CCFF"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="font-family: 'Copperplate Gothic Bold'; font-size: large; font-style: italic; font-variant: normal; text-transform: uppercase; color: #FF9999; line-height: normal; background-image: inherit; background-color: #00FFFF; background-attachment: scroll; border-style: none">Age</td>
                    <td style="font-family: 'Copperplate Gothic Bold'; font-size: large; font-style: italic; font-variant: normal; text-transform: uppercase; color: #FF9999; line-height: normal; background-image: inherit; background-color: #00FFFF; background-attachment: scroll; border-style: none">
                        <asp:TextBox ID="age" runat="server" Width="186px" ForeColor="#99CCFF"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="font-family: 'Copperplate Gothic Bold'; font-size: large; font-style: italic; font-variant: normal; text-transform: uppercase; color: #FF9999; line-height: normal; background-image: inherit; background-color: #00FFFF; background-attachment: scroll; border-style: none">Address</td>
                    <td style="font-family: 'Copperplate Gothic Bold'; font-size: large; font-style: italic; font-variant: normal; text-transform: uppercase; color: #FF9999; line-height: normal; background-image: inherit; background-color: #00FFFF; background-attachment: scroll; border-style: none">
                        <asp:TextBox ID="add" runat="server" Width="186px" ForeColor="#99CCFF"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="font-family: 'Copperplate Gothic Bold'; font-size: large; font-style: italic; font-variant: normal; text-transform: uppercase; color: #FF9999; line-height: normal; background-image: inherit; background-color: #00FFFF; background-attachment: scroll; border-style: none">Contact</td>
                    <td style="font-family: 'Copperplate Gothic Bold'; font-size: large; font-style: italic; font-variant: normal; text-transform: uppercase; color: #FF9999; line-height: normal; background-image: inherit; background-color: #00FFFF; background-attachment: scroll; border-style: none">
                        <asp:TextBox ID="contact" runat="server" Width="186px" ForeColor="#99CCFF"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style10">
                        <asp:Button  ID="Button1" runat="server" Height="30px" Text="Insert" Width="59px" OnClick="Button1_Click" />
                    &nbsp; <strong>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete" />
                        </strong>&nbsp; <strong>
                        <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
&nbsp;<asp:Button ID="Button4" runat="server" Text="Reset" OnClick="Button4_Click" />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style9">
                        <asp:GridView ID="GridView1" runat="server" Width="365px">
                        </asp:GridView>
                    </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
