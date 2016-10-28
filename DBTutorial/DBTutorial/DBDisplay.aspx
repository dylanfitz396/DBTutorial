<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DBDisplay.aspx.cs" Inherits="DBTutorial.DBDisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Student_Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="Student_Id" HeaderText="Student_Id" ReadOnly="True" SortExpression="Student_Id" />
                <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" SortExpression="Student_Name" />
                <asp:BoundField DataField="Student_Address" HeaderText="Student_Address" SortExpression="Student_Address" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IS4411ConnectionString1 %>" DeleteCommand="DELETE FROM [Students] WHERE [Student_Id] = @Student_Id" InsertCommand="INSERT INTO [Students] ([Student_Id], [Student_Name], [Student_Address]) VALUES (@Student_Id, @Student_Name, @Student_Address)" ProviderName="<%$ ConnectionStrings:IS4411ConnectionString1.ProviderName %>" SelectCommand="SELECT [Student_Id], [Student_Name], [Student_Address] FROM [Students]" UpdateCommand="UPDATE [Students] SET [Student_Name] = @Student_Name, [Student_Address] = @Student_Address WHERE [Student_Id] = @Student_Id">
            <DeleteParameters>
                <asp:Parameter Name="Student_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Student_Id" Type="Int32" />
                <asp:Parameter Name="Student_Name" Type="String" />
                <asp:Parameter Name="Student_Address" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Student_Name" Type="String" />
                <asp:Parameter Name="Student_Address" Type="String" />
                <asp:Parameter Name="Student_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
