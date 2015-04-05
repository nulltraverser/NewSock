/// <reference path="data.js" />

(function (lightSwitchApplication) {

    msls._addEntryPoints(lightSwitchApplication.Company, {
        /// <field>
        /// Called when a new company is created.
        /// <br/>created(msls.application.Company entity)
        /// </field>
        created: [lightSwitchApplication.Company]
    });

    msls._addEntryPoints(lightSwitchApplication.Feedback, {
        /// <field>
        /// Called when a new feedback is created.
        /// <br/>created(msls.application.Feedback entity)
        /// </field>
        created: [lightSwitchApplication.Feedback]
    });

    msls._addEntryPoints(lightSwitchApplication.Message, {
        /// <field>
        /// Called when a new message is created.
        /// <br/>created(msls.application.Message entity)
        /// </field>
        created: [lightSwitchApplication.Message]
    });

    msls._addEntryPoints(lightSwitchApplication.Mood, {
        /// <field>
        /// Called when a new mood is created.
        /// <br/>created(msls.application.Mood entity)
        /// </field>
        created: [lightSwitchApplication.Mood]
    });

}(msls.application));
