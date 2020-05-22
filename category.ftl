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
            <#include "article-list.ftl">
            <#--            <#if pjax><!---- pjax {#pjax} end --&ndash;&gt;</#if>-->
        </main>

        <#--        <#if "" != noticeBoard>-->
        <#--            <div class="nexmoe-hitokoto">-->
        <#--                <p id="hitokoto">${blogSubtitle}</p>-->
        <#--            </div>-->
        <#--        </#if>-->
        <div class="back-to-top iconfont solo-gotop" onclick=""></div>
    </div>
</div>
<#include "footer.ftl">
</body>
</html>