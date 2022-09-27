<#include "module/macro.ftl">
<@layout title="Tags - ${blog_title!}">
    <link rel="stylesheet" type="text/css" href="${theme_base!}/assets/css/tags.css" />
    
    <#include "module/dailypic.ftl">


    <div class="tree">
    <@categoryTag method="tree">
            <div class="category">
                <#list categories as category>
                    <div class="category-a">
                        <a href="${category.fullPath!}">
                            ${category.name!}
                        </a>
                    </div>

                    <#if category.children?? && category.children?size gt 0>
                        <@renderCategories category.children></@renderCategories>
                    </#if>
                </#list>
            </div>
    </@categoryTag>

    <#macro renderCategories categories>
        <div class="category-children">
            <#list categories as category>
                <div class="category-a">
                    <a  href="${category.fullPath!}">
                        ${(category.name)!}
                    </a>
                    <#if category.children?? && category.children?size gt 0>
                        <@renderCategories category.children></@renderCategories>
                    </#if>
                </div>
            </#list>
    </#macro>
    </div>

</@layout>
