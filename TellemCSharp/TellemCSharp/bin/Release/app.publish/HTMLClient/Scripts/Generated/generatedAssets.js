﻿window.myapp=msls.application,function(n){function o(n){i.call(this,n)}function f(n){i.call(this,n)}function s(n){i.call(this,n)}function e(n){i.call(this,n)}function h(n){c.call(this,n)}function y(){l.call(this)}var i=msls.Entity,c=msls.DataService,l=msls.DataWorkspace,r=msls._defineEntity,a=msls._defineDataService,v=msls._defineDataWorkspace,t=msls.DataServiceQuery,u=msls._toODataString;msls._addToNamespace("msls.application",{Company:r(o,[{name:"ID",type:Number,isReadOnly:!0},{name:"Company_Name",type:String},{name:"Longitude",type:Number},{name:"Latitude",type:Number},{name:"Active",type:Boolean}]),Feedback:r(f,[{name:"ID",type:Number,isReadOnly:!0},{name:"Company",type:String},{name:"Location",type:String},{name:"Employee",type:String},{name:"Comment",type:String},{name:"UserID",type:String},{name:"DateCreated",type:Date},{name:"Mood1",kind:"reference",type:e},{name:"Product",type:String}]),Message:r(s,[{name:"ID",type:String,isReadOnly:!0},{name:"MessageName",type:String},{name:"Message1",type:String}]),Mood:r(e,[{name:"ID",type:Number},{name:"Description",type:String},{name:"Emoticon",type:String},{name:"Feedbacks",kind:"collection",elementType:f}]),TellemData:a(h,n.rootUri+"/TellemData.svc",[{name:"Companys",elementType:o},{name:"Feedbacks",elementType:f},{name:"Messages",elementType:s},{name:"Moods",elementType:e}],[{name:"Companys_SingleOrDefault",value:function(i){return new t({_entitySet:this.Companys},n.rootUri+"/TellemData.svc/Companys(ID="+u(i,"Int32?")+")")}},{name:"Feedbacks_SingleOrDefault",value:function(i){return new t({_entitySet:this.Feedbacks},n.rootUri+"/TellemData.svc/Feedbacks(ID="+u(i,"Int32?")+")")}},{name:"qryMyFeedback",value:function(){return new t({_entitySet:this.Feedbacks},n.rootUri+"/TellemData.svc/qryMyFeedback()",{})}},{name:"Messages_SingleOrDefault",value:function(i){return new t({_entitySet:this.Messages},n.rootUri+"/TellemData.svc/Messages(ID="+u(i,"Int64?")+")")}},{name:"Moods_SingleOrDefault",value:function(i){return new t({_entitySet:this.Moods},n.rootUri+"/TellemData.svc/Moods(ID="+u(i,"Int32?")+")")}}]),DataWorkspace:v(y,[{name:"TellemData",type:h}])})}(msls.application),function(n){function u(i,r){r||(r=new n.DataWorkspace),t.call(this,r,"About",i)}function f(i,r){r||(r=new n.DataWorkspace),t.call(this,r,"AddEditFeedback",i)}function e(i,r){r||(r=new n.DataWorkspace),t.call(this,r,"BrowseFeedbacks",i)}function o(i,r){r||(r=new n.DataWorkspace),t.call(this,r,"Main",i)}function s(i,r){r||(r=new n.DataWorkspace),t.call(this,r,"MyFeedback",i)}function h(i,r){r||(r=new n.DataWorkspace),t.call(this,r,"ViewFeedback",i)}var t=msls.Screen,i=msls._defineScreen,c=msls.DataServiceQuery,l=msls._toODataString,r=msls._defineShowScreen;msls._addToNamespace("msls.application",{About:i(u,[{name:"Feedbacks",kind:"collection",elementType:n.Feedback,createQuery:function(){return this.dataWorkspace.TellemData.Feedbacks}},{name:"AboutText",kind:"local",type:String}],[]),AddEditFeedback:i(f,[{name:"Feedback",kind:"local",type:n.Feedback}],[{name:"Save"},{name:"Cancel"}]),BrowseFeedbacks:i(e,[{name:"Feedbacks",kind:"collection",elementType:n.Feedback,createQuery:function(){return this.dataWorkspace.TellemData.Feedbacks.orderByDescending("DateCreated").expand("Mood1")}}],[{name:"customViewSelected"}]),Main:i(o,[{name:"Feedbacks",kind:"collection",elementType:n.Feedback,createQuery:function(){return this.dataWorkspace.TellemData.Feedbacks}},{name:"Message",kind:"local",type:String}],[]),MyFeedback:i(s,[{name:"qryMyFeedback",kind:"collection",elementType:n.Feedback,createQuery:function(){return this.dataWorkspace.TellemData.qryMyFeedback().orderByDescending("DateCreated").expand("Mood1")}}],[]),ViewFeedback:i(h,[{name:"Feedback",kind:"local",type:n.Feedback}],[{name:"ShowMain_Tap"}]),showAbout:r(function(t){var i=Array.prototype.slice.call(arguments,0,0);return n.showScreen("About",i,t)}),showAddEditFeedback:r(function(t,i){var r=Array.prototype.slice.call(arguments,0,1);return n.showScreen("AddEditFeedback",r,i)}),showBrowseFeedbacks:r(function(t){var i=Array.prototype.slice.call(arguments,0,0);return n.showScreen("BrowseFeedbacks",i,t)}),showMain:r(function(t){var i=Array.prototype.slice.call(arguments,0,0);return n.showScreen("Main",i,t)}),showMyFeedback:r(function(t){var i=Array.prototype.slice.call(arguments,0,0);return n.showScreen("MyFeedback",i,t)}),showViewFeedback:r(function(t,i){var r=Array.prototype.slice.call(arguments,0,1);return n.showScreen("ViewFeedback",r,i)})})}(msls.application),myapp.Feedback.created=function(){},myapp.AddEditFeedback.DateCreated_postRender=function(){},myapp.AddEditFeedback.created=function(){},myapp.AddEditFeedback.Save_execute=function(n){var i,t,r;if(t="",i=n.findContentItem("Mood1").value,typeof i=="undefined"&&(t=t+"Mood is Required. "),r=n.findContentItem("Company").value,typeof r=="undefined"&&(t=t+"Company is Required. "),t.length>0)return msls.showMessageBox(t,{title:"Danger",buttons:msls.MessageBoxButtons.ok}).then(function(){}),!1;myapp.commitChanges().then(null,function(n){alert(n.message),myapp.cancelChanges();throw n;}),msls.showMessageBox("Thank you for your feedback. Check it out in My Feedback History.",{title:"Thanks!",buttons:msls.MessageBoxButtons.ok})},myapp.AddEditFeedback.Cancel_postRender=function(){},myapp.AddEditFeedback.Cancel_execute=function(){myapp.navigateBack()},myapp.AddEditFeedback.Mood1_postRender=function(n){$(n).parent().css("color","red"),$(n).parent().find("label")[0].innerHTML+=" *";var r=$(n),i=$(n).children();i.addClass("red")},myapp.AddEditFeedback.beforeApplyChanges=function(n){var i,t,r;return t="",i=n.findContentItem("Mood1").value,typeof i=="undefined"&&(t=t+"Mood is Required. "),r=n.findContentItem("Company").value,typeof r=="undefined"&&(t=t+"Company is Required. "),t.length>0?(msls.showMessageBox(t,{title:"Danger",buttons:msls.MessageBoxButtons.ok}).then(function(){}),!1):void 0},myapp.AddEditFeedback.Company_postRender=function(n){$(n).parent().css("color","red"),$(n).parent().find("label")[0].innerHTML+=" *";var i=$(n),r=$(n).children();i.addClass("redInput")},myapp.AddEditFeedback.Save_postRender=function(){},myapp.BrowseFeedbacks.customViewSelected_execute=function(){},myapp.BrowseFeedbacks.DateCreated_postRender=function(n,t){t.dataBind("value",function(t){t&&$(n).text(moment(t).format("DD/MM/YYYY"))})},myapp.Main.created=function(n){$.getJSON("../Perms/UserPermissions/",function(t){myapp.permissions=t,myapp.permissions["LightSwitchApplication:Tellem"]||myapp.permissions["LightSwitchApplication:SecurityAdministration"]||myapp.permissions["Microsoft.LightSwitch.Security:SecurityAdministration"]?(n.findContentItem("ShowBrowseFeedbacks").isVisible=!0,n.findContentItem("ShowBrowseFeedbacks1").isVisible=!0,n.findContentItem("ShowBrowseFeedbacks").isEnabled=!0,n.findContentItem("ShowBrowseFeedbacks1").isEnabled=!0):(n.findContentItem("ShowBrowseFeedbacks").isEnabled=!1,n.findContentItem("ShowBrowseFeedbacks1").isEnabled=!1)})},myapp.MyFeedback.DateCreated_postRender=function(n,t){t.dataBind("value",function(t){t&&$(n).text(moment(t).format("DD/MM/YYYY"))})},myapp.ViewFeedback.ShowMain_Tap_execute=function(){var r=window.location.href.indexOf("#"),t,i;t=r>=0?window.location.href.substr(0,window.location.href.indexOf("#")):window.location.href,i=t,window.location.href=i};