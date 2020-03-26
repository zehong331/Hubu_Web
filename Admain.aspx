<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admain.aspx.cs" Inherits="Admain" %>

<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="~/Content/admin.css" rel="stylesheet"  type ="text/css"/>
<title></title>
</head>
<body>
    <form id="form1" runat="server">
          <div class ="Main">
            <div class="TopPanel">
            <dx:ASPxPanel runat="server" ID="TopPanel" ClientInstanceName="TopPanel" FixedPosition="WindowTop"   FixedPositionOverlap="true" Width="100%" CssClass="top" Theme="Material">
                <PanelCollection>
                    <dx:PanelContent>
                            <dx:ASPxImage ID="img_logo" runat="server" Height="50px" ImageUrl="~/Content/image/Logo/logo.png" ShowLoadingImage="true" Width="185px">
                            </dx:ASPxImage>
                            <div class="Default">
                                 <a href="Default.aspx">返回首页</a>
                                 <a href="Default.aspx">退出登录</a>
                            </div>
                    </dx:PanelContent>
                </PanelCollection>
            </dx:ASPxPanel>
            </div>
                        <div class="left">
                                    <dx:ASPxPanel runat="server" ID="LeftPanel" ClientInstanceName="LeftPanel" FixedPosition="WindowLeft" 
                                            FixedPositionOverlap="true" CssClass="LeftPanel">
                                        <SettingsCollapsing ExpandEffect="Slide" ExpandButton-Visible="true" />
                                         <SettingsAdaptivity CollapseAtWindowInnerWidth="1023" />    
                                        <PanelCollection>   
                                            <dx:PanelContent>
                                                <dx:ASPxMenu ID="LeftMenu" runat="server"  Orientation="Vertical" DataSourceID="sm_admin"  AllowSelectItem="true" Width="100%" HorizontalAlign="Center"  AppearAfter="500" Theme="Material" BackColor="#019789" BorderBetweenItemAndSubMenu="HideAll" EnableTheming="True">
                                                    <ItemStyle HoverStyle-BackColor="#49C190" SelectedStyle-BackColor="#49C190" Height="50px" HorizontalAlign="Center" ForeColor="White" Paddings-PaddingTop="17px" Border-BorderColor="#019789" >
                                                        <SelectedStyle BackColor="#49C190"></SelectedStyle>
                                                        <HoverStyle BackColor="#49C190"></HoverStyle>
                                                        <Paddings PaddingTop="17px"></Paddings>
                                                    </ItemStyle>
                                                    <SubMenuItemStyle BackColor="#019789" HorizontalAlign="Center" Height="50px" Width="150px" Paddings-PaddingTop="17px">
                                                        <SelectedStyle BackColor="#49C190"></SelectedStyle>
                                                        <HoverStyle BackColor="#49C190"></HoverStyle>
                                                        <Paddings PaddingTop="17px"></Paddings>
                                                    </SubMenuItemStyle>
                                                    <SubMenuStyle BackColor="#019789" HorizontalAlign="Center" ForeColor="White" />
                                                </dx:ASPxMenu>
                                            </dx:PanelContent>
                                        </PanelCollection>
                                     </dx:ASPxPanel>
                                        <div class="MainFrame" style=" position:relative;width:100%; height:inherit;" >
                                            <asp:UpdatePanel ID="UpdatePanel" runat="server"></asp:UpdatePanel>
                                        </div>
                                     </div>
              </div>
        <dx:ASPxSiteMapDataSource ID="sm_admin" runat="server" SiteMapFileName="~/web1.sitemap" />
    </form>
</body>
</html>
