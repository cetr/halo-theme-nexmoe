<section class="nexmoe-posts" id="brand-waterfall">
    <#list posts.content as post>
        <div class="nexmoe-post">
            <a href="${post.fullPath}">
                <div class="nexmoe-post-cover mdui-ripple">
                    <#--                    <#if post.articlePutTop>-->
                    <#--                        <i class="top iconfont solo-top"></i>-->
                    <#--                    </#if>-->
                    <#if '' != post.thumbnail>
                        <img src="${post.thumbnail!}" class="ls-is-cached lazyloaded index-img">
                    <#else>
                        <img src="${settings.post_default_picture!'${theme_base!}/images/post_default.jpg'}"
                             class="ls-is-cached lazyloaded index-img">
                    </#if>
                    <h1>${post.title}</h1>
                </div>
            </a>
            <div class="nexmoe-post-meta">
                <span>
                    <i class="nexmoefont iconfont solo-calendarl"></i>${post.createTime?string("yyyy年MM月dd日")}
                </span>
                <span>
                    <i class="nexmoefont iconfont solo-heat"></i>
                    <b class="notb" data-uvstaturl="">${post.visits}</b> °C
                </span>
                <#--                <#if post.articleCommentCount != 0>-->
                <#--                    <span>-->
                <#--                        <i class="nexmoefont iconfont solo-comment"></i>-->
                <#--                        <b class="notb" data-uvstatcmt="${post.oId}">${post.articleCommentCount}</b>-->
                <#--                    </span>-->
                <#--                </#if>-->
                <#if (post.categories?size gt 0 )>
                    <#list post.categories as category>
                        <span>
                            <a class="nexmoefont iconfont solo-category "
                               href="${category.fullPath}">${category.name}</a>
                        </span>
                    </#list>
                </#if>
                <#if post.tags?size gt 0>
                    <#list post.tags as tag>
                        <span>
                            <a class="nexmoefont iconfont solo-tag" href="${tag.fullPath}">${tag.name}</a>
                        </span>
                    </#list>
                </#if>
            </div>
            <article>
                <p class="summary">${post.summary!}</p>
            </article>
        </div>
    </#list>
</section>

<#if posts.totalPages gt 1>
    <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
        <#include "pagebar.ftl">
    </@paginationTag>
</#if>
