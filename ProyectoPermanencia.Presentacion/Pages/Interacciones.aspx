﻿<%@ Page Title="Interacciones" Language="C#" MasterPageFile="~/FichaMaster.master" AutoEventWireup="true" CodeBehind="Interacciones.aspx.cs" Inherits="ProyectoPermanencia.Presentacion.Pages.Interacciones" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolderTitle" runat="server">
    <asp:Label runat="server">
        <h3 style="color:azure" > Interacciones </h3>
    </asp:Label>
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolderTabs" runat="server">
    <div class="container">
        <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link" href="/Pages/FichaAlumno.aspx">Ficha</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/Pages/Historico.aspx">Historico</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="/Pages/Interacciones.aspx">Interacciones</a>
            </li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="ContentInteracciones" ContentPlaceHolderID="ContentPlaceHolderInteracciones" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
            </div>
            <div class="col-md-6 ">
                <i class="material-icons"></i>
                <asp:Button ID="btnNuevaInteraccion" runat="server" Text="Registrar Nueva Interaccion" CssClass="btn btn-info flex-row-reverse" OnClick="btnNuevaInteraccion_Click" />
                <asp:LinkButton runat="server"><i class="material-icons md-18">face</i></asp:LinkButton>
            </div>
        </div>
        <asp:Label ID="lblRut" runat="server" Visible="false"></asp:Label>

        <div class="row container" style="padding-left: 20px">
            <!-- Grilla con historial de intervenciones -->
            <div id="HistorialCasos" class="ScoreAsistencia">
                <h5>Historial de Casos </h5>
                <h6>Grilla</h6>
                <asp:GridView ID="grvCasos" runat="server" BackColor="#EFF4F8" ShowHeaderWhenEmpty="True" Width="600px" Font-Size="12px"
                    CssClass=" table table-bordered bs-table table-sm table-responsive" HorizontalAlign="Right" AutoGenerateColumns="false"
                    EmptyDataText="No se han abierto casos para intervenir con el alumno" OnSelectedIndexChanged="grvCasos_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField Visible="true" DataField="Id" HeaderText="Id" />
                        <asp:BoundField DataField="Fecha Inicio" HeaderText="Fecha Inicio" />
                        <asp:BoundField DataField="Tipo de Caso" HeaderText="Tipo de Caso" />
                        <asp:BoundField DataField="Curso" HeaderText="Curso" />
                        <asp:BoundField Visible="false" DataField="Id interaccion" HeaderText="Id interaccion" />
                        <asp:BoundField DataField="Ultima Interaccion" HeaderText="Ultima Interaccion" />
                        <asp:BoundField DataField="Estado del Caso" HeaderText="Estado del Caso" />
                        <asp:BoundField DataField="Fecha Termino" HeaderText="Fecha Termino" />
                        <asp:CommandField ButtonType="Button" ShowSelectButton="true" SelectText="Ver Detalle">
                            <ControlStyle CssClass="btn btn-sm btn-success" />
                        </asp:CommandField>
                    </Columns>
                    <HeaderStyle BackColor="#092845" Font-Bold="false" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                </asp:GridView>
            </div>

            <div>
                <br />
            </div>
            <hr />
            <div class="row">
                <div id="panelDetalle" class="panel panel-primary ">
                </div>
            </div>
        </div>




    </div>

</asp:Content>
