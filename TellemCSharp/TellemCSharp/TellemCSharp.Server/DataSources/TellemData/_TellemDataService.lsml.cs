using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.LightSwitch;
using Microsoft.LightSwitch.Security.Server;
using System.Linq.Expressions;

namespace LightSwitchApplication
{
    public partial class TellemDataService
    {
        partial void Feedbacks_CanRead(ref bool result)
        {
            //result = false;
            //if (this.Application.User.HasPermission(Permissions.Tellem)) {
            //    result = true;
            //}
            //if (this.Application.User.HasPermission(Permissions.SecurityAdministration))
            //{
            //    result = true;
            //}
            result = true;
        }

        partial void Feedbacks_Inserting(Feedback entity)
        {
            entity.UserID = this.Application.User.Name;
            entity.DateCreated = DateTime.Now;
        }

        partial void Feedbacks_Updating(Feedback entity)
        {
            entity.UserID = this.Application.User.Name;
        }

        partial void Feedbacks_Filter(ref Expression<Func<Feedback, bool>> filter)
        {
            // filter = e => e.IntegerProperty == 0;
            // filter = e => e.UserID == this.Application.User.Name;
            bool allowed = false;
            if (this.Application.User.HasPermission(Permissions.Tellem))
            {
                allowed = true;
            }
            if (this.Application.User.HasPermission(Permissions.SecurityAdministration))
            {
                allowed = true;
            }
            if (allowed == false)
            {
                filter = e => e.UserID == this.Application.User.Name;
            }
        }

        partial void qryMyFeedback_PreprocessQuery(ref IQueryable<Feedback> query)
        {
            query = query.Where(t => t.UserID == this.Application.User.Name);
        }
    }
}
