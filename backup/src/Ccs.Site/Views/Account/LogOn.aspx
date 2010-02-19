<%@ page language="C#" masterpagefile="~/Views/Shared/Site.Master" inherits="System.Web.Mvc.ViewPage<LogOnModel>" %>

<%@ import namespace="Ccs.Security.Models" %>
<asp:content id="loginTitle" contentplaceholderid="TitleContent" runat="server">
  Log On
</asp:content>
<asp:content id="loginContent" contentplaceholderid="MainContent" runat="server">
  <h2>
    Log On</h2>
  <p>
    Please enter your username and password.
    <%= Html.ActionLink("Register", "Register") %>
    if you don't have an account.
  </p>
  <%= Html.ValidationSummary(true, "Login was unsuccessful. Please correct the errors and try again.") %>
  <% using (Html.BeginForm()) { %>
  <div>
    <fieldset>
      <legend>Account Information</legend>
      <div class="editor-label">
        <%= Html.LabelFor(m => m.UserName) %>
      </div>
      <div class="editor-field">
        <%= Html.TextBoxFor(m => m.UserName) %>
        <%= Html.ValidationMessageFor(m => m.UserName) %>
      </div>
      <div class="editor-label">
        <%= Html.LabelFor(m => m.Password) %>
      </div>
      <div class="editor-field">
        <%= Html.PasswordFor(m => m.Password) %>
        <%= Html.ValidationMessageFor(m => m.Password) %>
      </div>
      <div class="editor-label">
        <%= Html.CheckBoxFor(m => m.RememberMe) %>
        <%= Html.LabelFor(m => m.RememberMe) %>
      </div>
      <p>
        <input type="submit" value="Log On" />
      </p>
    </fieldset>
  </div>
  <% } %>
</asp:content>