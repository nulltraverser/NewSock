﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.ComponentModel;
using System.Data.EntityClient;
using System.Data.Objects;
using System.Data.Objects.DataClasses;
using System.Linq;
using System.Runtime.Serialization;
using System.Xml.Serialization;

[assembly: EdmSchemaAttribute()]
#region EDM Relationship Metadata

[assembly: EdmRelationshipAttribute("LightSwitchApplication", "FK_Feedback_Mood", "Mood", System.Data.Metadata.Edm.RelationshipMultiplicity.ZeroOrOne, typeof(LightSwitchApplication.Implementation.Mood), "Feedback", System.Data.Metadata.Edm.RelationshipMultiplicity.Many, typeof(LightSwitchApplication.Implementation.Feedback), true)]

#endregion

namespace LightSwitchApplication.Implementation
{
    #region Contexts
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    public partial class TellemData : ObjectContext
    {
        #region Constructors
    
        /// <summary>
        /// Initializes a new TellemData object using the connection string found in the 'TellemData' section of the application configuration file.
        /// </summary>
        public TellemData() : base("name=TellemData", "TellemData")
        {
            OnContextCreated();
        }
    
        /// <summary>
        /// Initialize a new TellemData object.
        /// </summary>
        public TellemData(string connectionString) : base(connectionString, "TellemData")
        {
            OnContextCreated();
        }
    
        /// <summary>
        /// Initialize a new TellemData object.
        /// </summary>
        public TellemData(EntityConnection connection) : base(connection, "TellemData")
        {
            OnContextCreated();
        }
    
        #endregion
    
        #region Partial Methods
    
        partial void OnContextCreated();
    
        #endregion
    
        #region ObjectSet Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        public ObjectSet<Company> Companys
        {
            get
            {
                if ((_Companys == null))
                {
                    _Companys = base.CreateObjectSet<Company>("Companys");
                }
                return _Companys;
            }
        }
        private ObjectSet<Company> _Companys;
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        public ObjectSet<Feedback> Feedbacks
        {
            get
            {
                if ((_Feedbacks == null))
                {
                    _Feedbacks = base.CreateObjectSet<Feedback>("Feedbacks");
                }
                return _Feedbacks;
            }
        }
        private ObjectSet<Feedback> _Feedbacks;
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        public ObjectSet<Message> Messages
        {
            get
            {
                if ((_Messages == null))
                {
                    _Messages = base.CreateObjectSet<Message>("Messages");
                }
                return _Messages;
            }
        }
        private ObjectSet<Message> _Messages;
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        public ObjectSet<Mood> Moods
        {
            get
            {
                if ((_Moods == null))
                {
                    _Moods = base.CreateObjectSet<Mood>("Moods");
                }
                return _Moods;
            }
        }
        private ObjectSet<Mood> _Moods;

        #endregion

        #region AddTo Methods
    
        /// <summary>
        /// Deprecated Method for adding a new object to the Companys EntitySet. Consider using the .Add method of the associated ObjectSet&lt;T&gt; property instead.
        /// </summary>
        public void AddToCompanys(Company company)
        {
            base.AddObject("Companys", company);
        }
    
        /// <summary>
        /// Deprecated Method for adding a new object to the Feedbacks EntitySet. Consider using the .Add method of the associated ObjectSet&lt;T&gt; property instead.
        /// </summary>
        public void AddToFeedbacks(Feedback feedback)
        {
            base.AddObject("Feedbacks", feedback);
        }
    
        /// <summary>
        /// Deprecated Method for adding a new object to the Messages EntitySet. Consider using the .Add method of the associated ObjectSet&lt;T&gt; property instead.
        /// </summary>
        public void AddToMessages(Message message)
        {
            base.AddObject("Messages", message);
        }
    
        /// <summary>
        /// Deprecated Method for adding a new object to the Moods EntitySet. Consider using the .Add method of the associated ObjectSet&lt;T&gt; property instead.
        /// </summary>
        public void AddToMoods(Mood mood)
        {
            base.AddObject("Moods", mood);
        }

        #endregion

    }

    #endregion

