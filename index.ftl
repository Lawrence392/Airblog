<#include "module/macro.ftl">
<@layout title="${blog_title!}">


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
						<a href="${settings.sns_zhihu!}" title="email"><i class="iconfont icon-zhihu"></i></a>
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




    <!-- Featured Post -->

<div id="main">
    <div class="head-line">
        <h1>Latest Articles</h1>
    </div>

<#--  posts  -->

    <#list posts.content as post>
            <article class="post">
                <div class="featured">

                    <#if post.thumbnail?? && post.thumbnail!=''>
                    <div class="photo-frame">
                        <div class="thumbnail">
                                <a href="${post.fullPath!}">
                                    <img src="${post.thumbnail!}" alt="">
                                </a>
                        </div>
                        <div class="times">
                            <span class="date">${post.createTime?string("yyyy-MM-dd")}</span>
                        </div>
                    </div>
                    
                    <#else>
                        <div class="photo-frame">
                            <div class="thumbnail">
                                <a href="${post.fullPath!}">
                                    <img src="${theme_base!}/assets/images/404.png" alt="">
                                </a>
                            </div>
                        </div>

                    </#if>

                    <div class="major">

                        <h2><a href="${post.fullPath!}">${post.title!}</a></h2>
                        

                        
                        
                        <p><a href="${post.fullPath!}">${post.summary!}</a></p>
                        

                        <div class="label">
                            <i class="iconfont">&#xe921; ${ (post.wordCount/1000) ?string["0.#"]}k</i>
                        </div>
                    
                    </div>

                </div>
            </article>
    </#list>


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
