/// <reference path="../GeneratedArtifacts/viewModel.js" />

myapp.BrowseFeedbacks.customViewSelected_execute = function (screen) {
    // Write code here.
    //myapp.showCustomViewSelected(null, {
    //    beforeShown: function (ViewFeedback) {
    //        // Create a new order here.
    //        //var newOrder = new myapp.Order();
    //        //AddEditScreen.Order = newOrder;
    //        //myapp.showViewFeedback(screen.Feedbacks.selectedItem);
    //        //screen.Feedbacks.selectedItem
    //    },
    //    afterClosed: function (ViewFeedback, navigationAction) {
    //        // If the user commits the change, show the View screen
    //        if (navigationAction === msls.NavigateBackAction.cancel) {
    //            myapp.showMain();
    //        }
    //    }
    //})
};
myapp.BrowseFeedbacks.DateCreated_postRender = function (element, contentItem) {
    // Write code here.
    contentItem.dataBind("value", function (value) {
        if (value) {
            $(element).text(moment(value).format("DD/MM/YYYY"));
        }
    });

};