using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    string attendees;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
        foreach (ListItem li in txtAttendees.Items)
        {
            if (li.Selected)
            {
                attendees += li.Text + ", ";
            }
        }
        lblConfirm.Text = txtName.Text + " has booked " + txtRoom.SelectedItem + " on " + Calendar.SelectedDate.ToShortDateString() + " for " + txtEvent.Text + ". " + attendees + " will be attending.";
    }

}