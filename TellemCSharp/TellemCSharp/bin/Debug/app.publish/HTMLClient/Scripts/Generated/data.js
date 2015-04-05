/// <reference path="../Scripts/msls.js" />

window.myapp = msls.application;

(function (lightSwitchApplication) {

    var $Entity = msls.Entity,
        $DataService = msls.DataService,
        $DataWorkspace = msls.DataWorkspace,
        $defineEntity = msls._defineEntity,
        $defineDataService = msls._defineDataService,
        $defineDataWorkspace = msls._defineDataWorkspace,
        $DataServiceQuery = msls.DataServiceQuery,
        $toODataString = msls._toODataString;

    function Company(entitySet) {
        /// <summary>
        /// Represents the Company entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this company.
        /// </param>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this company.
        /// </field>
        /// <field name="Company_Name" type="String">
        /// Gets or sets the company_Name for this company.
        /// </field>
        /// <field name="Longitude" type="Number">
        /// Gets or sets the longitude for this company.
        /// </field>
        /// <field name="Latitude" type="Number">
        /// Gets or sets the latitude for this company.
        /// </field>
        /// <field name="Active" type="Boolean">
        /// Gets or sets the active for this company.
        /// </field>
        /// <field name="details" type="msls.application.Company.Details">
        /// Gets the details for this company.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function Feedback(entitySet) {
        /// <summary>
        /// Represents the Feedback entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this feedback.
        /// </param>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this feedback.
        /// </field>
        /// <field name="Company" type="String">
        /// Gets or sets the company for this feedback.
        /// </field>
        /// <field name="Location" type="String">
        /// Gets or sets the location for this feedback.
        /// </field>
        /// <field name="Employee" type="String">
        /// Gets or sets the employee for this feedback.
        /// </field>
        /// <field name="Comment" type="String">
        /// Gets or sets the comment for this feedback.
        /// </field>
        /// <field name="UserID" type="String">
        /// Gets or sets the userID for this feedback.
        /// </field>
        /// <field name="DateCreated" type="Date">
        /// Gets or sets the dateCreated for this feedback.
        /// </field>
        /// <field name="Mood1" type="msls.application.Mood">
        /// Gets or sets the mood1 for this feedback.
        /// </field>
        /// <field name="Product" type="String">
        /// Gets or sets the product for this feedback.
        /// </field>
        /// <field name="details" type="msls.application.Feedback.Details">
        /// Gets the details for this feedback.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function Message(entitySet) {
        /// <summary>
        /// Represents the Message entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this message.
        /// </param>
        /// <field name="ID" type="String">
        /// Gets or sets the iD for this message.
        /// </field>
        /// <field name="MessageName" type="String">
        /// Gets or sets the messageName for this message.
        /// </field>
        /// <field name="Message1" type="String">
        /// Gets or sets the message1 for this message.
        /// </field>
        /// <field name="details" type="msls.application.Message.Details">
        /// Gets the details for this message.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function Mood(entitySet) {
        /// <summary>
        /// Represents the Mood entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this mood.
        /// </param>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this mood.
        /// </field>
        /// <field name="Description" type="String">
        /// Gets or sets the description for this mood.
        /// </field>
        /// <field name="Emoticon" type="String">
        /// Gets or sets the emoticon for this mood.
        /// </field>
        /// <field name="Feedbacks" type="msls.EntityCollection" elementType="msls.application.Feedback">
        /// Gets the feedbacks for this mood.
        /// </field>
        /// <field name="details" type="msls.application.Mood.Details">
        /// Gets the details for this mood.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function TellemData(dataWorkspace) {
        /// <summary>
        /// Represents the TellemData data service.
        /// </summary>
        /// <param name="dataWorkspace" type="msls.DataWorkspace">
        /// The data workspace that created this data service.
        /// </param>
        /// <field name="Companys" type="msls.EntitySet">
        /// Gets the Companys entity set.
        /// </field>
        /// <field name="Feedbacks" type="msls.EntitySet">
        /// Gets the Feedbacks entity set.
        /// </field>
        /// <field name="Messages" type="msls.EntitySet">
        /// Gets the Messages entity set.
        /// </field>
        /// <field name="Moods" type="msls.EntitySet">
        /// Gets the Moods entity set.
        /// </field>
        /// <field name="details" type="msls.application.TellemData.Details">
        /// Gets the details for this data service.
        /// </field>
        $DataService.call(this, dataWorkspace);
    };
    function DataWorkspace() {
        /// <summary>
        /// Represents the data workspace.
        /// </summary>
        /// <field name="TellemData" type="msls.application.TellemData">
        /// Gets the TellemData data service.
        /// </field>
        /// <field name="details" type="msls.application.DataWorkspace.Details">
        /// Gets the details for this data workspace.
        /// </field>
        $DataWorkspace.call(this);
    };

    msls._addToNamespace("msls.application", {

        Company: $defineEntity(Company, [
            { name: "ID", type: Number, isReadOnly: true },
            { name: "Company_Name", type: String },
            { name: "Longitude", type: Number },
            { name: "Latitude", type: Number },
            { name: "Active", type: Boolean }
        ]),

        Feedback: $defineEntity(Feedback, [
            { name: "ID", type: Number, isReadOnly: true },
            { name: "Company", type: String },
            { name: "Location", type: String },
            { name: "Employee", type: String },
            { name: "Comment", type: String },
            { name: "UserID", type: String },
            { name: "DateCreated", type: Date },
            { name: "Mood1", kind: "reference", type: Mood },
            { name: "Product", type: String }
        ]),

        Message: $defineEntity(Message, [
            { name: "ID", type: String, isReadOnly: true },
            { name: "MessageName", type: String },
            { name: "Message1", type: String }
        ]),

        Mood: $defineEntity(Mood, [
            { name: "ID", type: Number },
            { name: "Description", type: String },
            { name: "Emoticon", type: String },
            { name: "Feedbacks", kind: "collection", elementType: Feedback }
        ]),

        TellemData: $defineDataService(TellemData, lightSwitchApplication.rootUri + "/TellemData.svc", [
            { name: "Companys", elementType: Company },
            { name: "Feedbacks", elementType: Feedback },
            { name: "Messages", elementType: Message },
            { name: "Moods", elementType: Mood }
        ], [
            {
                name: "Companys_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.Companys },
                        lightSwitchApplication.rootUri + "/TellemData.svc" + "/Companys(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            },
            {
                name: "Feedbacks_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.Feedbacks },
                        lightSwitchApplication.rootUri + "/TellemData.svc" + "/Feedbacks(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            },
            {
                name: "qryMyFeedback", value: function () {
                    return new $DataServiceQuery({ _entitySet: this.Feedbacks },
                        lightSwitchApplication.rootUri + "/TellemData.svc" + "/qryMyFeedback()",
                        {
                        });
                }
            },
            {
                name: "Messages_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.Messages },
                        lightSwitchApplication.rootUri + "/TellemData.svc" + "/Messages(" + "ID=" + $toODataString(ID, "Int64?") + ")"
                    );
                }
            },
            {
                name: "Moods_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.Moods },
                        lightSwitchApplication.rootUri + "/TellemData.svc" + "/Moods(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            }
        ]),

        DataWorkspace: $defineDataWorkspace(DataWorkspace, [
            { name: "TellemData", type: TellemData }
        ])

    });

}(msls.application));
