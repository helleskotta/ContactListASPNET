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
            if (!IsPostBack)
                UpdateListbox();
        }
        
        private void UpdateListbox()
        {
            List<Contact> contacts = MySQL.ReadContacts();
            string literalContacts = "";

            //ListboxContacts.Items.Clear();

            foreach (var contact in contacts)
            {
                //ListboxContacts.Items.Add(new ListItem($"{contact.FirstName} {contact.LastName}", contact.ID.ToString()));
                #region Stuff
                literalContacts += "<tr>";
                literalContacts += $"<td>{contact.FirstName}</td>";
                literalContacts += $"<td>{contact.LastName}</td>";
                literalContacts += $"<td>";
                literalContacts += $"  <a href='HandleContact.aspx?action=update&cid={contact.ID}'>Update</a>/";
                literalContacts += $"  <a href='HandleContact.aspx?action=edit&cid={contact.ID}'>Edit</a>/";
                literalContacts += $"  <a href='HandleContact.aspx?action=delete&cid={contact.ID}'>Delete</a>/";
                literalContacts += $"</td>";
                literalContacts += "</tr>";
                #endregion
            }

            ContactLiteral.Text = literalContacts;
        }
        
        //protected void AddAContact_Click(object sender, EventArgs e)
        //{
        //    string firstName = FirstNameInput.Text;
        //    string lastName = LastNameInput.Text;
        //    string ssn = SSNInput.Text;

        //    if (!IsValid)
        //    {
        //        // Felmeddelande
        //    }
        //    else
        //    {
        //        MySQL.CreateContact(firstName, lastName, ssn);
        //        EmptyField();

        //        UpdateListbox();
        //    }
        //}
        
        //protected void ListboxContacts_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    int contactID = Convert.ToInt32(ListboxContacts.SelectedValue);
        //    var tempContact = MySQL.GetContactByID(contactID);

        //    FirstNameInput.Text = tempContact.FirstName;
        //    LastNameInput.Text = tempContact.LastName;
        //    SSNInput.Text = tempContact.SSN;
        //}
        
        //protected void DeleteContactButton_Click(object sender, EventArgs e)
        //{
        //    if (IsValid)
        //    {
        //        int contactID = Convert.ToInt32(ListboxContacts.SelectedValue);

        //        MySQL.DeleteContact(contactID);
        //        EmptyField();

        //        UpdateListbox();
        //        // TODO Javascript popup
        //    }
        //}

        //protected void UpdateContactButton_Click(object sender, EventArgs e)
        //{
        //    if (IsValid)
        //    {
        //        int contactID = Convert.ToInt32(ListboxContacts.SelectedValue);
        //        string firstName = FirstNameInput.Text;
        //        string lastName = LastNameInput.Text;
        //        string ssn = SSNInput.Text;

        //        MySQL.UpdateContact(contactID, firstName, lastName, ssn);
        //        EmptyField();
        //    }
        //}

        //public void EmptyField()
        //{
        //    FirstNameInput.Text = "";
        //    LastNameInput.Text = "";
        //    SSNInput.Text = "";
        //}

        //protected void EmptyFieldButton_Click(object sender, EventArgs e)
        //{
        //    EmptyField();
        //}
    }
}