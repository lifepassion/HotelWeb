using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 数据访问与类库;

namespace TestDemo3
{
    public partial class indextem : System.Web.UI.Page
    {


        protected void Button1_Click1(object sender, EventArgs e)
        { 
            string a = Request.Params["checkbox1"].ToString();
            string[] RoomNumbers = a.Split(',');
            foreach (string RoomNumber in RoomNumbers)
            {
                string username = Request.Cookies["login_name"].Value;
                DataSet ds = DBHelper.ExecuteQuery("select * from WebUser where username='" + username + "'");
                if (DBHelper.Execute("insert into BookInfo (CustomerName,Phone,CheckInTime,RoomNumber) values('" + username.Trim() + "','" + ds.Tables[0].Rows[0][2].ToString().Trim() + "','" + DateTime.Now.AddDays(1) + "','" + RoomNumber.Trim() + "')") > 0
                    && DBHelper.Execute("update RoomInfo set RoomStatus='预定' where RoomNumber='" + RoomNumber.Trim() + "'") > 0)
                { 
                    Response.Write("<script language=javascript>alert('预订成功');</script>");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string a = Request.Params["checkbox2"].ToString();
            string[] RoomNumbers = a.Split(',');

            foreach (string RoomNumber in RoomNumbers)
            { 
                if (DBHelper.Execute("delete from BookInfo where RoomNumber='" + RoomNumber + "'") > 0
                    && DBHelper.Execute("update RoomInfo set RoomStatus='可供' where RoomNumber='" + RoomNumber + "'") > 0)
                {
                    Response.Write("<script language=javascript>alert('取消预订成功');</script>");
                }

            }
        }
    }
}