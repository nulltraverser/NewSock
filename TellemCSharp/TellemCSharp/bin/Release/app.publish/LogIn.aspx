<%@ Page Inherits="Microsoft.LightSwitch.Security.ServerGenerated.Implementation.LogInPageBase" %>

<!DOCTYPE HTML>
<html>
<head>
    <meta name="HandheldFriendly" content="true" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no" />
<meta name="msapplication-TileImage" content="htmlclient/content/Images/Icons/nice-highres.png">
<meta name="msapplication-TileColor" content="#1B262B">
    <title>Log In</title>
    <link rel="icon" sizes="196x196" href="/Icons/nice-highres.png">
    
    <%-- iOS tile icons --%>
    <link href="/icons/ios/icon-60.png" rel="apple-touch-icon" />
    <link href="/icons/ios/Icon-76.png" rel="apple-touch-icon" sizes="76x76" />
    <link href="/icons/ios/Icon-120.png" rel="apple-touch-icon" sizes="120x120" />
    <link href="/icons/ios/Icon-152.png" rel="apple-touch-icon" sizes="152x152" />

    <%-- Android tile --%>
    <link rel="apple-touch-icon-precomposed" href="/icons/ios/Icon-60.png"/>
   <%-- <link rel="apple-touch-icon" href="htmlclient/content/Images/Icons/iOS/icon.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="htmlclient/content/Images/Icons/iOS/icon-72.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="htmlclient/content/Images/Icons/iOS/icon@2x.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="htmlclient/content/Images/Icons/iOS/icon-72@2x.png" />--%> 
    <style type="text/css">
        /* Here you can customize your login screen */
        html {
            background: #ffc619;
        }

        html,
        body,
        .labelStyle {
            color: #444444;
        }

        h1 {
            color: #444444;
        }

        .requiredStyle {
            color: #FF1B1B;
        }

        input.buttonStyle {
	        border: 1px solid #1a1a1a /*{b-bar-border}*/;
	        background: #1a1a1a /*{b-bar-background-color}*/;
	        color: #ffc414 /*{b-bar-color}*/;
	        font-weight: bold;
	        text-shadow: 0 /*{b-bar-shadow-x}*/ 0px /*{b-bar-shadow-y}*/ 0px /*{b-bar-shadow-radius}*/ #444444 /*{b-bar-shadow-color}*/;
        }

            input.buttonStyle:hover {
	            border: 1px solid #000000 /*{a-bhover-border}*/;
	            background: #7f5227 /*{a-bhover-background-color}*/;
	            font-weight: bold;
	            color: #FFFFFF /*{a-bhover-color}*/;
	            text-shadow: 0 /*{a-bhover-shadow-x}*/ 0px /*{a-bhover-shadow-y}*/ 0px /*{a-bhover-shadow-radius}*/ #eeeeee /*{a-bhover-shadow-color}*/;
            }

            input.buttonStyle:active {
                background-color: #e3e3e3;
            }

        .textBoxStyle {
	        border: 1px solid #1a1a1a /*{b-bar-border}*/;
	        background: #1a1a1a /*{b-bar-background-color}*/;
	        color: #ffc414 /*{b-bar-color}*/;
	        font-weight: bold;
	        text-shadow: 0 /*{b-bar-shadow-x}*/ 0px /*{b-bar-shadow-y}*/ 0px /*{b-bar-shadow-radius}*/ #444444 /*{b-bar-shadow-color}*/;
        }

        .failureNotification {
            color: #ff0000;
        }

        /* login layout styling */
        * {
            margin: 0px;
        }

        html {
            height: 100%;
            width: 100%;
        }

        html, body {
            font-family: 'Segoe UI','Frutiger','Helvetica Neue',Helvetica,Arial,sans-serif;
            font-size: 16px;
            font-weight: normal;
        }

        h1 {
            font-family: 'Segoe Light','Segoe UI Light','Frutiger','Helvetica Neue',Helvetica,Arial,sans-serif;
            font-size: 40px;
            text-align: left;
            letter-spacing: -1pt;
            font-weight: normal!important;
            margin-bottom: 12px;
        }

        .accountInfo {
            width: 95%;
            max-width: 310px;
            position: absolute;
            top: 50%;
            margin-top: -144px;
            left: 50%;
            margin-left: -155px;
        }

        .labelStyle {
            font-family: 'Segoe UI Semibold', 'Frutiger','Helvetica Neue Semibold',Helvetica,Arial,sans-serif;
            font-weight: 700;
        }

        .requiredStyle {
            font-size: 24px;
            line-height: 14px;
            height: 12px;
            vertical-align: bottom;
            margin-left: 5px;
        }

        input.buttonStyle {
            font-family: 'Segoe UI','Frutiger','Helvetica Neue',Helvetica,Arial,sans-serif;
            padding: 5px 10px;
            font-weight: bold;
            border-radius: 0px;
            font-size: 16px;
            cursor: pointer;
            -webkit-appearance: none;
        }

        .textBoxStyle {
            background-image: none;
            font-size: 16px;
            display: block;
            outline: 0;
            height: 36px;
            padding: 1px 8px;
            margin: 0px;
            width: 100%;
            max-width: 292px;
            line-height: 36px;
        }

        .submit-login {
            margin-top: 10px;
        }

        .rememberme {
            margin-bottom: 10px;
        }

        input[type=checkbox] {
            margin: 0px 6px 0px 0px;
            vertical-align: -1px;
            cursor: pointer;
        }

        .checkStyle label {
            font-size: 15px;
        }

        #NDAdiv {
            /*      
            margin: auto;
            height: 95%;
            width: 95%;
            */
            display: none;
            border: solid 1px black;
        }
        .innerlay {
            border: solid 1px black;
            margin-top: 0;
            margin-bottom: auto;
            margin-right: auto;
            margin-left: auto;
            height: 100%;
            width: 95%;
            background-color: white;
            /*
                border-radius: 6px;
                padding: 5px;
                padding-bottom:20px;
                padding-bottom: 20px;
            */
            padding-left: 5px;
        }
        .overlay {
            position: fixed;
            width: 100%;
            height: 100%;
            left: 0;
            top: 0;
            background: rgba(51,51,51,0.7);
            z-index: 10;
        }
        .rightjustified {
            width: 100%;
            text-align:right;
        }
        a.close  {
            font-style:normal;
            text-decoration: none;
            color: red;   
        }
        .NDAcontent {
            width: 100%;
            height: 95%;
            overflow-y: scroll;
            overflow-x: hidden;
        }
    </style>
