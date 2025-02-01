<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="ElibraryManagement.adminbookinventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">
                        <div class="row mt-3">
                            <div class="col text-center">
                                <h4>Book Details</h4>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col text-center">
                                <img id="imgview" src="\book_inventory\books.png" class="img-fluid" style="max-width: 100px;" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col mx-auto">
                                <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <label>Book ID</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                    <div class="input-group-append">
                                        <asp:Button class="btn btn-secondary" ID="Button3" type="button" value="Go" Text="Go" runat="server" OnClick="Button3_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Book Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" placeholder="Language">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                        <asp:ListItem Text="Romanian" Value="Romanian"></asp:ListItem>
                                    </asp:DropDownList>
                                    <label>Publisher Name</label>
                                    <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList5" runat="server" placeholder="Publisher Name">
                                            <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                            <asp:ListItem Text="Mihai Bendeac" Value="Mihai Bendeac"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Author Name</label>
                                <asp:DropDownList class="form-control" ID="DropDownList3" runat="server" placeholder="Author Name">
                                    <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                    <asp:ListItem Text="Mihai Bendeac" Value="Mihai Bendeac"></asp:ListItem>
                                </asp:DropDownList>
                                <label>Publish Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Publish Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Genre</label>
                                <asp:ListBox class="form-control" ID="ListBox1" runat="server" placeholder="genre" SelectionMode="Multiple" Rows="4">
                                    <asp:ListItem Text="Action" Value="Action"></asp:ListItem>
                                    <asp:ListItem Text="Adventure" Value="Adventure"></asp:ListItem>
                                    <asp:ListItem Text="Comic Book" Value="Comic Book"></asp:ListItem>
                                    <asp:ListItem Text="Self Help" Value="Self Help"></asp:ListItem>
                                </asp:ListBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Edition</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Edition"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Book Price(per unit)</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Book Price" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pages</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Actual Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Actual Stock" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Current Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Current Stock" TextMode="Number" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Issued Books</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Issued Books" TextMode="Number" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col mx-auto">
                                <label>Book Description</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Book Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-4">
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group">
                                    <asp:Button class="btn btn-warning btn-block btn-lg" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group">
                                    <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <a href="homepage.aspx"><< Back To Home</a>
                <br>
                <br />
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row mt-3">
                            <div class="col text-center">
                                <h4>Book Inventory List</h4>
                            </div>
                        </div>
                        <div class="row ">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>"
                                SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                            <div class="col ">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="true" SortExpression="book_id" >

                                        <ControlStyle Font-Bold="True" />
                                        <ItemStyle Font-Bold="True" />
                                        </asp:BoundField>

                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-10">
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Author -
                                                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                    &nbsp;| Genre -
                                                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                    &nbsp;| Language -
                                                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>

                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Publisher -
                                                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                    &nbsp;| Publish Date -
                                                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                                    &nbsp;| Pages -
                                                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Label"></asp:Label>
                                                                    &nbsp;| Edition -
                                                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>

                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">

                                                                    cost -
                                                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                    &nbsp;| Actual Stock -
                                                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                    &nbsp;| Available Stock -
                                                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>

                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">

                                                                    Description -
                                                                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>

                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-2">
                                                            <asp:Image CssClass="img-fluid p-2" ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
