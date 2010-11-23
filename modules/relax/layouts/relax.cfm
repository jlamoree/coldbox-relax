<cfoutput>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!--============================Head============================-->
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="robots" content="noindex,nofollow" />	
	<!--- SES --->
	<base href="#getSetting('htmlBaseURL')#" />
<!--=========Title=========-->
    <title>ColdBox Relax - RESTful Tools For Lazy Experts</title> 
<!--=========Stylesheets=========-->
	<link href="#rc.root#/includes/css/style.css"	 	rel="stylesheet" type="text/css"/>
	<link href="#rc.root#/includes/css/teal.css" 		rel="stylesheet" type="text/css"/>
	<link href="#rc.root#/includes/css/invalid.css" 	rel="stylesheet" type="text/css"/>
    <link href="#rc.root#/includes/css/sort.css"	 	rel="stylesheet" type="text/css"/>
	        
<!--========= JAVASCRIPT -->
	<script type="text/javascript" src="#rc.root#/includes/javascript/jquery-1.4.4.min.js"></script> <!--Import jquery tools-->
	<script type="text/javascript" src="#rc.root#/includes/javascript/jquery.tools.min.js"></script> <!--Import jquery tools-->
	<script type="text/javascript" src="#rc.root#/includes/javascript/jquery.uitablefilter.js"></script>
	<script type="text/javascript" src="#rc.root#/includes/javascript/metadata.pack.js"></script>
	<script type="text/javascript" src="#rc.root#/includes/javascript/tablesorter.min.js"></script>
	<script type="text/javascript" src="#rc.root#/includes/javascript/relax.js"></script>
</head>
<!--End Head-->
<!--============================Body============================-->
<body>

<!--==================== Header =======================-->
<div id="header_bg">

	<!--============Header Wrapper============-->
	<div class="wrapper">
       
		<!--=======Top Header area======-->
		<div id="header_top">
			<span class="fr">
		  		<a href="http://www.ortussolutions.com">OrtusSolutions.com</a>
				<a href="http://www.coldbox.org">ColdBox.org</a>
				<a href="http://www.github.com/coldbox/coldbox-relax">Github Repo</a>
				<a href="http://www.twitter.com/coldbox">Twitter</a>
			</span>
		  RESTful Tools For Lazy Experts
		</div>
		<!--End Header top Area=-->
    
		<!--=========Header Area including search field and logo=========-->
		<div id="logo">
			<a title="Go Relax!" href="#event.buildLink(rc.xehHome)#"><img src="#rc.root#/includes/images/ColdBoxLogoSquare_125.png" border="0" alt="logo" /></a>
		</div>
		
		<div id="header_main" class="clearfix">
           	<h1>Relax <span>v.#getModuleSettings('relax').version#</span></h1>		
		</div>
		<!--End Search field and logo Header Area-->
      
		<!--=========Main Navigation=========-->
		<ul id="main_nav">
			<li> <a href="##" <cfif event.getCurrentHandler() eq "relax:home"> class="current"</cfif>>Dashboard</a>
				<ul>
					<li><a href="#event.buildLink(rc.xehHome)#"  <cfif event.getCurrentAction() eq "index"> class="current"</cfif>>Home</a></li>
					<li><a href="##" class="confirmIt">Open Modal</a></li>
				</ul>
			</li>
			<li><a href="##" <cfif event.getCurrentHandler() eq "relax:logs"> class="current"</cfif>>LogBox</a>
				<ul>
					<li><a href="#event.buildLink(rc.xehLogViewer)#" <cfif event.getCurrentAction() eq "index"> class="current"</cfif>>Log Viewer</a></li>
				</ul>
			</li>
		</ul>
		<!--End Main Navigation-->
        
		
		<!--=========Jump Menu=========-->
		<!---
        <div class="jump_menu">
            <a href="##" class="jump_menu_btn">Jump To</a>
            <ul class="jump_menu_list">
                <li><a href="##"><img src="#rc.root#/includes/images/users2_icon.png" alt="" width="24" height="24" />Users</a></li>
                <li><a href="##"><img src="#rc.root#/includes/images/tools_icon.png" alt="" width="24" height="24" />Settings</a></li>
                <li><a href="##"><img src="#rc.root#/includes/images/messages_icon.png" alt="" width="24" height="24" />Messages</a></li>
                <li><a href="##"><img src="#rc.root#/includes/images/key_icon.png" alt="" width="24" height="24" />Credentials</a></li>
                <li><a href="##"><img src="#rc.root#/includes/images/documents_icon.png" alt="" width="24" height="24" />Pages</a></li>
            </ul>
        </div>
		--->
		<!--End Jump Menu-->
    
  	</div>
  <!--End Wrapper-->
</div>
<!--End Header-->

<!--============================ Template Content Background ============================-->
<div id="content_bg" class="clearfix">
	<!--============================ Main Content Area ============================-->
	<div class="content wrapper clearfix">
		#renderView()#		
	</div>
<!--End main content area-->
</div>

<!--End Template Content bacground-->
<!--============================Footer============================-->
<div id="footer">
	<div class="wrapper">
	Copyright (C) #dateformat(now(),"yyyy")# <a href="http://www.ortussolutions.com">Ortus Solutions, Corp</a>  . All Rights Reserved.
	</div>
</div>
<!--End Footer-->

<!--- ============================ confirm it modal dialog ============================ --->
<div id="confirmIt"> 
	<div> 
		<h2 id="confirmItTitle">Are you sure?</h2> 
		<p id="confirmItMessage">Are you sure you want to perform this action?</p> 
		<hr />
		<p class="textRight">
			<button class="close button" 	data-action="cancel"> Cancel </button>
			<button class="close buttonred" data-action="confirm"> Confirm </button>
		</p>
	</div> 
</div>
<!--- ============================ end Confirmit ============================ --->

<!--- ============================ Remote Modal Window ============================ --->
<div id="remoteModal">
	<div id="remoteModelContent">
		<img src="includes/images/ajax-loader-horizontal.gif" title="loading" alt="title" />
	</div>
</div>
<!--- ============================ end Confirmit ============================ --->

</body>
<!--End Body-->
</html>
</cfoutput>