</head>
<body>
    <form id="LogInForm" runat="server">
        <asp:Login ID="LoginUser" runat="server" EnableViewState="false" RenderOuterTable="false">
            <LayoutTemplate>
                <div class="accountInfo">
                    <h1>Log In</h1>
                    <div style="margin-bottom: 10px;">
                        <asp:Label ID="UsernameLabel" runat="server" AssociatedControlID="Username" Text="Username:" CssClass="labelStyle" />
                        <asp:RequiredFieldValidator ID="UsernameRequired" runat="server" ControlToValidate="Username" ValidationGroup="LoginUserValidationGroup" Text="*" ToolTip="Username is required" CssClass="requiredStyle" />
                        <asp:TextBox ID="Username" runat="server" CssClass="textBoxStyle" />
                    </div>
                    <div style="margin-bottom: 10px;">
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" Text="Password:" CssClass="labelStyle" />
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ValidationGroup="LoginUserValidationGroup" Text="*" ToolTip="Password is required" CssClass="requiredStyle" />
                        <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="textBoxStyle" />
                    </div>
                    <div class="submit-login">
                        <div class="rememberme">
                            <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." CssClass="checkStyle" />
                        </div>
                        <div class="rememberme">
                            <%--<asp:CheckBox ID="NDA" runat="server" Text="I have read and accept the " CssClass="checkStyle" /><a href="#" onclick="showNDA();">Non Disclosure Agreement.</a>--%>
                            <input type="checkbox" ID="NDA" onchange="acceptNDA();" />I have read and accept the <a href="#" onclick="showNDA();">Non Disclosure Agreement.</a>
                        </div>
                        <div style="margin-bottom: 10px;" class="logInBtn">
                            <asp:Button ID="LoginButton" runat="server" CommandName="Login" ValidationGroup="LoginUserValidationGroup" Text="LOG IN" Width="112" Height="38" CssClass="buttonStyle" />
                        </div>
                    </div>
                    <span class="failureNotification">
                        <asp:Literal ID="FailureText" runat="server" />
                    </span>
                    <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" ValidationGroup="LoginUserValidationGroup" />
                </div>
            </LayoutTemplate>
        </asp:Login>
    </form>

    <div id="NDAdiv" class="overlay">
        <div class="innerlay">
            <div class=" rightjustified"><a class="close" href="#" onclick="hideNDA();">Close NDA &nbsp;&nbsp;</a></div>
            <div class="NDAcontent">

<!-- NDA Text Begin -->
<div class=WordSection1>

<p class=MsoNormal align=center style='text-align:center;mso-pagination:none;
tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>MUTUAL
NONDISCLOSURE AGREEMENT<o:p></o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><span
style='mso-spacerun:yes'>  </span><o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;mso-layout-grid-align:none;
text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>This
mutual nondisclosure agreement is between you the application user, an individual
and NEW SOCK TECHNOLOGIES, a registered company<o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:59.25pt center 234.0pt;
mso-layout-grid-align:none;text-autospace:none'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><span
style='mso-tab-count:1'>                        </span><span style='mso-tab-count:
1'>                                                                      </span><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>Each
party has certain confidential information that it may disclose to the other
party for the purpose of testing an internet-based application.<o:p></o:p></span></p>

<p class=MsoListParagraph style='margin-left:18.0pt;tab-stops:144.0pt'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><span
style='mso-tab-count:2'>                                                                 </span><o:p></o:p></span></p>

<p class=MsoNormal style='tab-stops:256.5pt'><span lang=EN-US style='font-size:
11.0pt;font-family:"Calibri Light","sans-serif"'>Each party wants to review,
examine, inspect, or obtain the other party’s confidential information only for
the above-described purposes, and to otherwise maintain the confidentiality of
that information pursuant to this agreement.<o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:18.0pt;mso-layout-grid-align:
none;text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'><span style='mso-tab-count:1'>       </span><o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:18.0pt;mso-layout-grid-align:
none;text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'>The parties therefore agree as follows:<o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;mso-pagination:
none;mso-list:l19 level1 lfo15;tab-stops:18.0pt;mso-layout-grid-align:none;
text-autospace:none'><a name="_Ref269214259"><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>1.<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>CONFIDENTIAL INFORMATION.</span></b></a><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'><o:p></o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>Each party (in
such capacity, a “<b style='mso-bidi-font-weight:normal'>Disclosing Party</b>”)
may (but is not required to) disclose certain of its confidential and
proprietary information to the other party (in such capacity, a “<b
style='mso-bidi-font-weight:normal'>Receiving Party</b>”). “<b
style='mso-bidi-font-weight:normal'>Confidential Information</b>” means:<o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='text-indent:-18.0pt;mso-pagination:none;
mso-list:l19 level2 lfo15;mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>(a)<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>information
relating to the Disclosing Party or its current or proposed business, including
financial statements, budgets and projections, customer identifying
information, potential and intended customers, employers, products, computer
programs, specifications, manuals, software, analyses, strategies, marketing
plans, business plans, and other confidential information, whether provided
orally, in writing, or by any other media, that was or will be:<o:p></o:p></span></p>

