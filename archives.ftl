<#include "module/macro.ftl">
<@layout title="归档 - ${blog_title!}">
<link rel="stylesheet" type="text/css" href="${theme_base!}/assets/css/archives.css" />


    <#include "module/dailypic.ftl">


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
