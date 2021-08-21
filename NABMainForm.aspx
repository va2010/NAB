<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NABMainForm.aspx.cs" Inherits="NAB.NABMainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NAB Coding Challenge</title>
</head>
<body>
    <form id="form1" runat="server" style="background-color:honeydew">
        <table>
            <tr>
                <td style="font-size:x-large; text-align:center; width:1000px">Deposit List</td>
            </tr>
            <tr></tr>
        </table>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Total Maturity Amount"></asp:Label>
            <asp:TextBox ID="txtTotalMaturityAmount" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Deposit Options"></asp:Label>
            <asp:DropDownList ID="DepositOption" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DepositOption_SelectedIndexChanged">
                <asp:ListItem Value="0">Hold</asp:ListItem>
                <asp:ListItem Value="1">Buy</asp:ListItem>
                <asp:ListItem Value="2">Sell</asp:ListItem>
            </asp:DropDownList>
        </div>
<asp:GridView ID="gvDeposits" runat="server" AutoGenerateColumns="false" AllowPaging="true"
    OnPageIndexChanging="OnPageIndexChanging" PageSize="10">
    <Columns>
        <asp:BoundField ItemStyle-Width="150px" DataField="ID" HeaderText="Deposit ID" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Principal" HeaderText="Principal" DataFormatString="{0:C2}" />
        <asp:BoundField ItemStyle-Width="150px" DataField="StartDate" HeaderText="Start Date" DataFormatString="{0:dd/MMM/yyyy}" />
        <asp:BoundField ItemStyle-Width="150px" DataField="EndDate" HeaderText="End Date" DataFormatString="{0:dd/MMM/yyyy}" />
        <asp:BoundField ItemStyle-Width="150px" DataField="InterestRate" HeaderText="Interest Rate (% pa)" DataFormatString="{0:0.00}" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Term" HeaderText="Term (Years)" />
        <asp:BoundField ItemStyle-Width="150px" DataField="MaturityAmount" HeaderText="Maturity Amount" DataFormatString="{0:C2}" />
    </Columns>
</asp:GridView>

    </form>
</body>
</html>
