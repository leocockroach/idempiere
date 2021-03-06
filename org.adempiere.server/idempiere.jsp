<%@ page import="org.bmlaurus.home.Prop" %>
<!--
Theme Name: iDempiere Theme
Version: 2.0
Description: iDempiere Theme
Author: BMLaurus
Author URI: http://www.bmlaurus.com
-->
<html>
<% Prop.load(); %>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="<%=Prop.loadCss()%>">
	<script type="text/javascript" src="resources/jquery/jquery.js"></script>
	<% if(Prop.isRssOn()){ 
		out.write("<script type=\"text/javascript\" language=\"javascript\" src=\"http://www.google.com/jsapi?key=ABQIAAAAFEyVt-pBJaTXzM__EKlCrBRyn6VRRdQGMLQqRPPw1fs6QDtVcBRGklOHzrf7hmoAX3qgxg4t5ImqRA\"></script>\n");
		out.write("<script type=\"text/javascript\" language=\"javascript\" src=\"resources/gfeedfetcher.js\"></script>");
		}
	%>
	<title><%=Prop.getProperty(Prop.TITLE) %></title>
</head>
<body>
	<div id="body" class="body">
		<div id="toolBar" class="toolBar">
			<div id="toolBar-title" class="toolBar-title">
				<div id="credits" style="color:#336699;">
					<%=Prop.getProperty(Prop.CREDITS_TXT)%>
				</div>
				<div class="left_div" id="title">
					<p><%=Prop.getProperty(Prop.CLIENT_NAME)%></p>
				</div>
			</div>
			<div id="toolBar-tools" class="toolBar-tools">
				<a href="<%=Prop.getProperty(Prop.OPTION_LINK)%>"  target="_blank">
					<img name="img_option" src="<%=Prop.getImage("img_option.png")%>" border="0" title="<%=Prop.getProperty(Prop.OPTION_TEXT)%>"/>
				</a>
				<a id="felixConsole" href="<%=Prop.getProperty(Prop.FELIX_LINK)%>">
					<img name="img_felix" src="<%=Prop.getImage("img_felix.png")%>" border="0" title="<%=Prop.getProperty(Prop.FELIX_TEXT)%>"/>
				</a>
				<a id="ServerManagement" href="<%=Prop.getProperty(Prop.MONITOR_LINK)%>">
					<img name="img_idempiereMonitor" src="<%=Prop.getImage("img_idempiereMonitor.png")%>" border="0" title="<%=Prop.getProperty(Prop.MONITOR_TEXT)%>"/>
				</a>
			</div>
		</div>
		<div id ="main" class="main">
			<div id="main-content" class="main-content">
				<div id="main-topButtons">
					<div id="main-requestBtns" class="topBtnHeader">
						<div id ="main-requestBtns-btnReq" class="topBtn">
							<div class = "btnResoc-content">
								<a href="<%=Prop.getProperty(Prop.SUPPORT_LINK)%>" target="_blank">
									<img name="img_locsupport" src="<%=Prop.getImage("img_locsupport.png")%>" border="0" title="<%=Prop.getProperty(Prop.LOCAL_TEXT)%>"/>
								</a>
								<div class="main-txt-btn"><%=Prop.getProperty(Prop.LOCAL_TEXT)%></div>
							</div>
						</div>
						<div id ="main-requestBtns-btnSendReq" class="topBtn">
							<div class = "btnResoc-content">
								<a href="<%=Prop.getProperty(Prop.RESOURCE_LINK)%>" target="_blank">
									<img name="img_resource" src="<%=Prop.getImage("img_resource.png")%>" border="0" title="<%=Prop.getProperty(Prop.RESOURCE_TEXT)%>"/>
								</a>
								<div class="main-txt-btn"><%=Prop.getProperty(Prop.RESOURCE_TEXT)%></div>
							</div>
						</div>
						<div id ="main-requestBtns-btnLocSupp" class="topBtn">
							<div class = "btnResoc-content">
								<a href="<%=Prop.getProperty(Prop.WEBSTORE_LINK)%>" target="_blank">
									<img name="img_webstore" src="<%=Prop.getImage("img_webstore.png")%>" border="0" title="<%=Prop.getProperty(Prop.WEBSTORE_TEXT)%>"/>
								</a>
								<div class="main-txt-btn"><%=Prop.getProperty(Prop.WEBSTORE_TEXT)%></div>
							</div>
						</div>
						<div id ="main-requestBtns-btnResoc" class="topBtn">
							<div class = "btnResoc-content">
								<a href="<%=Prop.getProperty(Prop.SENDREQUEST_LINK)%>" target="_blank">
									<img name="img_sendreq" src="<%=Prop.getImage("img_sendreq.png")%>" border="0" title="<%=Prop.getProperty(Prop.SENDREQUEST_TEXT)%>"/>
								</a>
								<div class="main-txt-btn"><%=Prop.getProperty(Prop.SENDREQUEST_TEXT)%></div>
							</div>
						</div>
					</div>
				</div>
				<div id="main-rssContent">
					<div id="rssfeed-wrap">
						<script type="text/javascript">
						<% if(Prop.isRssOn()) {
							out.write("var newsfeed=new gfeedfetcher(\"rssfeeds\", \"rssfeedsclass\", \"_new\");\n");
							out.write("newsfeed.displayoptions(\"label datetime snippet\");\n");
							out.write("newsfeed.setentrycontainer(\"p\");\n");
							out.write("newsfeed.filterfeed(20, \"date\");\n");
							for(int i=1;i<=5;i++){
								if(Prop.getProperty(Prop.RSS+i)!=null&&Prop.getProperty(Prop.RSS+i).length()>0){
									out.write("newsfeed.addFeed(\""+Prop.getProperty(Prop.RSS+i+"Name")+"\",\""+Prop.getProperty(Prop.RSS+i)+"\");\n");
								}
							}
							out.write("newsfeed.init();\n");
						}
						%>
						</script>
						<% if(Prop.isRssOn()) 
							out.write("<p><a class=\"darklink\" href=\"javascript:newsfeed.init()\">"+Prop.getProperty(Prop.RSS_REFRESH)+"</a></p>");
						%>
					</div>
				</div>
				<div id="main-login" class="main-login">
					<a href="<%=Prop.getProperty(Prop.WEBUI_LINK)%>" target="_self">
						<img name="img_webui" src="<%=Prop.getImage("img_webui.png")%>" border="0" />
					</a>
				</div>
				<div id="main-docuBtns">
					<div id="main-docuBtns" class="topBtnFooter">
						<div id ="main-docuBtns-btnIrc" class="bottomBtn">
							<div class = "btnDocu-content">
								<a href="<%=Prop.getProperty(Prop.IRC_LINK)%>" target="_blank">
									<img name="img_irc" src="<%=Prop.getImage("img_irc.png")%>" border="0" title="<%=Prop.getProperty(Prop.IRC_TEXT)%>"/>
								</a>
								<div class="main-txt-btn"><%=Prop.getProperty(Prop.IRC_TEXT)%></div>
							</div>
						</div>
						<div id ="main-docuBtns-btnWiki" class="bottomBtn">
							<div class = "btnDocu-content">
								<a href="<%=Prop.getProperty(Prop.WIKI_LINK)%>" target="_blank">
									<img name="img_wiki" src="<%=Prop.getImage("img_wiki.png")%>" border="0" title="<%=Prop.getProperty(Prop.WIKI_TEXT)%>"/>
								</a>
								<div class="main-txt-btn"><%=Prop.getProperty(Prop.WIKI_TEXT)%></div>
							</div>
						</div>
						<div id ="main-docuBtns-btnForum" class="bottomBtn">
							<div class = "btnDocu-content">
								<a href="<%=Prop.getProperty(Prop.FORUMS_LINK)%>" target="_blank">
									<img name="img_forum" src="<%=Prop.getImage("img_forum.png")%>" border="0" title="<%=Prop.getProperty(Prop.FORUMS_TEXT)%>"/>
								</a>
								<div class="main-txt-btn"><%=Prop.getProperty(Prop.FORUMS_TEXT)%></div>
							</div>
						</div>
						<div id ="main-docuBtns-btnSuppReq" class="bottomBtn">
							<div class = "btnDocu-content">
								<a href="<%=Prop.getProperty(Prop.SUPPORTREQ_LINK)%>" target="_blank">
									<img name="img_supreq" src="<%=Prop.getImage("img_supreq.png")%>" border="0" title="<%=Prop.getProperty(Prop.SUPPORTREQUEST_TEXT)%>"/>
								</a>
								<div class="main-txt-btn"><%=Prop.getProperty(Prop.SUPPORTREQUEST_TEXT)%></div>
							</div>
						</div>
					</div>
				</div>
				<div id="main-background">
					<img name="img_background" src="<%=Prop.getImage("img_back.png")%>" border="0"/>
				</div>
			</div>
		</div>
		<div id="foot" class="foot">
			<div id="socialBar" class="socialBar">
				<%if(!Prop.getProperty(Prop.SOC_FACEBOOK).equals("") && !Prop.getProperty(Prop.SOC_FACEBOOK).equals("NONE")){%>
					<a id="facebook" href="<%=Prop.getProperty(Prop.SOC_FACEBOOK)%>" target="_blank">
						<img name="img_facebook" src="<%=Prop.getImage("img_facebook.png")%>" border="0"/>
					</a>
				<%} if(!Prop.getProperty(Prop.SOC_TWITTER).equals("") && !Prop.getProperty(Prop.SOC_TWITTER).equals("NONE")){%>
					<a id="twitter" href="<%=Prop.getProperty(Prop.SOC_TWITTER)%>" target="_blank">
						<img name="img_twitter" src="<%=Prop.getImage("img_twitter.png")%>" border="0"/>
					</a>
				<%} if(!Prop.getProperty(Prop.SOC_LINKEDIN).equals("") && !Prop.getProperty(Prop.SOC_LINKEDIN).equals("NONE")){%>
					<a id="linkedin" href="<%=Prop.getProperty(Prop.SOC_LINKEDIN)%>" target="_blank">
						<img name="img_linkedin" src="<%=Prop.getImage("img_linkedin.png")%>" border="0"/>
					</a>
				<%} if(!Prop.getProperty(Prop.SOC_GOOPLUS).equals("") && !Prop.getProperty(Prop.SOC_GOOPLUS).equals("NONE")){%>
					<a id="google+" href="<%=Prop.getProperty(Prop.SOC_GOOPLUS)%>" target="_blank">
						<img name="img_googleplus" src="<%=Prop.getImage("img_googleplus.png")%>" border="0"/>
					</a>
				<%} if(!Prop.getProperty(Prop.SOC_5).equals("") && !Prop.getProperty(Prop.SOC_5).equals("NONE")){%>
					<a id="soc5" href="<%=Prop.getProperty(Prop.SOC_LINKEDIN)%>" target="_blank">
						<img name="img_soc5" src="<%=Prop.getImage("img_soc5.png")%>" border="0"/>
					</a>
				<%} if(!Prop.getProperty(Prop.SOC_6).equals("") && !Prop.getProperty(Prop.SOC_6).equals("NONE")){%>
					<a id="soc6" href="<%=Prop.getProperty(Prop.SOC_LINKEDIN)%>" target="_blank">
						<img name="img_soc6" src="<%=Prop.getImage("img_soc6.png")%>" border="0"/>
					</a>
				<%} if(!Prop.getProperty(Prop.SOC_7).equals("") && !Prop.getProperty(Prop.SOC_7).equals("NONE")){%>
					<a id="soc7" href="<%=Prop.getProperty(Prop.SOC_LINKEDIN)%>" target="_blank">
						<img name="img_soc7" src="<%=Prop.getImage("img_soc7.png")%>" border="0"/>
					</a>
				<%}%>
			</div>
			<div id="footercopyright">
				&copy; Copyright 2013-<%=Prop.getYear()%> iDempiere - All rights reserved - <a href="http://www.gnu.org/licenses/gpl-2.0.html" target="blank">iDempiere License is GPLv2</a>
				<%=Prop.getProperty(Prop.COPYRIGHT_TXT)%>
			</div>
		</div>
	</div>
</body>
</html>