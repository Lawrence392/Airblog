<#macro layout title>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="keywords" content="${meta_keywords!}"/>
    <meta name="description" content="${meta_description!}" />
    <!--
        公共 head 代码,详情请参考:https://docs.halo.run/zh/developer-guide/theme/public-template-tag
        包含:Favicon,自定义 head 等   -->
    <@global.head />

	<link rel="stylesheet" type="text/css" href="${theme_base!}/assets/css/main.css" />
	<link rel="stylesheet" type="text/css" href="${theme_base!}/assets/css/avatar.css" />
	<link rel="stylesheet" href="${theme_base!}/assets/iconfont/iconfont.css" />
	<noscript>
		<link rel="stylesheet" type="text/css" href="${theme_base!}/assets/css/noscript.css" />
	</noscript>
	<#if settings.daily_pic?? && settings.daily_pic!=''>
		<style "text/css">
			#wrapper>.bg {
				background-image: url(../images/overlay.png), linear-gradient(to right, rgb(0 0 0 / 20%), rgb(0 0 0 / 0%), rgb(0 0 0 / 20%)), url(${settings.daily_pic!});
			}
		</style>
	</#if>
    <title>${title}</title>
</head>


<body class="is-preload">


	<!--  menu  -->
	<#include "menu.ftl">



	<div id="wrapper" class="fade-in">



	<!-- Main -->
	<#nested >

<!-- Footer -->
<footer class="footer">
    <div class="footer">
		<!--  comment  -->




		<!-- Copyright -->
		<div class="copyright">
			<#if settings.copyright?? && settings.copyright!=''>
				<p class="copyright">
					&copy; ${settings.copyright!}
				</p>
			</#if>
			<#if settings.icp_filing?? && settings.icp_filing!=''>
				<p class="icp_filing">
					${settings.icp_filing!}
				</p>
			</#if>
		</div>

    </div>
</footer>

<#--
    公共底部代码
-->
<@global.footer />

<!--  Please respect the author's work and keep the work statement, made by scientist392  -->
<#--  github repository address: https://github.com/Scientist392/Holo-Airblog  -->
<!--  All Rights Reserved  -->
<!--  Made based on halo, air-blog theme-->

</div>

	<!-- Scripts -->



</body>


</html>

</#macro>

