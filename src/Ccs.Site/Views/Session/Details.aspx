﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Ccs.Site.Models.Session>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Session Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= Model.Name %></h2>

</asp:Content>
