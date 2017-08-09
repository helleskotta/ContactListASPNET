<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Ovn30.index" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <h1><a href="/index.aspx">Yet another contactlist</a></h1>
    <div id="left">
        <asp:Label ID="FirstNameLabel" runat="server" Text="First name" Width="100px"></asp:Label>
        <asp:TextBox ID="FirstNameInput" runat="server"></asp:TextBox>
        <h4>
            <asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" ErrorMessage="Please fill in a name with more than 2 characters" ControlToValidate="FirstNameInput" EnableClientScript="False"></asp:RequiredFieldValidator>
        </h4>
        <br />
        <asp:Label ID="LastNameLabel" runat="server" Text="Last name" Width="100px"></asp:Label>
        <asp:TextBox ID="LastNameInput" runat="server"></asp:TextBox>
        <h4>
            <asp:RequiredFieldValidator ID="LastNameValidator" runat="server" ErrorMessage="Please fill in a name with more than 2 characters" ControlToValidate="LastNameInput" EnableClientScript="False"></asp:RequiredFieldValidator>
        </h4>
        <br />
        <asp:Label ID="SSNLabel" runat="server" Text="SSN" Width="100px"></asp:Label>
        <asp:TextBox ID="SSNInput" runat="server"></asp:TextBox>
        <h4>
            <asp:RequiredFieldValidator ID="SSNValidator" runat="server" ErrorMessage="Please fill in a valid SSN (ÅÅMMDDXXXX)" ControlToValidate="SSNInput" EnableClientScript="False"></asp:RequiredFieldValidator>
        </h4>
        <br />
        <asp:Label ID="space" runat="server" Text="" Width="100px"></asp:Label>
        <asp:Button ID="AddAContact" runat="server" Text="Add" OnClick="AddAContact_Click" />
        <!-- TO DO Alert - OBS! Vill du verkligen lägga till samma kontakt igen? Ja/Nej/Uppdatera befintlig-->
        <asp:Button ID="UpdateContactButton" runat="server" Text="Update" OnClick="UpdateContactButton_Click" />
        <asp:Button ID="DeleteContactButton" runat="server" Text="Delete" OnClick="DeleteContactButton_Click" />

    </div>

    <div id="right">
        <asp:ListBox ID="ListboxContacts" runat="server" Height="429px" Width="333px" AutoPostBack="True" OnSelectedIndexChanged="ListboxContacts_SelectedIndexChanged"></asp:ListBox>
    </div>

</asp:Content>
