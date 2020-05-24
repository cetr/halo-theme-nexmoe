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
            <#include "article-list.ftl">
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
