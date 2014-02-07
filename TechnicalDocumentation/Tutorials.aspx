<%@ Page Title="" Language="VB" MasterPageFile="~/Portfolio/MasterPage.master" %>

<%@ Import Namespace="frontEnd" %>
<script runat="server">
    Dim pageContent As PageContent
    Sub Page_Load()
        Try
            'Bind Repeater with content from database
            pageContent = New PageContent("pmcnutt", "pmcnutt", "pm0245232", "tbltutorial")
            pageContent.bindContent(repeaterDisplay)
            
        Finally
        End Try
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="DropSpot" runat="Server">
    <div class="content">  
    <%--repeater that will be binded with content to be displayed on the page--%>
    <br />
    <span class="title">Tutorials</span>
    <asp:Repeater ID="repeaterDisplay" runat="server">
        <HeaderTemplate>
            <table id="repeaterTable">
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <hr />
                </td>
            </tr>
            <tr>
                <td>
                    <div class="title"><%# Eval("title")%></div>
                </td>
            </tr>
            <tr>
                <td><%# Eval("description")%></td>
            </tr>
            <tr>
                <td><a href="http://web.nscctruro.ca/mcnutt_paula/Portfolio/TechnicalDocumentation/tutorials/<%# Eval("name")%>" target="blank">Click here to view Tutorial </a>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
    </div>
</asp:Content>

