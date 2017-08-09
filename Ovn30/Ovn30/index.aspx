<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Ovn30.index" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    
    <h1><a href="/index.aspx">Yet another contactlist</a></h1>

        <table class="table table-responsive">
        <thead>
            <tr>
                <td>Firstname</td>
                <td>Lastname</td>
                <td>&nbsp;</td>
            </tr>
        </thead>
        <tbody>
            <asp:Literal ID="ContactLiteral" runat="server"></asp:Literal>
        </tbody>
    </table>

<%-- GAMMAL KOD 
    <!-- Rubrik -->
    <div id="left">
        <!-- Knapp för att tömma allt i fälten -->
        <asp:Button ID="EmptyFieldButton" runat="server" Text="Empty Fields" OnClick="EmptyFieldButton_Click" /><br />
        <br />

        <!-- Förnamn -->
        <asp:Label ID="FirstNameLabel" runat="server" Text="First name" Width="110px"></asp:Label>
        <asp:TextBox ID="FirstNameInput" runat="server"></asp:TextBox>
        <h4><asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" ErrorMessage="Please fill in a name with more than 2 characters" ControlToValidate="FirstNameInput" EnableClientScript="False"></asp:RequiredFieldValidator></h4>

        <!-- Efternamn -->
        <asp:Label ID="LastNameLabel" runat="server" Text="Last name" Width="110px"></asp:Label>
        <asp:TextBox ID="LastNameInput" runat="server"></asp:TextBox>
        <h4><asp:RequiredFieldValidator ID="LastNameValidator" runat="server" ErrorMessage="Please fill in a name with more than 2 characters" ControlToValidate="LastNameInput" EnableClientScript="False"></asp:RequiredFieldValidator></h4>

        <!-- SSN -->
        <asp:Label ID="SSNLabel" runat="server" Text="SSN (YYMMDDXXXX)" Width="110px"></asp:Label>
        <asp:TextBox ID="SSNInput" runat="server"></asp:TextBox>
        <h4><asp:RequiredFieldValidator ID="SSNValidator" runat="server" ErrorMessage="Please fill in a valid SSN (YYMMDDXXXX)" ControlToValidate="SSNInput" EnableClientScript="False"></asp:RequiredFieldValidator></h4>
        <br />

        <!-- Knappar -->
        <asp:Label ID="space" runat="server" Text="" Width="110px"></asp:Label>
        <asp:Button ID="AddAContact" runat="server" Text="Add" OnClick="AddAContact_Click" />
        <asp:Button ID="UpdateContactButton" runat="server" Text="Update" OnClick="UpdateContactButton_Click" />
        <asp:Button ID="DeleteContactButton" runat="server" Text="Delete" OnClick="DeleteContactButton_Click" />

    </div>

    <div id="right">
        <!-- Alla kontakter i en listbox -->
        <asp:ListBox ID="ListboxContacts" runat="server" Height="429px" Width="333px" AutoPostBack="True" OnSelectedIndexChanged="ListboxContacts_SelectedIndexChanged"></asp:ListBox>
    </div>--%>

</asp:Content>
