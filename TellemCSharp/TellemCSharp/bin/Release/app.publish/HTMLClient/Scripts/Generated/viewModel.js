/// <reference path="data.js" />

(function (lightSwitchApplication) {

    var $Screen = msls.Screen,
        $defineScreen = msls._defineScreen,
        $DataServiceQuery = msls.DataServiceQuery,
        $toODataString = msls._toODataString,
        $defineShowScreen = msls._defineShowScreen;

    function About(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the About screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="Feedbacks" type="msls.VisualCollection" elementType="msls.application.Feedback">
        /// Gets the feedbacks for this screen.
        /// </field>
        /// <field name="AboutText" type="String">
        /// Gets or sets the aboutText for this screen.
        /// </field>
        /// <field name="details" type="msls.application.About.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "About", parameters);
    }

    function AddEditFeedback(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the AddEditFeedback screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="Feedback" type="msls.application.Feedback">
        /// Gets or sets the feedback for this screen.
        /// </field>
        /// <field name="details" type="msls.application.AddEditFeedback.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "AddEditFeedback", parameters);
    }

    function BrowseFeedbacks(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the BrowseFeedbacks screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="Feedbacks" type="msls.VisualCollection" elementType="msls.application.Feedback">
        /// Gets the feedbacks for this screen.
        /// </field>
        /// <field name="details" type="msls.application.BrowseFeedbacks.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "BrowseFeedbacks", parameters);
    }

    function Main(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the Main screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="Feedbacks" type="msls.VisualCollection" elementType="msls.application.Feedback">
        /// Gets the feedbacks for this screen.
        /// </field>
        /// <field name="Message" type="String">
        /// Gets or sets the message for this screen.
        /// </field>
        /// <field name="details" type="msls.application.Main.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "Main", parameters);
    }

    function MyFeedback(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the MyFeedback screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="qryMyFeedback" type="msls.VisualCollection" elementType="msls.application.Feedback">
        /// Gets the qryMyFeedback for this screen.
        /// </field>
        /// <field name="details" type="msls.application.MyFeedback.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "MyFeedback", parameters);
    }

    function ViewFeedback(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the ViewFeedback screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="Feedback" type="msls.application.Feedback">
        /// Gets or sets the feedback for this screen.
        /// </field>
        /// <field name="details" type="msls.application.ViewFeedback.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "ViewFeedback", parameters);
    }

    msls._addToNamespace("msls.application", {

        About: $defineScreen(About, [
            {
                name: "Feedbacks", kind: "collection", elementType: lightSwitchApplication.Feedback,
                createQuery: function () {
                    return this.dataWorkspace.TellemData.Feedbacks;
                }
            },
            { name: "AboutText", kind: "local", type: String }
        ], [
        ]),

        AddEditFeedback: $defineScreen(AddEditFeedback, [
            { name: "Feedback", kind: "local", type: lightSwitchApplication.Feedback }
        ], [
            { name: "Save" },
            { name: "Cancel" }
        ]),

        BrowseFeedbacks: $defineScreen(BrowseFeedbacks, [
            {
                name: "Feedbacks", kind: "collection", elementType: lightSwitchApplication.Feedback,
                createQuery: function () {
                    return this.dataWorkspace.TellemData.Feedbacks.orderByDescending("DateCreated").expand("Mood1");
                }
            }
        ], [
            { name: "customViewSelected" }
        ]),

        Main: $defineScreen(Main, [
            {
                name: "Feedbacks", kind: "collection", elementType: lightSwitchApplication.Feedback,
                createQuery: function () {
                    return this.dataWorkspace.TellemData.Feedbacks;
                }
            },
            { name: "Message", kind: "local", type: String }
        ], [
        ]),

        MyFeedback: $defineScreen(MyFeedback, [
            {
                name: "qryMyFeedback", kind: "collection", elementType: lightSwitchApplication.Feedback,
                createQuery: function () {
                    return this.dataWorkspace.TellemData.qryMyFeedback().orderByDescending("DateCreated").expand("Mood1");
                }
            }
        ], [
        ]),

        ViewFeedback: $defineScreen(ViewFeedback, [
            { name: "Feedback", kind: "local", type: lightSwitchApplication.Feedback }
        ], [
            { name: "ShowMain_Tap" }
        ]),

        showAbout: $defineShowScreen(function showAbout(options) {
            /// <summary>
            /// Asynchronously navigates forward to the About screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("About", parameters, options);
        }),

        showAddEditFeedback: $defineShowScreen(function showAddEditFeedback(Feedback, options) {
            /// <summary>
            /// Asynchronously navigates forward to the AddEditFeedback screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("AddEditFeedback", parameters, options);
        }),

        showBrowseFeedbacks: $defineShowScreen(function showBrowseFeedbacks(options) {
            /// <summary>
            /// Asynchronously navigates forward to the BrowseFeedbacks screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("BrowseFeedbacks", parameters, options);
        }),

        showMain: $defineShowScreen(function showMain(options) {
            /// <summary>
            /// Asynchronously navigates forward to the Main screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("Main", parameters, options);
        }),

        showMyFeedback: $defineShowScreen(function showMyFeedback(options) {
            /// <summary>
            /// Asynchronously navigates forward to the MyFeedback screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("MyFeedback", parameters, options);
        }),

        showViewFeedback: $defineShowScreen(function showViewFeedback(Feedback, options) {
            /// <summary>
            /// Asynchronously navigates forward to the ViewFeedback screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("ViewFeedback", parameters, options);
        })

    });

}(msls.application));
