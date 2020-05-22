<!DOCTYPE html>
<html>

<#include "head.ftl">
<@head title="${blog_title!}"/>

<body class="mdui-drawer-body-left mdui-loaded">
<div id="nexmoe-background">
    <#include "header.ftl">
</div>
<div id="nexmoe-header">
    <#include "side.ftl">
</div>
<div id="nexmoe-content">
    <div class="nexmoe-primary">
        <main id="pjax" class="fn__flex-1">
            <#--            <#if pjax><!---- pjax {#pjax} start --&ndash;&gt;</#if>-->
            <article class="links nexmoe-py">
                <h2>友情链接</h2>
                <@linkTag method="list">
                    <#if links?? && links?size gt 0>
                        <#list links as link>
                            <div class="other__item">
                                <a href="${link.url!}" target="_blank" rel="noopener">
                                    ${link.name!}
                                </a>
                                <div>${link.description}</div>
                            </div>
                        </#list>
                    </#if>
                </@linkTag>
                <#--                <#if 0 != links?size>-->
                <#--                    <#if 'list' != customVars.key1>-->
                <#--                        <#list links as link>-->
                <#--                            <div class="other__item">-->
                <#--                                <a href="${link.linkAddress}" target="_blank"-->
                <#--                                   rel="noopener">-->
                <#--                                    ${link.linkTitle}-->
                <#--                                </a>-->
                <#--                                <div>${link.linkDescription}</div>-->
                <#--                            </div>-->
                <#--                        </#list>-->
                <#--                    <#else>-->
                <#--                        <ul>-->
                <#--                            <#list links as link>-->
                <#--                                <li>-->
                <#--                                    <a href="${link.linkAddress}" title="${link.linkTitle}" target="_blank"-->
                <#--                                       rel="noopener">-->
                <#--                                        <img src="${link.linkIcon}"-->
                <#--                                             alt="${link.linkDescription}">-->
                <#--                                    </a>-->
                <#--                                </li>-->
                <#--                            </#list>-->
                <#--                        </ul>-->
                <#--                    </#if>-->
                <#--                </#if>-->
            </article>
            <#--            <#if pjax><!---- pjax {#pjax} end --&ndash;&gt;</#if>-->
        </main>

        <#--        <#if "" != noticeBoard>-->
        <#--            <div class="nexmoe-hitokoto">-->
        <#--                <p id="hitokoto">${blogSubtitle}</p>-->
        <#--            </div>-->
        <#--        </#if>-->
        <div class="back-to-top iconfont solo-gotop"></div>
    </div>
</div>
<#include "footer.ftl">
</body>
</html>