<p class=MsoListParagraph style='mso-pagination:none;mso-layout-grid-align:
none;text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='margin-left:54.0pt;text-indent:-54.0pt;
mso-text-indent-alt:-18.0pt;mso-pagination:none;mso-list:l18 level1 lfo20;
mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'><span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>(i)<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>provided or shown to the Receiving
Party or its directors, officers, employees, agents, and representatives (each
a “<b style='mso-bidi-font-weight:normal'>Receiving Party</b> <b
style='mso-bidi-font-weight:normal'>Representative</b>”) by or on behalf of the
Disclosing Party or any of its directors, officers, employees, agents, and
representatives (each a “<b style='mso-bidi-font-weight:normal'>Disclosing
Party Representative</b>”); or<o:p></o:p></span></p>

<p class=MsoListParagraph style='margin-left:72.0pt;mso-pagination:none;
mso-layout-grid-align:none;text-autospace:none'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='margin-left:54.0pt;text-indent:-54.0pt;
mso-text-indent-alt:-18.0pt;mso-pagination:none;mso-list:l18 level1 lfo20;
mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'><span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>(ii)<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>obtained by the Receiving Party or a
Receiving Party Representative from review of documents or property of, or
communications with, the Disclosing Party or a Disclosing Party Representative;
and<o:p></o:p></span></p>

<p class=MsoListParagraph><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='text-indent:-18.0pt;mso-pagination:none;
mso-list:l19 level2 lfo15;mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>(b)<span
style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>all
notes, analyses, compilations, studies, summaries, and other material, whether
provided orally, in writing, or by any other media, that contain or are based
on all or part of the information described in subsection (a) (the “<b
style='mso-bidi-font-weight:normal'>Derivative Materials</b>”).<o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;mso-layout-grid-align:none;
text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;mso-layout-grid-align:none;
text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>The
Disclosing Party shall identify Confidential Information disclosed orally
within 7 days of disclosure. The Disclosing Party’s failure to identify
information as Confidential Information is not an acknowledgment or admission
by the Disclosing Party that that information is not confidential, and is not a
waiver by the Disclosing Party of any of its rights with respect to that
information.<o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:18.0pt;mso-layout-grid-align:
none;text-autospace:none'><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;mso-pagination:
none;mso-list:l19 level1 lfo15;tab-stops:18.0pt;mso-layout-grid-align:none;
text-autospace:none'><![if !supportLists]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'>2.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></b><![endif]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>OBLIGATION
TO MAINTAIN CONFIDENTIALITY.<o:p></o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoListParagraph style='text-indent:-18.0pt;mso-pagination:none;
mso-list:l19 level2 lfo15;mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>(a)<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>Confidentiality.</span></b><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>
The Receiving Party shall, and shall ensure that each Receiving Party
Representative, keep the Confidential Information confidential. Except as
otherwise required by law, the Receiving Party and Receiving Party
Representatives may not:<o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:190.5pt;mso-layout-grid-align:
none;text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'><span style='mso-tab-count:1'>                                                                            </span><o:p></o:p></span></p>

<p class=MsoListParagraph style='margin-left:54.0pt;text-indent:-54.0pt;
mso-text-indent-alt:-18.0pt;mso-pagination:none;mso-list:l9 level1 lfo18;
mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'><span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>(i)<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>disclose any Confidential Information
to any person or entity other than:<o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:18.0pt;mso-pagination:none;mso-layout-grid-align:
none;text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='margin-left:72.0pt;text-indent:-18.0pt;
mso-pagination:none;mso-list:l9 level2 lfo18;mso-layout-grid-align:none;
text-autospace:none'><![if !supportLists]><span lang=EN-US style='font-size:
11.0pt;font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>A.<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>a
Receiving Party Representative who needs to know the Confidential Information
for the purposes of its business with the Disclosing Party; and<o:p></o:p></span></p>

<p class=MsoListParagraph style='margin-left:72.0pt;mso-pagination:none;
tab-stops:207.75pt;mso-layout-grid-align:none;text-autospace:none'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='margin-left:72.0pt;text-indent:-18.0pt;
mso-pagination:none;mso-list:l9 level2 lfo18;mso-layout-grid-align:none;
text-autospace:none'><![if !supportLists]><span lang=EN-US style='font-size:
11.0pt;font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>B.<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>a
Receiving Party Representative who signs a confidentiality agreement; and<o:p></o:p></span></p>

