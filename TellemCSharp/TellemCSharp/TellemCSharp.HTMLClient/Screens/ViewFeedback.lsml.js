/// <reference path="../GeneratedArtifacts/viewModel.js" />

myapp.ViewFeedback.ShowMain_Tap_execute = function (screen) {
    // Write code here.
    //alert('Boo');

    var hashPos = window.location.href.indexOf("#");
    if (hashPos >= 0)
        var baseUrl = window.location.href.substr(0, window.location.href.indexOf("#"));
    else
        var baseUrl = window.location.href;
//    var fullUrl = baseUrl + "?entity=NorthwindEntitiesData/Customers('" + screen.Customers.selectedItem.CustomerId + "')";
    var fullUrl = baseUrl;
    // myapp.navigateHome;//; = fullUrl;

    //alert(fullUrl);

    window.location.href = fullUrl;
    //msls.application.cancelChanges();
   
};