<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="editar.aspx.cs" Inherits="Trabalho_CRUD.editar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-primary text-center" style="margin-top:30px">
        <h2>Editar</h2>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-2 " >
            <label>ID:</label>
            <asp:TextBox ID="txtID" CssClass="form-control" runat="server" MaxLength="100" Enabled="false"></asp:TextBox>
        </div>
        <div class="col-md-10 " >
            <label>Nome:</label>
            <asp:RequiredFieldValidator ID="rfvNome" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtNome"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtNome" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-5 " >
            <label>Marca:</label>
            <asp:RequiredFieldValidator ID="rfvMarca" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtMarca"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtMarca" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-3 " >
            <label>Ano:</label>
            <asp:RequiredFieldValidator ID="rfvAno" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtAno"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtAno" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-4 " >
            <label>Cor:</label>
            <asp:RequiredFieldValidator ID="rfvCor" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtCor"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtCor" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-5 " >
            <label>Valor:</label>
            <asp:RequiredFieldValidator ID="rfvValor" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtValor"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtValor" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-3 " >
            <label>Km:</label>
            <asp:RequiredFieldValidator ID="rfvKm" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtKm"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtKm" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-2 " >
            <label>Combustivel:</label>
            <asp:RequiredFieldValidator ID="rfvCombustivel" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtCombustivel"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtCombustivel" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-2 " >
            <label>Câmbio:</label>
            <asp:RequiredFieldValidator ID="rfvCambio" runat="server" ErrorMessage="*" ForeColor="Red"
                ControlToValidate="txtCambio"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtCambio" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-12 text-right">
            <asp:Button ID="btnEditar" Text="Editar" runat="server" CssClass="btn btn-primary" OnClick="btnEditar_Click"/>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-12 text-right">
            <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
