/// <reference path="../GeneratedArtifacts/viewModel.js" />

myapp.AddEditFeedback.DateCreated_postRender = function (element, contentItem) {
    // Write code here.
   // entity.OrderDate = new Date();
};
myapp.AddEditFeedback.created = function (screen) {
    // Write code here.
    //myapp.AddEditFeedback.DateCreated = new Date();
};

myapp.AddEditFeedback.Save_execute = function (screen) {
    // Write code here.
    var moodPicker;
    var epicfail;
    epicfail = "";
    moodPicker = screen.findContentItem("Mood1").value;
    //if (Defined(tmp2)) {
    if (typeof moodPicker === 'undefined') {
        // Your variable is undefined
        epicfail = epicfail + "Mood is Required. ";
    }

    var companyVal;
    companyVal = screen.findContentItem("Company").value;
    if (typeof companyVal === 'undefined') {
        // Your variable is undefined
        epicfail = epicfail + "Company is Required. ";
    }

    if (epicfail.length > 0){
        msls.showMessageBox(epicfail, {
            title: "Danger",
            buttons: msls.MessageBoxButtons.ok
        }).then(function (result) {
            //do nothing
        });
        return false;
    } else {
        myapp.commitChanges().then(null, function fail(e) {
                alert(e.message);
                myapp.cancelChanges();
                throw e;
        });

        //the success message
        msls.showMessageBox("Thank you for your feedback. Check it out in My Feedback History.", {
            title: 'Thanks!', buttons: msls.MessageBoxButtons.ok
        });
    }
    //myapp.commitChanges();
    //myapp.navigateBack();
};

/*

my app.Add EditFeedback.Save _execute = function (screen) {
    // Write code here.
    var moodPicker;
    var epicfail;
    epicfail = "";
    moodPicker = screen.findContentItem("Mood1").value;
    //if (Defined(tmp2)) {
    if (typeof moodPicker === 'undefined') {
        // Your variable is undefined
        epicfail = epicfail + "Mood is Required. ";
    }

    var companyVal;
    companyVal = screen.findContentItem("Company").value;
    if (typeof companyVal === 'undefined') {
        // Your variable is undefined
        epicfail = epicfail + "Company is Required. ";
    }

    if (epicfail.length > 0){
        msls.showMessageBox(epicfail, {
            title: "Danger",
            buttons: msls.MessageBoxButtons.ok
        }).then(function (result) {
            //do nothing
        });
        return false;
    } else {
        myapp.commitChanges().then(null, function fail(e) {
                alert(e.message);
                myapp.cancelChanges();
                throw e;
            });
    }
    //myapp.commitChanges();
    //myapp.navigateBack();
};

*/
myapp.AddEditFeedback.Cancel_postRender = function (element, contentItem) {
    // Write code here.

};
myapp.AddEditFeedback.Cancel_execute = function (screen) {
    // Write code here.
    myapp.navigateBack();
};
myapp.AddEditFeedback.Mood1_postRender = function (element, contentItem) {
    // Write code here.
    $(element).parent().css('color', 'red');
    $(element).parent().find("label")[0].innerHTML += " *";
    var ButtonOutside = $(element);
    var ButtonInside = $(element).children();

    ButtonInside.addClass("red");
};
myapp.AddEditFeedback.beforeApplyChanges = function (screen) {
    // Write code here.

    var moodPicker;
    var epicfail;
    epicfail = "";
    moodPicker = screen.findContentItem("Mood1").value;
    //if (Defined(tmp2)) {
    if (typeof moodPicker === 'undefined') {
        // Your variable is undefined
        epicfail = epicfail + "Mood is Required. ";
    }

    var companyVal;
    companyVal = screen.findContentItem("Company").value;
    if (typeof companyVal === 'undefined') {
        // Your variable is undefined
        epicfail = epicfail + "Company is Required. ";
    }

    if (epicfail.length > 0) {
        msls.showMessageBox(epicfail, {
            title: "Danger",
            buttons: msls.MessageBoxButtons.ok
        }).then(function (result) {
            //do nothing
        });
        return false;
    } 
};
myapp.AddEditFeedback.Company_postRender = function (element, contentItem) {
    // Write code here.
    $(element).parent().css('color', 'red');
    $(element).parent().find("label")[0].innerHTML += " *";
    var ButtonOutside = $(element);
    var ButtonInside = $(element).children();

    ButtonOutside.addClass("redInput");

};
myapp.AddEditFeedback.Save_postRender = function (element, contentItem) {
    // Write code here.

};