<p class=MsoListParagraph><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='margin-left:72.0pt;text-indent:-18.0pt;
mso-pagination:none;mso-list:l9 level2 lfo18;mso-layout-grid-align:none;
text-autospace:none'><![if !supportLists]><span lang=EN-US style='font-size:
11.0pt;font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>C.<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>with
the Disclosing Party’s prior written authorization; or<o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:18.0pt;mso-pagination:none;mso-layout-grid-align:
none;text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='margin-left:54.0pt;text-indent:-54.0pt;
mso-text-indent-alt:-18.0pt;mso-pagination:none;mso-list:l9 level1 lfo18;
mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'><span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>(ii)<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span class=GramE><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>use</span></span><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>
the Confidential Information for any purposes other than those contemplated by
this agreement.<o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;mso-layout-grid-align:none;
text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='text-indent:-18.0pt;mso-pagination:none;
mso-list:l19 level2 lfo15;mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>(b)<span
style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>No Reverse Engineering.</span></b><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>
The Receiving Party may not reverse engineer, disassemble, or decompile any prototypes,
software, or other tangible objects that embody the Disclosing Party’s
Confidential Information and that are provided to the Receiving Party under
this agreement.<span style='mso-spacerun:yes'>  </span><o:p></o:p></span></p>

<p class=MsoListParagraph style='mso-pagination:none;mso-layout-grid-align:
none;text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='text-indent:-18.0pt;mso-pagination:none;
mso-list:l19 level2 lfo15;mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>(c)<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>Term.</span></b><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'> The
Receiving Party shall, and shall require each Receiving Party Representative
to, maintain the confidentiality and security of the Disclosing Party’s
Confidential Information until the earlier of: (i) such time as all
Confidential Information of the Disclosing Party disclosed under this agreement
becomes publicly known and is made generally available through no action or
inaction of the Receiving Party or (ii) the third anniversary of the
disclosure. However, to the extent that the Disclosing Party has disclosed
information to the Receiving Party that constitutes a trade secret under law,
the Receiving Party shall protect that trade secret for as long as the
information qualifies as a trade secret. <o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:36.0pt;mso-pagination:none;tab-stops:
18.0pt;mso-layout-grid-align:none;text-autospace:none'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;mso-pagination:
none;mso-list:l19 level1 lfo15;tab-stops:18.0pt;mso-layout-grid-align:none;
text-autospace:none'><![if !supportLists]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'>3.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></b><![endif]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>EXCLUSIONS.<o:p></o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:18.0pt;mso-layout-grid-align:
none;text-autospace:none'><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;mso-layout-grid-align:none;
text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>The
obligations and restrictions of this agreement do not apply to that part of the
Confidential Information that the Receiving Party demonstrates:<o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:36.0pt 72.0pt;
mso-layout-grid-align:none;text-autospace:none'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><span
style='mso-tab-count:3'>                                           </span><o:p></o:p></span></p>

<p class=MsoListParagraph style='text-indent:-18.0pt;mso-pagination:none;
mso-list:l19 level2 lfo15;mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>(a)<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>was
or becomes generally publically available other than as a result of a
disclosure by the Receiving Party in violation of this agreement;<o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;mso-layout-grid-align:none;
text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='text-indent:-18.0pt;mso-pagination:none;
mso-list:l19 level2 lfo15;mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>(b)<span
style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>was
or becomes available to the Receiving Party on a nonconfidential basis before
its disclosure to the Receiving Party by the Disclosing Party or a Disclosing
Party Representative, but only if:<o:p></o:p></span></p>

<p class=MsoListParagraph><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='margin-left:54.0pt;text-indent:-54.0pt;
mso-text-indent-alt:-18.0pt;mso-pagination:none;mso-list:l4 level1 lfo17;
tab-stops:54.0pt;mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'><span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>(i)<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>the source of such information is not
bound by a confidentiality agreement with the Disclosing Party or is not
otherwise prohibited from transmitting the information to the Receiving Party
or a Receiving Party Representative by a contractual, legal, fiduciary, or
other obligation; and<o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:108.0pt;mso-pagination:none;tab-stops:
99.0pt;mso-layout-grid-align:none;text-autospace:none'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='margin-left:54.0pt;text-indent:-54.0pt;
mso-text-indent-alt:-18.0pt;mso-pagination:none;mso-list:l4 level1 lfo17;
tab-stops:54.0pt;mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'><span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>(ii)<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>the Receiving Party provides the
Disclosing Party with written notice of such prior possession either (A) before
the execution and delivery of this agreement or (B) if the Receiving Party
later becomes aware (through disclosure to the Receiving Party) of any aspect
of the Confidential Information as to which the Receiving Party had prior
possession, promptly on the Receiving Party so becoming aware; or<o:p></o:p></span></p>

<p class=MsoListParagraph><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='text-indent:-18.0pt;mso-pagination:none;
mso-list:l19 level2 lfo15;mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>(c)<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><span
class=GramE><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>is</span></span><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>
requested or legally compelled (by oral questions, interrogatories, requests
for information or documents, subpoena, civil or criminal investigative demand,
or similar process), or is required by a regulatory body, to be disclosed.
However, the Receiving Party shall: <o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:90.0pt;mso-layout-grid-align:
none;text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='margin-left:54.0pt;text-indent:-54.0pt;
mso-text-indent-alt:-18.0pt;mso-pagination:none;mso-list:l20 level1 lfo19;
tab-stops:54.0pt;mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'><span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>(i)<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>provide the Disclosing Party with
prompt notice of any such request or requirement before disclosure so that the
Disclosing Party may seek an appropriate protective order or other appropriate
remedy; and<o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:108.0pt;mso-pagination:none;tab-stops:
108.0pt;mso-layout-grid-align:none;text-autospace:none'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='margin-left:54.0pt;text-indent:-54.0pt;
mso-text-indent-alt:-18.0pt;mso-pagination:none;mso-list:l20 level1 lfo19;
tab-stops:54.0pt;mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'><span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>(ii)<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span class=GramE><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>provide</span></span><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>
reasonable assistance to the Disclosing Party in obtaining any such protective
order. <o:p></o:p></span></p>

