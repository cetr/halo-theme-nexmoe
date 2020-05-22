<div class="nexmoe-drawer mdui-drawer" id="drawer">
    <div class="nexmoe-avatar mdui-ripple">
        <a href="javascript:;">
            <img src="${user.avatar!}" alt="${user.nickname!}">
        </a>
    </div>
    <#--    <div class="nexmoe-count">-->
    <#--        <div>-->
    <#--            <span></span>-->
    <#--        </div>-->
    <#--        <div>-->
    <#--            <span class="ft-gray"></span>-->
    <#--            <b class="notb" data-uvstaturl="/"></b>-->
    <#--        </div>-->
    <#--    </div>-->
    <div class="list-content">
        <ul class="nexmoe-list mdui-list header__nav" mdui-collapse="{accordion: true}">
            <@menuTag method="treeByTeam" team="">
                <#list menus?sort_by('priority') as menu>
                <#--                    <a class="nexmoe-list-item mdui-list-item mdui-ripple" href="${menu.url!}">-->
                <#--                        ${menu.icon!'<i class="menu-item-icon fa fa-fw"></i>'}<br/>-->
                <#--                        <div class="mdui-list-item-content">${menu.name!}</div>-->
                <#--                    </a>-->
                    <#if menu.children?? && menu.children?size gt 0>
                    <#--                        <a class="nexmoe-list-item mdui-list-item mdui-ripple" href="${menu.url!}">-->
                    <#--                            ${menu.icon!'<i class="menu-item-icon fa fa-fw"></i>'}<br/>-->
                    <#--                            <div class="mdui-list-item-content">${menu.name!}</div>-->
                    <#--                        </a>-->
                    <#--                        <div class="navbar-dropdown">-->
                    <#--                            <#list menu.children?sort_by('priority') as child>-->
                    <#--                                <a class="navbar-item" href="${child.url!}" target="${child.target!}">-->
                    <#--                                    ${child.name!}-->
                    <#--                                </a>-->
                    <#--                            </#list>-->
                    <#--                        </div>-->
                    <#else>
                        <a class="nexmoe-list-item mdui-list-item mdui-ripple" href="${menu.url!}">
                            ${menu.icon!'<i class="fa fa-fw"></i>'}<br/>
                            <div class="mdui-list-item-content">${menu.name!}</div>
                        </a>
                    </#if>
                </#list>
            </@menuTag>
        </ul>
    </div>
    <aside id="nexmoe-sidebar">

        <div class="nexmoe-widget-wrap">
            <h3 class="nexmoe-widget-title">功能按钮</h3>
            <div class="nexmoe-widget nexmoe-social features">
                <#--                <a href="/search" title="搜索">-->
                <#--                    <i class="mdui-list-item-icon iconfont solo-search"></i>-->
                <#--                    <div class="mdui-list-item-content">搜索</div>-->
                <#--                </a>-->
                <a href="/rss" target="_blank" title="RSS">
                    <i class="mdui-list-item-icon iconfont solo-rss"></i>
                </a>
            </div>
        </div>

        <div class="nexmoe-widget-wrap">
            <h3 class="nexmoe-widget-title">社交按钮</h3>
            <div class="nexmoe-widget nexmoe-social">
                <#if settings.github??>
                    <span class="links-of-author-item">
                    <a href="https://github.com/${settings.github!}" target="_blank">
                        <i class="fa fa-fw fa-github"></i>
                    </a>
                </span>
                </#if>

                <#if settings.twitter??>
                    <span class="links-of-author-item">
                        <a href="https://twitter.com/${settings.twitter!}" target="_blank">
                            <i class="fa fa-fw fa-twitter"></i>
                        </a>
                    </span>
                </#if>

                <#if settings.qq??>
                    <span class="links-of-author-item">
                        <a href="http://wpa.qq.com/msgrd?v=3&uin=${settings.qq!}&site=qq&menu=yes" target="_blank"
                           data-balloon-pos="up">
                            <i class="fa fa-fw fa-qq"></i>
                        </a>
                    </span>
                </#if>

                <#if user.email??>
                    <span class="links-of-author-item">
                        <a href="mailto:${user.email}" target="_blank">
                            <i class="fa fa-fw fa-envelope"></i>
                        </a>
                    </span>
                </#if>
                <#if settings.telegram??>
                    <span class="links-of-author-item">
                        <a href="https://t.me/${settings.telegram!}" target="_blank">
                            <i class="fa fa-fw fa-telegram"></i>
                        </a>
                    </span>
                </#if>
            </div>
        </div>

        <#--        <div class="nexmoe-widget-wrap">-->
        <#--            <h3 class="nexmoe-widget-title">公告栏</h3>-->
        <#--            <div class="nexmoe-widget tagcloud">-->
        <#--                <div class="links-of-author">-->
        <#--                    测试-->
        <#--                </div>-->
        <#--            </div>-->
        <#--        </div>-->

        <div class="nexmoe-widget-wrap">
            <h3 class="nexmoe-widget-title">标签</h3>
            <div class="nexmoe-widget tagcloud">
                <@tagTag method="list">
                    <#if tags?? && tags?size gt 0>
                        <#list tags as tag>
                            <a class="mdui-ripple"
                               href="${tag.fullPath}/">${tag.name}</a>
                        </#list>
                    </#if>
                </@tagTag>
            </div>
        </div>

        <div class="nexmoe-widget-wrap">
            <h3 class="nexmoe-widget-title">分类</h3>
            <div class="nexmoe-widget">
                <ul class="category-list">
                    <@categoryTag method="list">
                        <#if categories?? && categories?size gt 0>
                            <#list categories as category>
                                <li class="category-list-item">
                                    <a class="category-list mdui-ripple"
                                       href="${category.fullPath}/">${category.name}</a>
                                    <span class="category-list-count">${category.postCount}</span>
                                </li>
                            </#list>
                        </#if>
                    </@categoryTag>
                </ul>
            </div>
        </div>

        <#--        <#if 0 != archiveDates?size>-->
        <#--            <div class="nexmoe-widget-wrap">-->
        <#--                <h3 class="nexmoe-widget-title">${archiveLabel}</h3>-->
        <#--                <div class="nexmoe-widget">-->
        <#--                    <ul class="category-list">-->
        <#--                        <#list archiveDates as archiveDate>-->
        <#--                                <li class="category-list-item">-->
        <#--                                <#if "en" == localeString?substring(0, 2)>-->
        <#--                                    <a class="category-list mdui-ripple"-->
        <#--                                       href="/archives/${archiveDate.archiveDateYear}/${archiveDate.archiveDateMonth}"-->
        <#--                                       title="${archiveDate.archiveDateYear} ${yearLabel} ${archiveDate.archiveDateMonth} ${monthLabel} ${archiveLabel} - ${blog_title!}">-->
        <#--                                        ${archiveDate.monthName} ${archiveDate.archiveDateYear}</a><span-->
        <#--                                        class="category-list-count">${archiveDate.archiveDatePublishedArticleCount}</span>-->
        <#--                                <#else>-->
        <#--                                    <a href="/archives/${archiveDate.archiveDateYear}/${archiveDate.archiveDateMonth}"-->
        <#--                                       title="${archiveDate.archiveDateYear} ${yearLabel} ${archiveDate.archiveDateMonth} ${monthLabel} ${archiveLabel} - ${blog_title!}">-->
        <#--                                        ${archiveDate.archiveDateYear} ${yearLabel} ${archiveDate.archiveDateMonth} ${monthLabel}</a>-->
        <#--                                    <span class="category-list-count">${archiveDate.archiveDatePublishedArticleCount}</span>-->
        <#--                                </#if>-->
        <#--                                </li>-->
        <#--                        </#list>-->
        <#--                    </ul>-->
        <#--                </div>-->
        <#--            </div>-->
        <#--        </#if>-->

    </aside>
    <div class="nexmoe-widget-wrap">
        <div class="nexmoe-copyright" style="margin-top: 20px;">
            Copyright &copy; ${.now?string('yyyy')}
            <a href="${blog_url!}">${blog_title!}</a> <br/>
            Powered by <a href="https://halo.run" target="_blank">Halo</a> <br/>
            Theme by <a rel="friend" href="https://blog.coor.top" target="_blank">弥枳</a>
            <span>|</span>
            <a rel="friend" href="${theme.repo!}" target="_blank">${theme.name!}</a> <br/>
            <span><a href="http://beian.miit.gov.cn" target="_blank">${settings.beian!}</a></span>
        </div>
    </div>
</div>
