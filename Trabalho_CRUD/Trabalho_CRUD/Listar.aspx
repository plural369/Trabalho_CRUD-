<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Listar.aspx.cs" Inherits="Trabalho_CRUD.Listar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

    <link rel="stylesheet" type="text/css"
        href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" />

    <script src="Scripts/jquery-3.0.0.min.js"></script>

    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js">
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="text-center text-primary">
        <h2>Listagem de Carros</h2>
    </div>
    <p>
        <asp:Repeater ID="rptCarro" runat="server" OnItemDataBound="rptCarro_ItemDataBound">
            <HeaderTemplate>
                <table class="table table-hover" id="sisDataTable">
                    <thead>
                        <tr>
                            <td><strong>ID</strong></td>
                            <td><strong>Nome</strong></td>
                            <td><strong>Marca</strong></td>
                            <td><strong>Ano</strong></td>
                            <td><strong>Cor</strong></td>
                            <td><strong>Valor</strong></td>
                            <td><strong>KM</strong></td>
                            <td><strong>Combustivel</strong></td>
                            <td><strong>Câmbio</strong></td>
                            <td><strong>Funções</strong></td>
                        </tr>
                    </thead>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                   
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "loj_id") %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "loj_nome") %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "loj_marca") %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "loj_ano") %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "loj_cor") %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "loj_valor") %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "loj_km") %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "loj_combustivel") %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "loj_cambio") %>
                    </td>

                    <td>
                        <asp:LinkButton ID="lnkDetalhes" runat="server">
                            <a href='<%# Eval("loj_id", "detalhes.aspx?loj_id={0}") %>'>
                                <span class="fas fa-eye"></span>
                            </a>
                        </asp:LinkButton>
                        <asp:LinkButton ID="lnkEditar" runat="server">
                            <a href='<%# Eval("loj_id", "editar.aspx?loj_id={0}") %>'>
                                <span class="fas fa-pencil-alt"></span>
                            </a>
                        </asp:LinkButton>
                        <asp:LinkButton ID="lnkRemover" runat="server">
                            <a href='<%# Eval("loj_id", "remover.aspx?loj_id={0}") %>'>
                                <span class="fas fa-trash-alt"></span>
                            </a>
                        </asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                 </table>
            </FooterTemplate>
        </asp:Repeater>
    </p>

    <div class="row">
        <div class="col-md-12">
            <asp:Label runat="server" Text="" ID="lblMsg"></asp:Label>
        </div>
    </div>

    <script>
        $('#sisDataTable').dataTable({
            "language": {
                "url": "https://cdn.datatables.net/plug-ins/1.10.20/i18n/Portuguese-Brasil.json"
            }
        });
    </script>

</asp:Content>