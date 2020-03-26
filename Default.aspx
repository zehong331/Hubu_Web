<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="~/Content/style.css" rel="stylesheet"  type ="text/css"/>
    <title>湖北大学学生管理系统</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="MainPane">
            <dx:ASPxPanel runat="server" ID="TopPanel" ClientInstanceName="TopPanel" FixedPosition="WindowTop"   FixedPositionOverlap="true" Width="100%" style="top: 0px; right: -1px; left: 1px; bottom: 512px;" CssClass="TopPanel">
                <SettingsCollapsing ExpandEffect="Slide" ExpandButton-Visible="true" />
                <SettingsAdaptivity CollapseAtWindowInnerWidth="1023" />    
                <PanelCollection>              
                    <dx:PanelContent>
                        <div class="LogoPane">
                                    <a class="LogoLink" href="Default.aspx">
                                        <dx:ASPxImage runat="server" ID="LogoImage" ShowLoadingImage="true" ImageUrl="~/Content/image/Logo/logo.png"></dx:ASPxImage>
                                    </a>
                          </div >
                        <div class="admin">
                        <a  href="Default.aspx"">管理员登录</a>
                        </div>
                        <div class="Title">
                            <h1>湖北大学学生管理系统</h1>
                        </div>
                     </dx:PanelContent>
                 </PanelCollection>
            </dx:ASPxPanel>
            <%--      <dx:ASPxPanel  runat="server" ID="LeftPanel" ClientInstanceName="LeftPanel" FixedPosition="WindowLeft"  Collapsible="true" Width="60px">
            </dx:ASPxPanel>--%>
        </div>
        <div class="SidePane">
            <dx:ASPxMenu ID="TopMenu" runat="server" DataSourceID="sm_Content" Width="100%"   AllowSelectItem="true" Theme="Material" AppearAfter="500" BorderBetweenItemAndSubMenu="HideAll">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </dx:ASPxMenu>
        </div>
        <dx:ASPxSiteMapDataSource ID="sm_Content" runat="server" SiteMapFileName="~/web.sitemap" />
    </form>
</body>
</html>
