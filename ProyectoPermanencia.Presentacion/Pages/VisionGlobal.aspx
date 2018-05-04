﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="VisionGlobal.aspx.cs" Inherits="ProyectoPermanencia.Presentacion.VisionGlobal" %>

<asp:Content ID="ContentHeadGlobal" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="ContentGlobal" ContentPlaceHolderID="ContentPlaceHolderGlobal" runat="server">
    <h2>Vision Global</h2>
    <!-- FILTROS DE BUSQUEDA -->
    <hr />
    <div id="Filtros" class="Filtros" style="padding: 10px">

        <!-- Filtrar por rut o nombre -->
        <div>
            <h3>Buscar Alumno</h3>
            <asp:DropDownList ID="ddlRutNom" runat="server" Width="120px">
                <asp:ListItem Value="1" Text="Rut Alumno">Rut Alumno</asp:ListItem>
                <asp:ListItem>Nombre Alumno</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox runat="server" Width="115px" ID="txtInfoAlumno"></asp:TextBox>
            <asp:Button runat="server" Text="Filtrar" ID="btnBuscarAlumno" OnClick="btnBuscarAlumno_Click" />
        </div>
        <!-- Filtrar resultados -->
        <br /><h3>Filtrar resultados </h3>
        <!-- Filtrar por jornada -->
        <div ID="Jornada" style="width:200px;">
            <h4>Jornada: </h4>
            <asp:DropDownList ID="ddlJornada" runat="server" Width="120px">
                <asp:ListItem Value="1" Text="Diurno">Diurno</asp:ListItem>
                <asp:ListItem Value="2" Text="Vespertino">Vespertino</asp:ListItem>
            </asp:DropDownList>
            <br />
        </div>
        <!-- Filtrar por escuela -->
        <div id="Escuela" style="width:200px; align-self:center;">
            <h4>Escuela: </h4>
            <asp:DropDownList ID="ddlEscuelas" runat="server" >
                <asp:ListItem>Escuela 1</asp:ListItem>
                <asp:ListItem>Escuela 2</asp:ListItem>
                <asp:ListItem>Escuela 3</asp:ListItem>
            </asp:DropDownList>
            <br />
        </div>
        <!-- Filtrar por carrera -->
        <div id="Carrera" style="width:200px; float:none;">
            <h4>Carrera: </h4>
            <asp:DropDownList ID="ddlCarrera" runat="server">
                <asp:ListItem>Carrera 1</asp:ListItem>
                <asp:ListItem>Carrera 2</asp:ListItem>
                <asp:ListItem>Carrera 3</asp:ListItem>
            </asp:DropDownList>
            <br />
        </div>
        <br />
        <br />
        <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" />

        <br />
        <hr />
    </div>

    <!-- GRILLA PRINCIPAL -->
    <div>
        <div id="ScoreGlobal" class="ScoreGlobal">
            <h2>Scores </h2>
            <asp:GridView ID="grvGlobal" runat="server" AutoGenerateColumns="False" BorderStyle="Solid" ShowHeaderWhenEmpty="True" EmptyDataText="No se encontraron registros">
                <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
                <Columns>
                    <asp:BoundField DataField="" HeaderText="Rut" />
                    <asp:BoundField DataField="" HeaderText="Nombre" />
                    <asp:BoundField DataField="" HeaderText="Carrera" />
                    <asp:BoundField DataField="" HeaderText="Escuela" />
                    <asp:BoundField DataField="" HeaderText="Sede" />
                    <asp:BoundField DataField="" HeaderText="Semestre" />
                    <asp:BoundField DataField="" HeaderText="Jornada" />
                    <asp:BoundField DataField="" HeaderText="SCORE" />
                    <asp:TemplateField>
                        <HeaderTemplate>Detalle Alumno</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Button ID="btnDetalle" runat="server"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
