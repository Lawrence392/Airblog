<#include "module/macro.ftl">
<@layout title="${blog_title!}">

    <#include "module/dailypic.ftl">




    <!-- Featured Post -->

<div id="main">
    <div class="head-line">
        <h1>Latest Articles</h1>
    </div>

<#--  posts  -->
<div class="elementor-post">
    <#list posts.content as post>
            <article class="post">
                <div class="featured">

                    <#if post.thumbnail?? && post.thumbnail!=''>
                    <div class="thumbnail">
                        <a href="${post.fullPath!}">
                            <img src="${post.thumbnail!}" alt="">
                        </a>
                    </div>

                    <#else>
                        <div class="thumbnail">
                            <a href="${post.fullPath!}">
                                <img src="${theme_base!}/assets/images/404.png" alt="">
                            </a>
                        </div>

                    </#if>

                    <div class="major">
                        <h2><a href="${post.fullPath!}">${post.title!}</a></h2>
                        <p><a href="${post.fullPath!}">${post.summary!}</a></p>
                        

                        <div class="label">
                            <span class="iconfont">&#xe921;</span>
                            <span>
                                ${ (post.wordCount/1000) ?string["0.#"]}k
                            </span>
                            <span class="iconfont date">&#xe747;</span>
                            <span>
                                ${post.createTime?string("yyyy-MM-dd")}
                            </span>
                        </div>

                    </div>

                </div>
            </article>
    </#list>
</div>

<#--  paginationTag  -->

<@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="${posts.totalPages}">
    <ul class="pagination">
        <#list pagination.rainbowPages as number>
            <#if number.isCurrent>
                <li>
                    <span class="current">
                        <div class="point">
                        
                        </div>
                    </span>
                </li>
            <#else>
                <li>
                    <a href="${number.fullPath!}">
                        <div class="point">
                        </div>
                    </a>
                </li>
            </#if>
        </#list>

    </ul>
</@paginationTag>
</div>
    


<#--  defult      -->

</@layout>