    #region Entities
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="LightSwitchApplication", Name="Company")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class Company : EntityObject
    {
        #region Factory Method
    
        /// <summary>
        /// Create a new Company object.
        /// </summary>
        /// <param name="id">Initial value of the ID property.</param>
        public static Company CreateCompany(global::System.Int32 id)
        {
            Company company = new Company();
            company.ID = id;
            return company;
        }

        #endregion

        #region Primitive Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 ID
        {
            get
            {
                return _ID;
            }
            set
            {
                if (_ID != value)
                {
                    OnIDChanging(value);
                    ReportPropertyChanging("ID");
                    _ID = value;
                    ReportPropertyChanged("ID");
                    OnIDChanged();
                }
            }
        }
        private global::System.Int32 _ID;
        partial void OnIDChanging(global::System.Int32 value);
        partial void OnIDChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Company_Name
        {
            get
            {
                return _Company_Name;
            }
            set
            {
                OnCompany_NameChanging(value);
                ReportPropertyChanging("Company_Name");
                _Company_Name = value;
                ReportPropertyChanged("Company_Name");
                OnCompany_NameChanged();
            }
        }
        private global::System.String _Company_Name;
        partial void OnCompany_NameChanging(global::System.String value);
        partial void OnCompany_NameChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public Nullable<global::System.Double> Longitude
        {
            get
            {
                return _Longitude;
            }
            set
            {
                OnLongitudeChanging(value);
                ReportPropertyChanging("Longitude");
                _Longitude = value;
                ReportPropertyChanged("Longitude");
                OnLongitudeChanged();
            }
        }
        private Nullable<global::System.Double> _Longitude;
        partial void OnLongitudeChanging(Nullable<global::System.Double> value);
        partial void OnLongitudeChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public Nullable<global::System.Double> Latitude
        {
            get
            {
                return _Latitude;
            }
            set
            {
                OnLatitudeChanging(value);
                ReportPropertyChanging("Latitude");
                _Latitude = value;
                ReportPropertyChanged("Latitude");
                OnLatitudeChanged();
            }
        }
        private Nullable<global::System.Double> _Latitude;
        partial void OnLatitudeChanging(Nullable<global::System.Double> value);
        partial void OnLatitudeChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public Nullable<global::System.Boolean> Active
        {
            get
            {
                return _Active;
            }
            set
            {
                OnActiveChanging(value);
                ReportPropertyChanging("Active");
                _Active = value;
                ReportPropertyChanged("Active");
                OnActiveChanged();
            }
        }
        private Nullable<global::System.Boolean> _Active;
        partial void OnActiveChanging(Nullable<global::System.Boolean> value);
        partial void OnActiveChanged();

        #endregion

    
    }
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="LightSwitchApplication", Name="Feedback")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class Feedback : EntityObject
    {
        #region Factory Method
    
        /// <summary>
        /// Create a new Feedback object.
        /// </summary>
        /// <param name="id">Initial value of the ID property.</param>
        public static Feedback CreateFeedback(global::System.Int32 id)
        {
            Feedback feedback = new Feedback();
            feedback.ID = id;
            return feedback;
        }

        #endregion

        #region Primitive Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 ID
        {
            get
            {
                return _ID;
            }
            set
            {
                if (_ID != value)
                {
                    OnIDChanging(value);
                    ReportPropertyChanging("ID");
                    _ID = value;
                    ReportPropertyChanged("ID");
                    OnIDChanged();
                }
            }
        }
        private global::System.Int32 _ID;
        partial void OnIDChanging(global::System.Int32 value);
        partial void OnIDChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Company
        {
            get
            {
                return _Company;
            }
            set
            {
                OnCompanyChanging(value);
                ReportPropertyChanging("Company");
                _Company = value;
                ReportPropertyChanged("Company");
                OnCompanyChanged();
            }
        }
        private global::System.String _Company;
        partial void OnCompanyChanging(global::System.String value);
        partial void OnCompanyChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Location
        {
            get
            {
                return _Location;
            }
            set
            {
                OnLocationChanging(value);
                ReportPropertyChanging("Location");
                _Location = value;
                ReportPropertyChanged("Location");
                OnLocationChanged();
            }
        }
        private global::System.String _Location;
        partial void OnLocationChanging(global::System.String value);
        partial void OnLocationChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Employee
        {
            get
            {
                return _Employee;
            }
            set
            {
                OnEmployeeChanging(value);
                ReportPropertyChanging("Employee");
                _Employee = value;
                ReportPropertyChanged("Employee");
                OnEmployeeChanged();
            }
        }
        private global::System.String _Employee;
        partial void OnEmployeeChanging(global::System.String value);
        partial void OnEmployeeChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Comment
        {
            get
            {
                return _Comment;
            }
            set
            {
                OnCommentChanging(value);
                ReportPropertyChanging("Comment");
                _Comment = value;
                ReportPropertyChanged("Comment");
                OnCommentChanged();
            }
        }
        private global::System.String _Comment;
        partial void OnCommentChanging(global::System.String value);
        partial void OnCommentChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String UserID
        {
            get
            {
                return _UserID;
            }
            set
            {
                OnUserIDChanging(value);
                ReportPropertyChanging("UserID");
                _UserID = value;
                ReportPropertyChanged("UserID");
                OnUserIDChanged();
            }
        }
        private global::System.String _UserID;
        partial void OnUserIDChanging(global::System.String value);
        partial void OnUserIDChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public Nullable<global::System.DateTime> DateCreated
        {
            get
            {
                return _DateCreated;
            }
            set
            {
                OnDateCreatedChanging(value);
                ReportPropertyChanging("DateCreated");
                _DateCreated = value;
                ReportPropertyChanged("DateCreated");
                OnDateCreatedChanged();
            }
        }
        private Nullable<global::System.DateTime> _DateCreated;
        partial void OnDateCreatedChanging(Nullable<global::System.DateTime> value);
        partial void OnDateCreatedChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public Nullable<global::System.Int32> Mood
        {
            get
            {
                return _Mood;
            }
            set
            {
                OnMoodChanging(value);
                ReportPropertyChanging("Mood");
                _Mood = value;
                ReportPropertyChanged("Mood");
                OnMoodChanged();
            }
        }
        private Nullable<global::System.Int32> _Mood;
        partial void OnMoodChanging(Nullable<global::System.Int32> value);
        partial void OnMoodChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Product
        {
            get
            {
                return _Product;
            }
            set
            {
                OnProductChanging(value);
                ReportPropertyChanging("Product");
                _Product = value;
                ReportPropertyChanged("Product");
                OnProductChanged();
            }
        }
        private global::System.String _Product;
        partial void OnProductChanging(global::System.String value);
        partial void OnProductChanged();

        #endregion

    
        #region Navigation Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [XmlIgnoreAttribute()]
        [SoapIgnoreAttribute()]
        [DataMemberAttribute()]
        [EdmRelationshipNavigationPropertyAttribute("LightSwitchApplication", "FK_Feedback_Mood", "Mood")]
        public Mood Mood1
        {
            get
            {
                return ((IEntityWithRelationships)this).RelationshipManager.GetRelatedReference<Mood>("LightSwitchApplication.FK_Feedback_Mood", "Mood").Value;
            }
            set
            {
                ((IEntityWithRelationships)this).RelationshipManager.GetRelatedReference<Mood>("LightSwitchApplication.FK_Feedback_Mood", "Mood").Value = value;
            }
        }
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [BrowsableAttribute(false)]
        [DataMemberAttribute()]
        public EntityReference<Mood> Mood1Reference
        {
            get
            {
                return ((IEntityWithRelationships)this).RelationshipManager.GetRelatedReference<Mood>("LightSwitchApplication.FK_Feedback_Mood", "Mood");
            }
            set
            {
                if ((value != null))
                {
                    ((IEntityWithRelationships)this).RelationshipManager.InitializeRelatedReference<Mood>("LightSwitchApplication.FK_Feedback_Mood", "Mood", value);
                }
            }
        }

        #endregion

    }
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="LightSwitchApplication", Name="Message")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class Message : EntityObject
    {
        #region Factory Method
    
        /// <summary>
        /// Create a new Message object.
        /// </summary>
        /// <param name="id">Initial value of the ID property.</param>
        public static Message CreateMessage(global::System.Int64 id)
        {
            Message message = new Message();
            message.ID = id;
            return message;
        }

        #endregion

        #region Primitive Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int64 ID
        {
            get
            {
                return _ID;
            }
            set
            {
                if (_ID != value)
                {
                    OnIDChanging(value);
                    ReportPropertyChanging("ID");
                    _ID = value;
                    ReportPropertyChanged("ID");
                    OnIDChanged();
                }
            }
        }
        private global::System.Int64 _ID;
        partial void OnIDChanging(global::System.Int64 value);
        partial void OnIDChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String MessageName
        {
            get
            {
                return _MessageName;
            }
            set
            {
                OnMessageNameChanging(value);
                ReportPropertyChanging("MessageName");
                _MessageName = value;
                ReportPropertyChanged("MessageName");
                OnMessageNameChanged();
            }
        }
        private global::System.String _MessageName;
        partial void OnMessageNameChanging(global::System.String value);
        partial void OnMessageNameChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Message1
        {
            get
            {
                return _Message1;
            }
            set
            {
                OnMessage1Changing(value);
                ReportPropertyChanging("Message1");
                _Message1 = value;
                ReportPropertyChanged("Message1");
                OnMessage1Changed();
            }
        }
        private global::System.String _Message1;
        partial void OnMessage1Changing(global::System.String value);
        partial void OnMessage1Changed();

        #endregion

    
    }
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="LightSwitchApplication", Name="Mood")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class Mood : EntityObject
    {
        #region Factory Method
    
        /// <summary>
        /// Create a new Mood object.
        /// </summary>
        /// <param name="id">Initial value of the ID property.</param>
        public static Mood CreateMood(global::System.Int32 id)
        {
            Mood mood = new Mood();
            mood.ID = id;
            return mood;
        }

        #endregion

        #region Primitive Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 ID
        {
            get
            {
                return _ID;
            }
            set
            {
                if (_ID != value)
                {
                    OnIDChanging(value);
                    ReportPropertyChanging("ID");
                    _ID = value;
                    ReportPropertyChanged("ID");
                    OnIDChanged();
                }
            }
        }
        private global::System.Int32 _ID;
        partial void OnIDChanging(global::System.Int32 value);
        partial void OnIDChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Description
        {
            get
            {
                return _Description;
            }
            set
            {
                OnDescriptionChanging(value);
                ReportPropertyChanging("Description");
                _Description = value;
                ReportPropertyChanged("Description");
                OnDescriptionChanged();
            }
        }
        private global::System.String _Description;
        partial void OnDescriptionChanging(global::System.String value);
        partial void OnDescriptionChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.Byte[] Emoticon
        {
            get
            {
                return StructuralObject.GetValidValue(_Emoticon);
            }
            set
            {
                OnEmoticonChanging(value);
                ReportPropertyChanging("Emoticon");
                _Emoticon = value;
                ReportPropertyChanged("Emoticon");
                OnEmoticonChanged();
            }
        }
        private global::System.Byte[] _Emoticon;
        partial void OnEmoticonChanging(global::System.Byte[] value);
        partial void OnEmoticonChanged();

        #endregion

    
        #region Navigation Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [XmlIgnoreAttribute()]
        [SoapIgnoreAttribute()]
        [DataMemberAttribute()]
        [EdmRelationshipNavigationPropertyAttribute("LightSwitchApplication", "FK_Feedback_Mood", "Feedback")]
        public EntityCollection<Feedback> Feedbacks
        {
            get
            {
                return ((IEntityWithRelationships)this).RelationshipManager.GetRelatedCollection<Feedback>("LightSwitchApplication.FK_Feedback_Mood", "Feedback");
            }
            set
            {
                if ((value != null))
                {
                    ((IEntityWithRelationships)this).RelationshipManager.InitializeRelatedCollection<Feedback>("LightSwitchApplication.FK_Feedback_Mood", "Feedback", value);
                }
            }
        }

        #endregion

    }

    #endregion

    
}
