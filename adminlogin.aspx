<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="ElibraryManagement.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6"> 

            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col text-center">
                            <img src="\imgs\adminuser.jpg" class="img-fluid" style="max-width: 150px;" />
                        </div>
                    </div>

                    <div class="row mt-3">
                        <div class="col text-center">
                            <h3>Admin Login</h3>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <hr>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <label>Admin ID</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID"></asp:TextBox>
                            </div>

                            <label>Admin Password</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <a href="homepage.aspx"><< Back To Home</a>
            <br><br />
        </div>
    </div>
</div>
</asp:Content>
