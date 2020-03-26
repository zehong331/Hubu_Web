using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Admain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HtmlControl MainFrame = (HtmlControl)this.FindControl("MainFrame");
            MainFrame.Attributes["src"] = "~/ViewAdmin/UserModfity.aspx";
        }
    }
    protected void LeftMenu_ItemClick(object source, DevExpress.Web.MenuItemEventArgs e)
    {
        String itemName = e.Item.Name;
        switch(itemName){
            case "个人中心":
                MainFrame.Attributes["src"] = "~/ViewAdmin/UserCenter.aspx";
                break;
            case "教师管理":
                MainFrame.Attributes["src"] = "~/ViewAdmin/UserModfity.aspx";
                break;
        }

        
    }
}