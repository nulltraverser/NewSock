/// <reference path="viewModel.js" />

(function (lightSwitchApplication) {

    var $element = document.createElement("div");

    lightSwitchApplication.About.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.About
        },
        FeedbackList: {
            _$class: msls.ContentItem,
            _$name: "FeedbackList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.About,
            data: lightSwitchApplication.About,
            value: lightSwitchApplication.About
        },
        AboutText: {
            _$class: msls.ContentItem,
            _$name: "AboutText",
            _$parentName: "FeedbackList",
            screen: lightSwitchApplication.About,
            data: lightSwitchApplication.About,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.About
        }
    };

    msls._addEntryPoints(lightSwitchApplication.About, {
        /// <field>
        /// Called when a new About screen is created.
        /// <br/>created(msls.application.About screen)
        /// </field>
        created: [lightSwitchApplication.About],
        /// <field>
        /// Called before changes on an active About screen are applied.
        /// <br/>beforeApplyChanges(msls.application.About screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.About],
        /// <field>
        /// Called after the FeedbackList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FeedbackList_postRender: [$element, function () { return new lightSwitchApplication.About().findContentItem("FeedbackList"); }],
        /// <field>
        /// Called after the AboutText content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        AboutText_postRender: [$element, function () { return new lightSwitchApplication.About().findContentItem("AboutText"); }]
    });

    lightSwitchApplication.AddEditFeedback.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditFeedback
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.AddEditFeedback,
            data: lightSwitchApplication.AddEditFeedback,
            value: lightSwitchApplication.AddEditFeedback
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.AddEditFeedback,
            data: lightSwitchApplication.AddEditFeedback,
            value: lightSwitchApplication.Feedback
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditFeedback,
            data: lightSwitchApplication.Feedback,
            value: lightSwitchApplication.Feedback
        },
        Company: {
            _$class: msls.ContentItem,
            _$name: "Company",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFeedback,
            data: lightSwitchApplication.Feedback,
            value: String
        },
        Location: {
            _$class: msls.ContentItem,
            _$name: "Location",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFeedback,
            data: lightSwitchApplication.Feedback,
            value: String
        },
        Product: {
            _$class: msls.ContentItem,
            _$name: "Product",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFeedback,
            data: lightSwitchApplication.Feedback,
            value: String
        },
        Mood1: {
            _$class: msls.ContentItem,
            _$name: "Mood1",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFeedback,
            data: lightSwitchApplication.Feedback,
            value: lightSwitchApplication.Mood
        },
        RowTemplate: {
            _$class: msls.ContentItem,
            _$name: "RowTemplate",
            _$parentName: "Mood1",
            screen: lightSwitchApplication.AddEditFeedback,
            data: lightSwitchApplication.Mood,
            value: lightSwitchApplication.Mood
        },
        Comment: {
            _$class: msls.ContentItem,
            _$name: "Comment",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFeedback,
            data: lightSwitchApplication.Feedback,
            value: String
        },
        Employee: {
            _$class: msls.ContentItem,
            _$name: "Employee",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFeedback,
            data: lightSwitchApplication.Feedback,
            value: String
        },
        Group: {
            _$class: msls.ContentItem,
            _$name: "Group",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFeedback,
            data: lightSwitchApplication.Feedback,
            value: lightSwitchApplication.Feedback
        },
        Cancel1: {
            _$class: msls.ContentItem,
            _$name: "Cancel1",
            _$parentName: "Group",
            screen: lightSwitchApplication.AddEditFeedback
        },
        Save1: {
            _$class: msls.ContentItem,
            _$name: "Save1",
            _$parentName: "Group",
            screen: lightSwitchApplication.AddEditFeedback
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditFeedback
        }
    };

    msls._addEntryPoints(lightSwitchApplication.AddEditFeedback, {
        /// <field>
        /// Called when a new AddEditFeedback screen is created.
        /// <br/>created(msls.application.AddEditFeedback screen)
        /// </field>
        created: [lightSwitchApplication.AddEditFeedback],
        /// <field>
        /// Called before changes on an active AddEditFeedback screen are applied.
        /// <br/>beforeApplyChanges(msls.application.AddEditFeedback screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.AddEditFeedback],
        /// <field>
        /// Called to determine if the Save method can be executed.
        /// <br/>canExecute(msls.application.AddEditFeedback screen)
        /// </field>
        Save_canExecute: [lightSwitchApplication.AddEditFeedback],
        /// <field>
        /// Called to execute the Save method.
        /// <br/>execute(msls.application.AddEditFeedback screen)
        /// </field>
        Save_execute: [lightSwitchApplication.AddEditFeedback],
        /// <field>
        /// Called to determine if the Cancel method can be executed.
        /// <br/>canExecute(msls.application.AddEditFeedback screen)
        /// </field>
        Cancel_canExecute: [lightSwitchApplication.AddEditFeedback],
        /// <field>
        /// Called to execute the Cancel method.
        /// <br/>execute(msls.application.AddEditFeedback screen)
        /// </field>
        Cancel_execute: [lightSwitchApplication.AddEditFeedback],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.AddEditFeedback().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.AddEditFeedback().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.AddEditFeedback().findContentItem("left"); }],
        /// <field>
        /// Called after the Company content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Company_postRender: [$element, function () { return new lightSwitchApplication.AddEditFeedback().findContentItem("Company"); }],
        /// <field>
        /// Called after the Location content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Location_postRender: [$element, function () { return new lightSwitchApplication.AddEditFeedback().findContentItem("Location"); }],
        /// <field>
        /// Called after the Product content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Product_postRender: [$element, function () { return new lightSwitchApplication.AddEditFeedback().findContentItem("Product"); }],
        /// <field>
        /// Called after the Mood1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Mood1_postRender: [$element, function () { return new lightSwitchApplication.AddEditFeedback().findContentItem("Mood1"); }],
        /// <field>
        /// Called after the RowTemplate content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        RowTemplate_postRender: [$element, function () { return new lightSwitchApplication.AddEditFeedback().findContentItem("RowTemplate"); }],
        /// <field>
        /// Called after the Comment content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Comment_postRender: [$element, function () { return new lightSwitchApplication.AddEditFeedback().findContentItem("Comment"); }],
        /// <field>
        /// Called after the Employee content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Employee_postRender: [$element, function () { return new lightSwitchApplication.AddEditFeedback().findContentItem("Employee"); }],
        /// <field>
        /// Called after the Group content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Group_postRender: [$element, function () { return new lightSwitchApplication.AddEditFeedback().findContentItem("Group"); }],
        /// <field>
        /// Called after the Cancel1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Cancel1_postRender: [$element, function () { return new lightSwitchApplication.AddEditFeedback().findContentItem("Cancel1"); }],
        /// <field>
        /// Called after the Save1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Save1_postRender: [$element, function () { return new lightSwitchApplication.AddEditFeedback().findContentItem("Save1"); }]
    });

    lightSwitchApplication.BrowseFeedbacks.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseFeedbacks
        },
        FeedbackList: {
            _$class: msls.ContentItem,
            _$name: "FeedbackList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.BrowseFeedbacks,
            data: lightSwitchApplication.BrowseFeedbacks,
            value: lightSwitchApplication.BrowseFeedbacks
        },
        Feedback: {
            _$class: msls.ContentItem,
            _$name: "Feedback",
            _$parentName: "FeedbackList",
            screen: lightSwitchApplication.BrowseFeedbacks,
            data: lightSwitchApplication.BrowseFeedbacks,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.BrowseFeedbacks,
                _$entry: {
                    elementType: lightSwitchApplication.Feedback
                }
            }
        },
        RowTemplate: {
            _$class: msls.ContentItem,
            _$name: "RowTemplate",
            _$parentName: "Feedback",
            screen: lightSwitchApplication.BrowseFeedbacks,
            data: lightSwitchApplication.Feedback,
            value: lightSwitchApplication.Feedback
        },
        Company: {
            _$class: msls.ContentItem,
            _$name: "Company",
            _$parentName: "RowTemplate",
            screen: lightSwitchApplication.BrowseFeedbacks,
            data: lightSwitchApplication.Feedback,
            value: String
        },
        Product: {
            _$class: msls.ContentItem,
            _$name: "Product",
            _$parentName: "RowTemplate",
            screen: lightSwitchApplication.BrowseFeedbacks,
            data: lightSwitchApplication.Feedback,
            value: String
        },
        Mood1: {
            _$class: msls.ContentItem,
            _$name: "Mood1",
            _$parentName: "RowTemplate",
            screen: lightSwitchApplication.BrowseFeedbacks,
            data: lightSwitchApplication.Feedback,
            value: lightSwitchApplication.Mood
        },
        Comment: {
            _$class: msls.ContentItem,
            _$name: "Comment",
            _$parentName: "RowTemplate",
            screen: lightSwitchApplication.BrowseFeedbacks,
            data: lightSwitchApplication.Feedback,
            value: String
        },
        UserID: {
            _$class: msls.ContentItem,
            _$name: "UserID",
            _$parentName: "RowTemplate",
            screen: lightSwitchApplication.BrowseFeedbacks,
            data: lightSwitchApplication.Feedback,
            value: String
        },
        DateCreated: {
            _$class: msls.ContentItem,
            _$name: "DateCreated",
            _$parentName: "RowTemplate",
            screen: lightSwitchApplication.BrowseFeedbacks,
            data: lightSwitchApplication.Feedback,
            value: Date
        },
        AddFeedback: {
            _$class: msls.ContentItem,
            _$name: "AddFeedback",
            _$parentName: "FeedbackList",
            screen: lightSwitchApplication.BrowseFeedbacks
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseFeedbacks
        }
    };

    msls._addEntryPoints(lightSwitchApplication.BrowseFeedbacks, {
        /// <field>
        /// Called when a new BrowseFeedbacks screen is created.
        /// <br/>created(msls.application.BrowseFeedbacks screen)
        /// </field>
        created: [lightSwitchApplication.BrowseFeedbacks],
        /// <field>
        /// Called before changes on an active BrowseFeedbacks screen are applied.
        /// <br/>beforeApplyChanges(msls.application.BrowseFeedbacks screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.BrowseFeedbacks],
        /// <field>
        /// Called to determine if the customViewSelected method can be executed.
        /// <br/>canExecute(msls.application.BrowseFeedbacks screen)
        /// </field>
        customViewSelected_canExecute: [lightSwitchApplication.BrowseFeedbacks],
        /// <field>
        /// Called to execute the customViewSelected method.
        /// <br/>execute(msls.application.BrowseFeedbacks screen)
        /// </field>
        customViewSelected_execute: [lightSwitchApplication.BrowseFeedbacks],
        /// <field>
        /// Called after the FeedbackList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FeedbackList_postRender: [$element, function () { return new lightSwitchApplication.BrowseFeedbacks().findContentItem("FeedbackList"); }],
        /// <field>
        /// Called after the Feedback content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Feedback_postRender: [$element, function () { return new lightSwitchApplication.BrowseFeedbacks().findContentItem("Feedback"); }],
        /// <field>
        /// Called after the RowTemplate content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        RowTemplate_postRender: [$element, function () { return new lightSwitchApplication.BrowseFeedbacks().findContentItem("RowTemplate"); }],
        /// <field>
        /// Called after the Company content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Company_postRender: [$element, function () { return new lightSwitchApplication.BrowseFeedbacks().findContentItem("Company"); }],
        /// <field>
        /// Called after the Product content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Product_postRender: [$element, function () { return new lightSwitchApplication.BrowseFeedbacks().findContentItem("Product"); }],
        /// <field>
        /// Called after the Mood1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Mood1_postRender: [$element, function () { return new lightSwitchApplication.BrowseFeedbacks().findContentItem("Mood1"); }],
        /// <field>
        /// Called after the Comment content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Comment_postRender: [$element, function () { return new lightSwitchApplication.BrowseFeedbacks().findContentItem("Comment"); }],
        /// <field>
        /// Called after the UserID content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        UserID_postRender: [$element, function () { return new lightSwitchApplication.BrowseFeedbacks().findContentItem("UserID"); }],
        /// <field>
        /// Called after the DateCreated content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        DateCreated_postRender: [$element, function () { return new lightSwitchApplication.BrowseFeedbacks().findContentItem("DateCreated"); }],
        /// <field>
        /// Called after the AddFeedback content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        AddFeedback_postRender: [$element, function () { return new lightSwitchApplication.BrowseFeedbacks().findContentItem("AddFeedback"); }]
    });

    lightSwitchApplication.Main.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.Main
        },
        FeedbackList: {
            _$class: msls.ContentItem,
            _$name: "FeedbackList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.Main,
            data: lightSwitchApplication.Main,
            value: lightSwitchApplication.Main
        },
        Message: {
            _$class: msls.ContentItem,
            _$name: "Message",
            _$parentName: "FeedbackList",
            screen: lightSwitchApplication.Main,
            data: lightSwitchApplication.Main,
            value: String
        },
        ShowAddEditFeedback: {
            _$class: msls.ContentItem,
            _$name: "ShowAddEditFeedback",
            _$parentName: "FeedbackList",
            screen: lightSwitchApplication.Main
        },
        ShowBrowseFeedbacks1: {
            _$class: msls.ContentItem,
            _$name: "ShowBrowseFeedbacks1",
            _$parentName: "FeedbackList",
            screen: lightSwitchApplication.Main
        },
        ShowMyFeedback1: {
            _$class: msls.ContentItem,
            _$name: "ShowMyFeedback1",
            _$parentName: "FeedbackList",
            screen: lightSwitchApplication.Main
        },
        Group: {
            _$class: msls.ContentItem,
            _$name: "Group",
            _$parentName: "FeedbackList",
            screen: lightSwitchApplication.Main,
            data: lightSwitchApplication.Main,
            value: lightSwitchApplication.Main
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.Main
        }
    };

    msls._addEntryPoints(lightSwitchApplication.Main, {
        /// <field>
        /// Called when a new Main screen is created.
        /// <br/>created(msls.application.Main screen)
        /// </field>
        created: [lightSwitchApplication.Main],
        /// <field>
        /// Called before changes on an active Main screen are applied.
        /// <br/>beforeApplyChanges(msls.application.Main screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.Main],
        /// <field>
        /// Called after the FeedbackList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FeedbackList_postRender: [$element, function () { return new lightSwitchApplication.Main().findContentItem("FeedbackList"); }],
        /// <field>
        /// Called after the Message content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Message_postRender: [$element, function () { return new lightSwitchApplication.Main().findContentItem("Message"); }],
        /// <field>
        /// Called after the ShowAddEditFeedback content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ShowAddEditFeedback_postRender: [$element, function () { return new lightSwitchApplication.Main().findContentItem("ShowAddEditFeedback"); }],
        /// <field>
        /// Called after the ShowBrowseFeedbacks1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ShowBrowseFeedbacks1_postRender: [$element, function () { return new lightSwitchApplication.Main().findContentItem("ShowBrowseFeedbacks1"); }],
        /// <field>
        /// Called after the ShowMyFeedback1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ShowMyFeedback1_postRender: [$element, function () { return new lightSwitchApplication.Main().findContentItem("ShowMyFeedback1"); }],
        /// <field>
        /// Called after the Group content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Group_postRender: [$element, function () { return new lightSwitchApplication.Main().findContentItem("Group"); }]
    });

    lightSwitchApplication.MyFeedback.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.MyFeedback
        },
        FeedbackList: {
            _$class: msls.ContentItem,
            _$name: "FeedbackList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.MyFeedback,
            data: lightSwitchApplication.MyFeedback,
            value: lightSwitchApplication.MyFeedback
        },
        Feedback: {
            _$class: msls.ContentItem,
            _$name: "Feedback",
            _$parentName: "FeedbackList",
            screen: lightSwitchApplication.MyFeedback,
            data: lightSwitchApplication.MyFeedback,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.MyFeedback,
                _$entry: {
                    elementType: lightSwitchApplication.Feedback
                }
            }
        },
        RowTemplate: {
            _$class: msls.ContentItem,
            _$name: "RowTemplate",
            _$parentName: "Feedback",
            screen: lightSwitchApplication.MyFeedback,
            data: lightSwitchApplication.Feedback,
            value: lightSwitchApplication.Feedback
        },
        Company: {
            _$class: msls.ContentItem,
            _$name: "Company",
            _$parentName: "RowTemplate",
            screen: lightSwitchApplication.MyFeedback,
            data: lightSwitchApplication.Feedback,
            value: String
        },
        Mood1: {
            _$class: msls.ContentItem,
            _$name: "Mood1",
            _$parentName: "RowTemplate",
            screen: lightSwitchApplication.MyFeedback,
            data: lightSwitchApplication.Feedback,
            value: lightSwitchApplication.Mood
        },
        Comment: {
            _$class: msls.ContentItem,
            _$name: "Comment",
            _$parentName: "RowTemplate",
            screen: lightSwitchApplication.MyFeedback,
            data: lightSwitchApplication.Feedback,
            value: String
        },
        DateCreated: {
            _$class: msls.ContentItem,
            _$name: "DateCreated",
            _$parentName: "RowTemplate",
            screen: lightSwitchApplication.MyFeedback,
            data: lightSwitchApplication.Feedback,
            value: Date
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.MyFeedback
        }
    };

    msls._addEntryPoints(lightSwitchApplication.MyFeedback, {
        /// <field>
        /// Called when a new MyFeedback screen is created.
        /// <br/>created(msls.application.MyFeedback screen)
        /// </field>
        created: [lightSwitchApplication.MyFeedback],
        /// <field>
        /// Called before changes on an active MyFeedback screen are applied.
        /// <br/>beforeApplyChanges(msls.application.MyFeedback screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.MyFeedback],
        /// <field>
        /// Called after the FeedbackList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FeedbackList_postRender: [$element, function () { return new lightSwitchApplication.MyFeedback().findContentItem("FeedbackList"); }],
        /// <field>
        /// Called after the Feedback content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Feedback_postRender: [$element, function () { return new lightSwitchApplication.MyFeedback().findContentItem("Feedback"); }],
        /// <field>
        /// Called after the RowTemplate content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        RowTemplate_postRender: [$element, function () { return new lightSwitchApplication.MyFeedback().findContentItem("RowTemplate"); }],
        /// <field>
        /// Called after the Company content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Company_postRender: [$element, function () { return new lightSwitchApplication.MyFeedback().findContentItem("Company"); }],
        /// <field>
        /// Called after the Mood1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Mood1_postRender: [$element, function () { return new lightSwitchApplication.MyFeedback().findContentItem("Mood1"); }],
        /// <field>
        /// Called after the Comment content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Comment_postRender: [$element, function () { return new lightSwitchApplication.MyFeedback().findContentItem("Comment"); }],
        /// <field>
        /// Called after the DateCreated content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        DateCreated_postRender: [$element, function () { return new lightSwitchApplication.MyFeedback().findContentItem("DateCreated"); }]
    });

    lightSwitchApplication.ViewFeedback.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewFeedback
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewFeedback,
            data: lightSwitchApplication.ViewFeedback,
            value: lightSwitchApplication.ViewFeedback
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.ViewFeedback,
            data: lightSwitchApplication.ViewFeedback,
            value: lightSwitchApplication.Feedback
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewFeedback,
            data: lightSwitchApplication.Feedback,
            value: lightSwitchApplication.Feedback
        },
        Company: {
            _$class: msls.ContentItem,
            _$name: "Company",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFeedback,
            data: lightSwitchApplication.Feedback,
            value: String
        },
        Location: {
            _$class: msls.ContentItem,
            _$name: "Location",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFeedback,
            data: lightSwitchApplication.Feedback,
            value: String
        },
        Product: {
            _$class: msls.ContentItem,
            _$name: "Product",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFeedback,
            data: lightSwitchApplication.Feedback,
            value: String
        },
        Mood1: {
            _$class: msls.ContentItem,
            _$name: "Mood1",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFeedback,
            data: lightSwitchApplication.Feedback,
            value: lightSwitchApplication.Mood
        },
        Comment: {
            _$class: msls.ContentItem,
            _$name: "Comment",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFeedback,
            data: lightSwitchApplication.Feedback,
            value: String
        },
        Employee: {
            _$class: msls.ContentItem,
            _$name: "Employee",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFeedback,
            data: lightSwitchApplication.Feedback,
            value: String
        },
        DateCreated: {
            _$class: msls.ContentItem,
            _$name: "DateCreated",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFeedback,
            data: lightSwitchApplication.Feedback,
            value: Date
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewFeedback
        }
    };

    msls._addEntryPoints(lightSwitchApplication.ViewFeedback, {
        /// <field>
        /// Called when a new ViewFeedback screen is created.
        /// <br/>created(msls.application.ViewFeedback screen)
        /// </field>
        created: [lightSwitchApplication.ViewFeedback],
        /// <field>
        /// Called before changes on an active ViewFeedback screen are applied.
        /// <br/>beforeApplyChanges(msls.application.ViewFeedback screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.ViewFeedback],
        /// <field>
        /// Called to determine if the ShowMain_Tap method can be executed.
        /// <br/>canExecute(msls.application.ViewFeedback screen)
        /// </field>
        ShowMain_Tap_canExecute: [lightSwitchApplication.ViewFeedback],
        /// <field>
        /// Called to execute the ShowMain_Tap method.
        /// <br/>execute(msls.application.ViewFeedback screen)
        /// </field>
        ShowMain_Tap_execute: [lightSwitchApplication.ViewFeedback],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.ViewFeedback().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.ViewFeedback().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.ViewFeedback().findContentItem("left"); }],
        /// <field>
        /// Called after the Company content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Company_postRender: [$element, function () { return new lightSwitchApplication.ViewFeedback().findContentItem("Company"); }],
        /// <field>
        /// Called after the Location content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Location_postRender: [$element, function () { return new lightSwitchApplication.ViewFeedback().findContentItem("Location"); }],
        /// <field>
        /// Called after the Product content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Product_postRender: [$element, function () { return new lightSwitchApplication.ViewFeedback().findContentItem("Product"); }],
        /// <field>
        /// Called after the Mood1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Mood1_postRender: [$element, function () { return new lightSwitchApplication.ViewFeedback().findContentItem("Mood1"); }],
        /// <field>
        /// Called after the Comment content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Comment_postRender: [$element, function () { return new lightSwitchApplication.ViewFeedback().findContentItem("Comment"); }],
        /// <field>
        /// Called after the Employee content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Employee_postRender: [$element, function () { return new lightSwitchApplication.ViewFeedback().findContentItem("Employee"); }],
        /// <field>
        /// Called after the DateCreated content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        DateCreated_postRender: [$element, function () { return new lightSwitchApplication.ViewFeedback().findContentItem("DateCreated"); }]
    });

}(msls.application));