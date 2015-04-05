/// <reference path="../GeneratedArtifacts/viewModel.js" />

myapp.Main.created = function (screen) {
    // Write code here.
    $.getJSON("../Perms/UserPermissions/", function (data) {

        //attach the permissions to the global 'myapp' object 
        //so it is accessible to the client anywhere.
        myapp.permissions = data;

        if (myapp.permissions["LightSwitchApplication:Tellem"] || myapp.permissions["LightSwitchApplication:SecurityAdministration"] || myapp.permissions["Microsoft.LightSwitch.Security:SecurityAdministration"]) {
            screen.findContentItem("ShowBrowseFeedbacks").isVisible = true;
            screen.findContentItem("ShowBrowseFeedbacks1").isVisible = true;
            screen.findContentItem("ShowBrowseFeedbacks").isEnabled = true;
            screen.findContentItem("ShowBrowseFeedbacks1").isEnabled = true;

        }
        else {
            screen.findContentItem("ShowBrowseFeedbacks").isEnabled = false;
            screen.findContentItem("ShowBrowseFeedbacks1").isEnabled = false;
        }

    });

};