<p class=MsoListParagraph><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;mso-pagination:
none;tab-stops:36.0pt;mso-layout-grid-align:none;text-autospace:none'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><span
style='mso-tab-count:1'>              </span>If a protective order or other
remedy is not obtained or the Disclosing Party grants a waiver under this
agreement, then the Receiving Party may furnish that portion (and only that
portion) of the Confidential Information that, in the written opinion of
counsel reasonably acceptable to the Disclosing Party, the Receiving Party is
legally compelled or otherwise required to disclose. The Receiving Party shall
make reasonable efforts to obtain reliable assurance that confidential
treatment will be accorded any part of the Confidential Information so
disclosed; or<o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:90.0pt;text-indent:-90.0pt;mso-pagination:
none;tab-stops:90.0pt 108.0pt;mso-layout-grid-align:none;text-autospace:none'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='text-indent:-18.0pt;mso-pagination:none;
mso-list:l19 level2 lfo15;mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>(d)<span
style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><span
class=GramE><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>was</span></span><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>
developed by the Receiving Party independently without breach of this agreement.<o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:36.0pt;mso-pagination:none;page-break-after:
avoid;tab-stops:18.0pt;mso-layout-grid-align:none;text-autospace:none'><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;mso-pagination:
none;page-break-after:avoid;mso-list:l19 level1 lfo15;tab-stops:18.0pt;
mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>4.<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>RETURN OF PROPERTY.<o:p></o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;page-break-after:avoid;
mso-layout-grid-align:none;text-autospace:none'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;page-break-after:avoid;
mso-layout-grid-align:none;text-autospace:none'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>If a
Disclosing Party requests, the Receiving Party shall, and shall cause each
Receiving Party Representative <span class=GramE>to</span> promptly (and no
later than 7 days after the request):<o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;mso-layout-grid-align:none;
text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='text-indent:-18.0pt;mso-pagination:none;
mso-list:l19 level2 lfo15;mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>(a)<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>return
all Confidential Information to the Disclosing Party; and<o:p></o:p></span></p>

<p class=MsoListParagraph style='mso-pagination:none;mso-layout-grid-align:
none;text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='text-indent:-18.0pt;mso-pagination:none;
mso-list:l19 level2 lfo15;mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>(b)<span
style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><span
class=GramE><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>destroy</span></span><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>
all Derivative Material and within 7 days of this destruction, provide a
written certificate to the Disclosing Party confirming this destruction.<o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:18.0pt;mso-pagination:none;tab-stops:
18.0pt;mso-layout-grid-align:none;text-autospace:none'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;mso-pagination:
none;mso-list:l19 level1 lfo15;tab-stops:18.0pt;mso-layout-grid-align:none;
text-autospace:none'><![if !supportLists]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'>5.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></b><![endif]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>NO
PUBLICITY. <o:p></o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>The parties
shall keep the existence of this agreement, and the transactions or discussions
contemplated by this agreement, strictly confidential, except as required by
law and except as the parties otherwise may agree in writing before a
disclosure.<o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:18.0pt;mso-layout-grid-align:
none;text-autospace:none'><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;mso-pagination:
none;mso-list:l19 level1 lfo15;tab-stops:18.0pt;mso-layout-grid-align:none;
text-autospace:none'><![if !supportLists]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'>6.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></b><![endif]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>OWNERSHIP
RIGHTS. <o:p></o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>Each party
acknowledges that the Confidential Information is, and at all times will be,
the Disclosing Party’s sole property, even if suggestions made by a Receiving
Party are incorporated into the Confidential Information. Neither party obtains
any rights, by license or otherwise, in the other party’s Confidential Information.
Neither party solicits any change in the other party’s organization, business
practice, service, or products, and the disclosure of the Confidential
Information may not be construed as evidencing any intent by a party to
purchase any products or services of the other party or as an encouragement to
expend funds in development or research efforts. The Confidential Information
may pertain to prospective or unannounced products. Neither party may use the
other party’s Confidential Information as a basis on which to develop or have a
third party develop a competing or similar plan or undertaking. <o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:36.0pt;mso-pagination:none;page-break-after:
avoid;tab-stops:18.0pt;mso-layout-grid-align:none;text-autospace:none'><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;mso-pagination:
none;mso-list:l19 level1 lfo15;tab-stops:18.0pt;mso-layout-grid-align:none;
text-autospace:none'><![if !supportLists]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'>7.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></b><![endif]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>FUTURE
PRODUCTS; RESIDUALS.<o:p></o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>The confidentiality
terms of this agreement do not limit either party’s right to develop or acquire
products independently without use of the other party’s Confidential
Information. Further, each party may use for any purpose the residuals
resulting from access to or work with the other party’s Confidential
Information. However, neither party may disclose the other party’s Confidential
Information except as expressly permitted under this agreement. The term
“residuals” means information in intangible form that is retained in memory by
people who have had access to the Confidential Information, including ideas,
concepts, know-how, or techniques contained in that Confidential Information. Neither
party is required to limit or restrict the assignment of such persons or to pay
royalties for any work resulting from the use of residuals. This section does
not give either party a license under the other party’s copyrights or patents.<o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;page-break-after:avoid;
tab-stops:18.0pt;mso-layout-grid-align:none;text-autospace:none'><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;mso-pagination:
none;page-break-after:avoid;mso-list:l19 level1 lfo15;tab-stops:18.0pt;
mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>8.<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>NO OBLIGATION.<o:p></o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;page-break-after:avoid;
tab-stops:18.0pt;mso-layout-grid-align:none;text-autospace:none'><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;page-break-after:avoid;
tab-stops:18.0pt;mso-layout-grid-align:none;text-autospace:none'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>Nothing
in this agreement obligates either party to proceed with any transaction
between them, and each party reserves the right, in its sole discretion, to
terminate the discussions contemplated by this agreement concerning the
business opportunity, if any, and to cease further disclosures, communications,
or other activities under this agreement on written notice to the other party.
Any commitment to proceed with a transaction will be set forth in a separate
agreement signed by the parties.<o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:36.0pt;mso-pagination:none;tab-stops:
18.0pt;mso-layout-grid-align:none;text-autospace:none'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;mso-pagination:
none;mso-list:l19 level1 lfo15;tab-stops:18.0pt;mso-layout-grid-align:none;
text-autospace:none'><![if !supportLists]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'>9.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></b><![endif]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>NO
WARRANTY.<o:p></o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:18.0pt;mso-layout-grid-align:
none;text-autospace:none'><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:18.0pt;mso-layout-grid-align:
none;text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'>ALL CONFIDENTIAL INFORMATION IS PROVIDED “AS IS.”
NEITHER PARTY MAKES ANY WARRANTIES, EXPRESS, IMPLIED, OR OTHERWISE, REGARDING
THE ACCURACY, COMPLETENESS, OR PERFORMANCE OF ANY SUCH INFORMATION.<b
style='mso-bidi-font-weight:normal'><o:p></o:p></b></span></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:18.0pt;mso-layout-grid-align:
none;text-autospace:none'><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;page-break-after:
avoid;mso-list:l19 level1 lfo15;tab-stops:18.0pt;mso-layout-grid-align:none;
text-autospace:none'><![if !supportLists]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'>10.<span style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>GOVERNING LAW; ATTORNEYS’ FEES;
EQUITABLE RELIEF.<o:p></o:p></span></b></p>

