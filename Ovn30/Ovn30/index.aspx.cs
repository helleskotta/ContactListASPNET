using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SqlLib;

namespace Ovn30
{
    public partial class index : System.Web.UI.Page

    {
        List<Contact> contacts = new List<Contact>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            UpdateListbox();
        }

        private void UpdateListbox()
        {
            List<Contact> contacts = MySQL.ReadContacts();

            ListboxContacts.Items.Clear();

            foreach (var contact in contacts)
            {
                ListboxContacts.Items.Add(new ListItem($"{contact.FirstName} {contact.LastName}", contact.ID.ToString()));
            }
        }


        protected void AddAContact_Click(object sender, EventArgs e)
        {
            string firstName = FirstNameInput.Text;
            string lastName = LastNameInput.Text;
            string ssn = SSNInput.Text;
            

            if (firstName.Length <= 2 || lastName.Length <= 2 || ssn.Length != 10)
            {
                // Felmeddelande
            }
            else
            {
                MySQL.CreateContact(firstName, lastName, ssn);
                FirstNameInput.Text = "";
                LastNameInput.Text = "";
                SSNInput.Text = "";

                UpdateListbox();
            }
        }

        protected void ListboxContacts_SelectedIndexChanged(object sender, EventArgs e)
        {
            int contactID = Convert.ToInt32(ListboxContacts.SelectedValue);
            var tempContact = MySQL.GetContactByID(contactID);

            FirstNameInput.Text = tempContact.FirstName;
            LastNameInput.Text = tempContact.LastName;
            SSNInput.Text = tempContact.SSN;
        }

        protected void DeleteContactButton_Click(object sender, EventArgs e)
        {
            int contactID = Convert.ToInt32(ListboxContacts.SelectedValue);
            FirstNameInput.Text = "";
            LastNameInput.Text = "";
            SSNInput.Text = "";
            MySQL.DeleteContact(contactID);

            UpdateListbox();

        }
    }
}