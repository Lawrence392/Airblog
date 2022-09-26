<!-- Header -->
<header class="header">	

<nav class="navbar">
    <div class="container">
        <div class="headerlogo">
            <a href="/">${settings.user_nick_name!}'s Blog</a>
        </div>
        <div class="menulist">
            <@menuTag method="list">
                <#list menus?sort_by('priority') as menu>
                    <a href="${menu.url!}" target="${menu.target!}">${menu.name!} </a>
                </#list>
            </@menuTag>
        </div>
    </div>
</nav>

	
</header>

