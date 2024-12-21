<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="ExamenProd.Employees.Employees_Register" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Register Employee</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2>Register Employee</h2>
            <hr />
            <div class="form-group">
                <label for="txtNumeroCarnet">Employee Number (Unique):</label>
                <asp:TextBox ID="txtNumeroCarnet" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvNumeroCarnet" runat="server" ControlToValidate="txtNumeroCarnet"
                    ErrorMessage="Employee number is required." CssClass="text-danger" />
            </div>
            <div class="form-group">
                <label for="txtNombre">Name:</label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre"
                    ErrorMessage="Name is required." CssClass="text-danger" />
            </div>
            <div class="form-group">
                <label for="txtFechaNacimiento">Date of Birth:</label>
                <asp:TextBox ID="txtFechaNacimiento" runat="server" CssClass="form-control" TextMode="Date" />
                <asp:RequiredFieldValidator ID="rfvFechaNacimiento" runat="server" ControlToValidate="txtFechaNacimiento"
                    ErrorMessage="Date of birth is required." CssClass="text-danger" />
            </div>
            <div class="form-group">
                <label for="ddlCategoria">Category:</label>
                <asp:DropDownList ID="ddlCategoria" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select Category" Value="" />
                    <asp:ListItem Text="Admin" Value="Admin" />
                    <asp:ListItem Text="Operario" Value="Operario" />
                    <asp:ListItem Text="Peón" Value="Peón" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvCategoria" runat="server" ControlToValidate="ddlCategoria"
                    InitialValue="" ErrorMessage="Please select a category." CssClass="text-danger" />
            </div>
            <div class="form-group">
                <label for="txtCorreo">Email:</label>
                <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreo"
                    ErrorMessage="Email is required." CssClass="text-danger" />
                <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreo"
                    ErrorMessage="Invalid email format." CssClass="text-danger"
                    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" />
            </div>
            <div class="form-group">
                <label for="txtTelefono">Phone:</label>
                <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtSalario">Salary:</label>
                <asp:TextBox ID="txtSalario" runat="server" CssClass="form-control" />
                <asp:RangeValidator ID="rvSalario" runat="server" ControlToValidate="txtSalario"
                    MinimumValue="250000" MaximumValue="500000" Type="Double"
                    ErrorMessage="Salary must be between 250,000 and 500,000." CssClass="text-danger" />
            </div>
            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="btnRegister_Click" />
        </div>
    </form>
</body>
</html>
