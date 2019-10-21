using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;

namespace BookStore
{
    public partial class UserInput : System.Web.UI.Page
    {

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            String Today = DateTime.Now.ToShortDateString().ToString();
            String authorName = lblAuthor.Text;
            if (authorName == "")
            {
                authorName = "Unknown";
            }
            else
            {
                authorName = authorName.Substring(0, authorName.LastIndexOf(","));
            }
            String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String query = "insert into Books (BookTitle,Author,ISBN,PublishingDate,Category,Page,Price,Publisher) values('" + this.txtBookTitle.Text + "','" + authorName + "','" + this.txtIsbn.Text +
                "','" + this.txtDate.Text + "','" + this.dplCategory.SelectedValue + "','" + this.txtPage.Text + "','" + this.txtPrice.Text + "','" + this.chkPublisher.SelectedValue + "');";
            SqlConnection conDataBase = new SqlConnection(conString);
            SqlCommand cmdDataBase = new SqlCommand(query, conDataBase);
            SqlDataReader sqlDataReader;
            try
            {
                conDataBase.Open();
                sqlDataReader = cmdDataBase.ExecuteReader();
                GridView2.DataBind();
                MessageBox.Show("Saved!");
                conDataBase.Close();
                lblAuthor.Text = "";
                txtBookTitle.Text = "";
                txtIsbn.Text = "";
                txtPage.Text = "";
                txtPrice.Text = "";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        // Chen Tong
        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            //String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String BookTitle = txtBookSeach.Text;
            Decimal BookPrice = 0;
            if (txtPriceSeach.Text == "")
            {
                BookPrice = 0;
            }
            else
            {
                BookPrice = Convert.ToDecimal(txtPriceSeach.Text);
            }
            String BookCate = dplCateSearch.Text;
            String query = "Select * from Books";
            List<string> wheres = new List<string>();
            if (txtBookSeach.Text != "")
            {
                wheres.Add(" BookTitle = '" + BookTitle + "'");
            }
            if (txtPriceSeach.Text != "")
            {
                wheres.Add(" Price > '" + BookPrice + "'");
            }
            if (dplCateSearch.Text != "")
            {
                wheres.Add(" Category = '" + BookCate + "'");
            }
            if (wheres.Count > 0)
            {
                string wh = string.Join(" and ", wheres.ToArray());
                query += " where" + wh;
            }

            SqlDataSource1.SelectCommand = query;
        }
        protected void authorAdd_Click(object sender, EventArgs e)
        {
            if (txtAuthor.Text != "")
            {
                lblAuthor.Text += txtAuthor.Text + ",";
                txtAuthor.Text = "";
            }
        }
    }
}