<p class=MsoNormal style='page-break-after:avoid;tab-stops:54.0pt;mso-layout-grid-align:
none;text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'><span style='mso-spacerun:yes'> </span><o:p></o:p></span></p>

<p class=MsoListParagraph style='text-indent:-18.0pt;page-break-after:avoid;
mso-list:l19 level2 lfo15;tab-stops:list 36.0pt'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>(a)<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>Choice of Law.</span></b><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>
The laws Australia govern this agreement (without giving effect to its
conflicts of law principles).<o:p></o:p></span></p>

<p class=MsoListParagraph style='page-break-after:avoid'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='text-indent:-18.0pt;page-break-after:avoid;
mso-list:l19 level2 lfo15;tab-stops:list 36.0pt'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>(b)<span
style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>Choice of Forum.</span></b><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>
Both parties consent to the personal jurisdiction of the state and federal
courts in Queensland, Australia.<o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:36.0pt;mso-pagination:none;mso-layout-grid-align:
none;text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='text-indent:-18.0pt;mso-pagination:none;
mso-list:l19 level2 lfo15;tab-stops:list 36.0pt;mso-layout-grid-align:none;
text-autospace:none'><![if !supportLists]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'>(c)<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></span></b><![endif]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>Attorneys’
Fees.</span></b><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>
If either party employs attorneys to enforce any rights arising out of or
relating to this agreement, the losing party shall reimburse the prevailing
party for its reasonable attorneys’ fees and costs.<o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:36.0pt;mso-pagination:none;mso-layout-grid-align:
none;text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraph style='text-indent:-18.0pt;mso-pagination:none;
mso-list:l19 level2 lfo15;tab-stops:list 36.0pt;mso-layout-grid-align:none;
text-autospace:none'><![if !supportLists]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'>(d)<span style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>Equitable Relief.</span></b><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'> The
parties acknowledge that a breach of this agreement will cause irreparable harm
to the Disclosing Party and monetary damages may not be a sufficient remedy for
an unauthorized disclosure of the Confidential Information. If a Receiving
Party discloses the Confidential Information in violation of this agreement, a
Disclosing Party may, without waiving any other rights or remedies and without
posting a bond or other security, seek an injunction, specific performance, or
other equitable remedy to prevent competition or further disclosure, and may
pursue other legal remedies. <o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;mso-pagination:
none;mso-list:l19 level1 lfo15;tab-stops:18.0pt;mso-layout-grid-align:none;
text-autospace:none'><a name="_Ref269214156"><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>11.<span
style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>AMENDMENTS. <o:p></o:p></span></b></a></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:18.0pt;mso-layout-grid-align:
none;text-autospace:none'><span style='mso-bookmark:_Ref269214156'><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></span></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:18.0pt;mso-layout-grid-align:
none;text-autospace:none'><span style='mso-bookmark:_Ref269214156'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>No
amendment to this agreement will be effective unless it is in writing and
signed by a party or its authorized representative.<o:p></o:p></span></span></p>

<p class=MsoNormal style='margin-left:36.0pt;mso-pagination:none;tab-stops:
18.0pt;mso-layout-grid-align:none;text-autospace:none'><span style='mso-bookmark:
_Ref269214156'><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></span></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;mso-pagination:
none;mso-list:l19 level1 lfo15;tab-stops:18.0pt;mso-layout-grid-align:none;
text-autospace:none'><span style='mso-bookmark:_Ref269214156'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>12.<span
style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>ASSIGNMENT AND DELEGATION.</span></b></span><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'> <o:p></o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-18.0pt;mso-pagination:
none;mso-list:l4 level2 lfo17;mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>(a)<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>No Assignment.</span></b><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>
Neither party may assign any of its rights under this agreement, except with
the prior written consent of the other party, which consent may not be
unreasonably withheld. All voluntary assignments of rights are limited by this
subsection. <o:p></o:p></span></p>

