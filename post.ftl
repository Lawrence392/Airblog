<#include "module/macro.ftl">
<@layout title="${post.title!} - ${blog_title!}">
	<link rel="stylesheet" type="text/css" href="${theme_base!}/assets/css/post.css" />
    <#--  plugins  -->

    <#--  highlight  -->
    <link rel="stylesheet" href="${theme_base!}/assets/plugins/highlight/styles/base16/tomorrow.min.css">
    <script src="${theme_base!}/assets/plugins/highlight/highlight.min.js"></script>
    <script>hljs.highlightAll();</script>

<#if post.thumbnail?? && post.thumbnail!=''>
    <section class="post-img">
        <div class="post-img">

            <a href="${post.fullPath!}">
                <img src="${post.thumbnail!}" alt="">
            </a>
        </div>
    </section>
<#else>
    <section class="post-img">

        <div class="post-img">
            <a href="${post.fullPath!}">
                <img src="${theme_base!}/assets/images/404.png" alt="">
            </a>
        </div>
    </section>

</#if>

    <!-- Post -->
    <article class="post">
        <#--  <header class="major">
            <h1>${post.title!}</h1>
            <span class="date">${post.createTime?string("yyyy-MM-dd")}</span>
            <p>${post.summary!}</p>
        </header>  -->


        <#--  <#if post.thumbnail?? && post.thumbnail!=''>
            <div class="image main">
                <img src="${post.fullPath!}" alt="" />
            </div>
        </#if>  -->
        <div class="postmain">
            ${post.formatContent!}
        </div>
    </article>

    <#--  prismjs  -->
    <#--  <link rel="stylesheet" href="${theme_base!}/assets/plugins/prismjs/coy/prism-coy.css">  -->
    <#--  <script src="${theme_base!}/assets/plugins/prismjs/coy/prism-coy.js"></script>  -->
    
    
    <#--  <#include "module/comment.ftl">
    <@comment post=post type="post" />  -->
</@layout>
