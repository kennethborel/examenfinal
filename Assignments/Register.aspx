<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Assignments_Register" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Register Assignment</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2>Register Assignment</h2>
            <hr />
            <div class="form-group">
                <label for="txtEmployeeID">Employee ID:</label>
                <asp:TextBox ID="txtEmployeeID" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtProjectID">Project ID:</label>
                <asp:TextBox ID="txtProjectID" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtStartDate">Start Date:</label>
                <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control" TextMode="Date" />
            </div>
            <div class="form-group">
                <label for="txtEndDate">End Date:</label>
                <asp:TextBox ID="txtEndDate" runat="server" CssClass="form-control" TextMode="Date" />
            </div>
            <div class="form-group">
                <label for="ddlStatus">Status:</label>
                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select Status" Value="" />
                    <asp:ListItem Text="In Progress" Value="In Progress" />
                    <asp:ListItem Text="Completed" Value="Completed" />
                    <asp:ListItem Text="Pending" Value="Pending" />
                </asp:DropDownList>
            </div>
            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="btnRegister_Click" />
        </div>
    </form>
</body>
</html>