<p class=MsoListParagraph><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-18.0pt;mso-pagination:
none;mso-list:l4 level2 lfo17;mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>(b)<span
style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>No Delegation. </span></b><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>Neither
party may delegate any performance under this agreement, except with the prior
written consent of the other party, which consent may not be unreasonably
withheld.<b style='mso-bidi-font-weight:normal'><o:p></o:p></b></span></p>

<p class=MsoNormal style='margin-left:36.0pt;mso-pagination:none;mso-layout-grid-align:
none;text-autospace:none'><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-18.0pt;mso-pagination:
none;mso-list:l4 level2 lfo17;mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>(c)<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>Enforceability of an Assignment or
Delegation. </span></b><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'>If a purported assignment or purported delegation
is made in violation of this section 12, it is void.<b style='mso-bidi-font-weight:
normal'><o:p></o:p></b></span></p>

<p class=MsoNormal style='margin-left:18.0pt;mso-pagination:none;page-break-after:
avoid;tab-stops:18.0pt;mso-layout-grid-align:none;text-autospace:none'><b><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;mso-pagination:
none;page-break-after:avoid;mso-list:l19 level1 lfo15;tab-stops:18.0pt;
mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><b><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'>13.<span style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>COUNTERPARTS<span style='mso-bidi-font-weight:
bold'>;</span> ELECTRONIC<span style='mso-bidi-font-weight:bold'> SIGNATURES.<o:p></o:p></span></span></b></p>

<p class=MsoNormal style='margin-left:36.0pt;mso-pagination:none;page-break-after:
avoid;tab-stops:18.0pt;mso-layout-grid-align:none;text-autospace:none'><b><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoListParagraph style='text-indent:-18.0pt;page-break-after:avoid;
mso-list:l19 level2 lfo15;tab-stops:36.0pt;mso-layout-grid-align:none;
text-autospace:none'><![if !supportLists]><b><span lang=EN-US style='font-size:
11.0pt;font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>(a)<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><b><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>Counterparts.</span></b><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-bidi-font-weight:bold'> The parties may execute this agreement in any
number of counterparts, each of which is an original but all of which
constitute one and the same instrument. <o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:36.0pt;mso-layout-grid-align:none;
text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-bidi-font-weight:bold'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-18.0pt;mso-list:l19 level2 lfo15;
mso-layout-grid-align:none;text-autospace:none'><![if !supportLists]><b><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'>(b)<span style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><b><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>Electronic
Signatures.</span></b><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif";mso-bidi-font-weight:bold'> This agreement,
agreements ancillary to this agreement, and related documents entered into in
connection with this agreement are signed when a party’s signature is delivered
by facsimile, email, or other electronic medium. These signatures must be
treated in all respects as having the same force and effect as original
signatures.<o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:18.0pt;mso-layout-grid-align:
none;text-autospace:none'><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><span
style='mso-spacerun:yes'>  </span><o:p></o:p></span></b></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;page-break-after:
avoid;mso-list:l19 level1 lfo15;tab-stops:18.0pt;mso-layout-grid-align:none;
text-autospace:none'><![if !supportLists]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'>14.<span style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>SEVERABILITY.<o:p></o:p></span></b></p>

<p class=MsoNormal style='page-break-after:avoid;tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='page-break-after:avoid'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>If any
provision in this agreement is, for any reason, held to be invalid, illegal, or
unenforceable in any respect, that invalidity, illegality, or unenforceability
will not affect any other provisions of this agreement, but this agreement will
be construed as if the invalid, illegal, or unenforceable provisions had never
been contained in this agreement, unless the deletion of those provisions would
result in such a material change that would cause completion of the
transactions contemplated by this agreement to be unreasonable.<o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:18.0pt;mso-layout-grid-align:
none;text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:
"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;mso-pagination:
none;mso-list:l19 level1 lfo15;tab-stops:18.0pt;mso-layout-grid-align:none;
text-autospace:none'><![if !supportLists]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'>15.<span style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>WAIVER. <o:p></o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;page-break-after:avoid;
tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='page-break-after:avoid;mso-layout-grid-align:none;
text-autospace:none'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>No
waiver of a breach, failure of any condition, or any right or remedy contained
in or granted by the provisions of this agreement will be effective unless it
is in writing and signed by the party waiving the breach, failure, right, or
remedy. No waiver of any breach, failure, right, or remedy will be deemed a
waiver of any other breach, failure, right, or remedy, whether or not similar,
and no waiver will constitute a continuing waiver, unless the writing so
specifies.<o:p></o:p></span></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;mso-pagination:
none;mso-list:l19 level1 lfo15;tab-stops:18.0pt;mso-layout-grid-align:none;
text-autospace:none'><![if !supportLists]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'>16.<span style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>ENTIRE<span style='mso-bidi-font-weight:
bold'> AGREEMENT</span>. </span></b><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'><o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:36.0pt;mso-pagination:none;tab-stops:
18.0pt;mso-layout-grid-align:none;text-autospace:none'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='page-break-after:avoid'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>This
agreement constitutes the final agreement of the parties. It is the complete
and exclusive expression of the parties’ agreement with respect to the subject
matter of this agreement. All prior and contemporaneous communications,
negotiations, and agreements between the parties relating to the subject matter
of this agreement are expressly merged into and superseded by this agreement.
The provisions of this agreement may not be explained, supplemented, or
qualified by evidence of trade usage or a prior course of dealings. Neither
party was induced to enter this agreement by, and neither party is relying on,
any statement, representation, warranty, or agreement of the other party except
those set forth expressly in this agreement. Except as set forth expressly in
this agreement, there are no conditions precedent to this agreement’s
effectiveness.<o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:36.0pt;mso-pagination:none;tab-stops:
18.0pt;mso-layout-grid-align:none;text-autospace:none'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;mso-pagination:
none;mso-list:l19 level1 lfo15;tab-stops:18.0pt;mso-layout-grid-align:none;
text-autospace:none'><![if !supportLists]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'>17.<span style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>HEADINGS. <o:p></o:p></span></b></p>

