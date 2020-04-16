using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 数据访问与类库;

namespace TestDemo3
{
    public partial class _1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string username = Request.Params["inputEmail"].ToString();
            string password = MD5Helper.ToMD5(Request.Params["inputPassword"].ToString());
       
            if (DBHelper.ExecuteQuery("select * from WebUser where username='" + username + "' and password='" + password + "'").Tables[0].Rows.Count > 0)
            {
                //放一个Cookie来指示是哪名用户登陆了
                HttpCookie cookie = new HttpCookie("login_name", username);
                Response.Cookies.Add(cookie);
                Response.Redirect("indextem.aspx");
            }
            else
            {
                Response.Write("<script language=javascript>alert('用户名或密码错误');</script>");
        
            }

        }
    }


       
 
}