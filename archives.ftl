<#include "module/macro.ftl">
<@layout title="归档 - ${blog_title!}">
<link rel="stylesheet" type="text/css" href="${theme_base!}/assets/css/archives.css" />

<#--  before  -->
<#--  <link rel="stylesheet" type="text/css" href="${theme_base!}/assets/css/archive.css" />  -->


<section class="dailypic">
    <div class="elementor-container">
        <div class="elementor-container-left">
            <div class="name">
                <h2>Holo</h2>
            </div>
            <div class="introduction">
                <h1>${settings.user_description!}</h1>
            </div>
            <div class="links">
                <a href="${settings.sns_email!}" title="email"><i class="iconfont icon-zhihu"></i></a>
                <a href="${settings.sns_bilibili!}" title="bilibili"><i class="iconfont icon-bilibili-line"></i></a>
                <a href="${settings.sns_wechat!}" title="wechat"><i class="iconfont icon-wechat-fill"></i></a>
                <a href="${settings.sns_github!}" title="github"><i class="iconfont icon-github-fill"></i></a>
            </div>
        </div>


        <div class="figure">
            <img src="${theme_base!}/assets/images/狼と香辛料.png" alt=" ">
        </div>
    </div>
</section>

<section class="archivesmain">

    <div class="archivesmain">
        <@postTag method="archive" type="Month">
        <#list archives as archive>
            <div class="archive-wrapper">
                <h2 class="archive-header">${archive.year?c}-${archive.month?c}</h2>
                    <#list archive.posts?sort_by("createTime")?reverse as post>
                        <article class="archive-normal">
                                <a href="${post.fullPath!}">${post.title!}</a>
                                <h3  class="archive-time">${post.createTime?string("MM-dd")}</h3>
                        </article>
                    </#list>
            </div>

        </#list>
        </@postTag>
    </div>


</section>
</@layout>
