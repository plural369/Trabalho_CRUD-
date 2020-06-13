<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="detalhes.aspx.cs" Inherits="Trabalho_CRUD.detalhes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-primary text-center" style="margin-top:30px">
        <h2>Detalhes</h2>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-2 " >
            <label>ID:</label>
            <asp:TextBox ID="txtID" CssClass="form-control" runat="server" MaxLength="100" Enabled="false"></asp:TextBox>
        </div>
        <div class="col-md-10 " >
            <label>Nome:</label>
            <asp:TextBox ID="txtNome" CssClass="form-control" runat="server" MaxLength="50" Enabled="false"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-5 " >
            <label>Marca:</label>
            <asp:TextBox ID="txtMarca" CssClass="form-control" runat="server" MaxLength="50" Enabled="false"></asp:TextBox>
        </div>
        <div class="col-md-3 " >
            <label>Ano:</label>
            <asp:TextBox ID="txtAno" CssClass="form-control" runat="server" MaxLength="50" Enabled="false"></asp:TextBox>
        </div>
        <div class="col-md-4 " >
            <label>Cor:</label>
            <asp:TextBox ID="txtCor" CssClass="form-control" runat="server" MaxLength="50" Enabled="false"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-5 " >
            <label>Valor:</label>
            <asp:TextBox ID="txtValor" CssClass="form-control" runat="server" MaxLength="50" Enabled="false"></asp:TextBox>
        </div>
        <div class="col-md-3 " >
            <label>Km:</label>
            <asp:TextBox ID="txtKm" CssClass="form-control" runat="server" MaxLength="50" Enabled="false"></asp:TextBox>
        </div>
        <div class="col-md-2 " >
            <label>Combustivel:</label>
            <asp:TextBox ID="txtCombustivel" CssClass="form-control" runat="server" MaxLength="50" Enabled="false"></asp:TextBox>
        </div>
        <div class="col-md-2 " >
            <label>Câmbio:</label>
            <asp:TextBox ID="txtCambio" CssClass="form-control" runat="server" MaxLength="50" Enabled="false"></asp:TextBox>
        </div>
    </div>
</asp:Content>
