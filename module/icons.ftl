<@icons method="list">
    <#--
        ?sort_by('priority')：根据菜单的排序编号排序
    -->

    <#--  联系方式的排序方式?遍历  -->
    <#list menus?sort_by('priority') as menu>
        <li>
            <a href="${menu.url}" target="${menu.target!}">${menu.name} </a>
        </li>
            <!--  <li class="active"><a href="index.html">Air blog</a></li>
            <li><a href="generic.html">Archives</a></li>
            <li><a href="elements.html">Categories</a></li>
            <li><a href="elements.html">Photos</a></li>  -->
    </#list>

</@icons>