<p class=MsoNormal style='mso-pagination:none;tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='mso-layout-grid-align:none;text-autospace:none'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>The
descriptive headings of the sections and subsections of this agreement are for
convenience only, and do not affect this agreement’s construction or
interpretation.<o:p></o:p></span></p>

<p class=MsoNormal style='mso-layout-grid-align:none;text-autospace:none'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;mso-pagination:
none;page-break-after:avoid;mso-list:l19 level1 lfo15;tab-stops:18.0pt;
mso-layout-grid-align:none;text-autospace:none'><a name="_Ref269224745"></a><a
name="_Ref269305247"><span style='mso-bookmark:_Ref269224745'><![if !supportLists]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif";mso-fareast-font-family:"Calibri Light";
mso-bidi-font-family:"Calibri Light"'><span style='mso-list:Ignore'>18.<span
style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>EFFECTIVENESS.</span></b></span></a><span
style='mso-bookmark:_Ref269224745'><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p></o:p></span></b></span></p>

<p class=MsoNormal style='mso-pagination:none;page-break-after:avoid;
tab-stops:18.0pt;mso-layout-grid-align:none;text-autospace:none'><span
style='mso-bookmark:_Ref269224745'><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></span></p>

<p class=MsoNormal style='mso-pagination:none;page-break-after:avoid;
tab-stops:18.0pt;mso-layout-grid-align:none;text-autospace:none'><span
style='mso-bookmark:_Ref269224745'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>This agreement will become effective
when you accept this agreement via the mobile application<o:p></o:p></span></span></p>

<p class=MsoNormal style='mso-pagination:none;mso-layout-grid-align:none;
text-autospace:none'><span style='mso-bookmark:_Ref269224745'><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></b></span></p>

<p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;mso-pagination:
none;mso-list:l19 level1 lfo15;tab-stops:18.0pt;mso-layout-grid-align:none;
text-autospace:none'><span style='mso-bookmark:_Ref269224745'><a
name="_Ref269305229"><![if !supportLists]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Calibri Light";mso-bidi-font-family:"Calibri Light"'><span
style='mso-list:Ignore'>19.<span style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'>NECESSARY ACTS; FURTHER ASSURANCES.</span></b></a></span><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'><o:p></o:p></span></b></p>

<p class=MsoNormal style='mso-layout-grid-align:none;text-autospace:none'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='mso-layout-grid-align:none;text-autospace:none'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'>Each
party and its officers and directors shall use all reasonable efforts to take, or
cause to be taken, all actions necessary or desirable to consummate and make
effective the transactions this agreement contemplates or to evidence or carry
out the intent and purposes of this agreement. <o:p></o:p></span></p>

<p class=MsoNormal style='mso-layout-grid-align:none;text-autospace:none'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='mso-layout-grid-align:none;text-autospace:none'><span
lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif";
mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman";
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA'><br
clear=all style='mso-special-character:line-break;page-break-before:always'>
</span>

<p class=MsoNormal align=center style='text-align:center;mso-pagination:none;
tab-stops:28.0pt 56.0pt 84.0pt 112.0pt 140.0pt 168.0pt 196.0pt 224.0pt 252.0pt 280.0pt 308.0pt 336.0pt;
mso-layout-grid-align:none;text-autospace:none'><span lang=EN-US
style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p align=center style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;
margin-left:0cm;text-align:center'><span lang=EN-US style='font-size:11.0pt;
font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:11.0pt;font-family:"Calibri Light","sans-serif"'><o:p>&nbsp;</o:p></span></p>

</div>                
<!-- NDA Text End -->
                     
                <input type="button" onclick="hideNDA();" value="Close" class="buttonStyle" />
                 <br />
                &nbsp;
            </div>
        </div>


    </div>
        
    <script>
        document.getElementById('LoginUser_LoginButton').style.display = 'none';

        function showNDA() {
            document.getElementById('NDAdiv').style.display = 'block';

        }

        function hideNDA() {
            document.getElementById('NDAdiv').style.display = 'none';

        }
        function acceptNDA() {
            var tmpNDA;
            tmpNDA = document.getElementById('NDA');

            var tmpLoginButton;
            tmpLoginButton = document.getElementById('LoginUser_LoginButton');

            //alert(tmpNDA.value);
            //alert(tmpNDA.checked);
            if (tmpNDA.checked == true) {
                tmpLoginButton.style.display = 'block';
                //alert('Setting button false');
            } else {
                tmpLoginButton.style.display = 'none';
                //alert('Setting button true');
            }
        }
    </script>
</body>
</html>
