<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="Trabalho_CRUD.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-primary text-center" style="margin-top:30px">
        <h2>Cadastro de carros</h2>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-12 " >
            <label>Nome:</label>
            <asp:RequiredFieldValidator ID="rfvNome" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtNome"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtNome" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-5 " >
            <label>Login:</label>
            <asp:RequiredFieldValidator ID="rfvLogin" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtLogin"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtLogin" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-3 " >
            <label>Senha:</label>
            <asp:RequiredFieldValidator ID="rfvSenha" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtSenha"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtSenha" CssClass="form-control" runat="server" MaxLength="50" Type="Password"></asp:TextBox>
        </div>
        <div class="col-md-4 " >
            <label>Função:</label>
            <asp:RequiredFieldValidator ID="rfvFuncao" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="ddlFuncao"></asp:RequiredFieldValidator>
            <asp:DropDownList ID="ddlFuncao" runat="server" CssClass="form-control">
                <asp:ListItem Selected="True" Value=""></asp:ListItem>
                <asp:ListItem Value="A">Administrador</asp:ListItem>
                <asp:ListItem Value="O">Operador</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-12 text-right">
            <asp:Button ID="btnCadastrar" Text="Cadastrar" runat="server" CssClass="btn btn-primary" OnClick="btnCadastrar_Click" />
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-12 text-right">
            <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
