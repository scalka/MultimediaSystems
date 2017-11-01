<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
    </div>

    <div class="row">
        <div class="col-md-4">
            <ul style="list-style: none; ">
                <label name="lblDetails">ENTER DETAILS AND SET A DAY TO BOOK AND EVENT</label>
                <li>
                    <label name="lblName">Your Name</label>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </li>
                <li>
                    <label name="lblEvent">Event Name</label>
                    <asp:TextBox ID="txtEvent" runat="server"></asp:TextBox>
                </li>
                <li>
                    <label name="lblRooms">Meeting Room</label>
                    <asp:DropDownList ID="txtRoom" runat="server">
                        <asp:ListItem Text="Room1" Value="Room1" />
                        <asp:ListItem Text="Room2" Value="Room2" />
                        <asp:ListItem Text="Room3" Value="Room3" />
                    </asp:DropDownList>
                </li>
                <li>
                    <label name="lblAttendees">Attendees</label>
                    <asp:ListBox ID="txtAttendees" runat="server" SelectionMode="Multiple">
                        <asp:ListItem Text="Jack Jones" Value="Jack Jones" />
                        <asp:ListItem Text="Jack Bones" Value="Jack Bones" />
                        <asp:ListItem Text="Tom Nes" Value="Tom Nes" />
                        <asp:ListItem Text="Alice Trees" Value="Alice Trees" />
                        <asp:ListItem Text="Bob Fees" Value="Alice Trees" />
                        <asp:ListItem Text="Rob Trust" Value="Alice Trees" />
                    </asp:ListBox>
                </li>
            </ul>
        </div>
        <div class="col-md-4">
            <asp:Calendar ID="Calendar" runat="server">
            </asp:Calendar>
        </div>
        <div class="col-md-4">

           <asp:Button ID="btnSubmit" runat="server" Text="Submit Meeting Room Request" OnClick="btnSubmit_Click"/>
            <br />
            <br />
            <asp:Literal ID="lblConfirm" runat="server" />
        </div>
    </div>
</asp:Content>
