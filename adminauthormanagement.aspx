<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="ElibraryManagement.adminauthormanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">


                        <div class="row mt-3">
                            <div class="col text-center">
                                <h4>Author Details</h4>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col text-center">
                                <img src="\imgs\writer.png" class="img-fluid" style="max-width: 100px;" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Author ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <div class="input-group-append">
                                            <input class="btn btn-secondary" id="Button3" type="button" value="Go" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Author Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4">
                                <center>
                                    <div class="form-group">
                                        <a href="usersignup.aspx">
                                            <input class="btn btn-success btn-block btn-lg" id="Button2" type="button" value="Add" /></a>
                                    </div>
                                </center>
                            </div>
                            <div class="col-4">
                                <center>
                                    <div class="form-group">
                                        <a href="usersignup.aspx">
                                            <input class="btn btn-primary btn-block btn-lg" id="Button1" type="button" value="Update" /></a>
                                    </div>
                                </center>
                            </div>
                            <div class="col-4">
                                <center>
                                    <div class="form-group">
                                        <a href="usersignup.aspx">
                                            <input class="btn btn-danger btn-block btn-lg" id="Button4" type="button" value="Delete" /></a>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>
                </div>

                <a href="homepage.aspx"><< Back To Home</a>
                <br>
                <br />
            </div>

            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row mt-3">
                            <div class="col text-center">
                                <h4>Author List</h4>
                            </div>
                        </div>
                        <div class="row ">
                            <div class="col ">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
