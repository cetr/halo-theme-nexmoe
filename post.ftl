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
            <div class="nexmoe-post">
                <div class="nexmoe-post-cover">
                    <#if '' != post.thumbnail>
                        <img src="${post.thumbnail!}" class="ls-is-cached lazyloaded index-img">
                    <#else>
                        <img src="${settings.post_default_picture!'${theme_base!}/images/post_default.jpg'}"
                             class="ls-is-cached lazyloaded index-img">
                    </#if>
                    <h1>${post.title}</h1>
                </div>
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
                               href="{category.fullPath}">${category.name}</a>
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
                    <div class="vditor-reset">
                        ${post.formatContent!}
                    </div>
                </article>
                <div class="nexmoe-post-copyright">
                    <i class="mdui-list-item-icon iconfont solo-about2"></i>
                    <p>文章发布自：<a href="${blog_url!}" target="_blank">${user.nickname!}</a>，转载请注明出处，谢谢！</p>
                </div>
            </div>
            <#--            <div class="post__toc">-->
            <#--                <#if article?? && article.articleToC?? && article.articleToC?size &gt; 0>-->
            <#--                    <#include "../../common-template/toc.ftl"/>-->
            <#--                </#if>-->
            <#--            </div>-->

            <#--            <#if commentable>-->
            <#--                <div id="b3logsolocomments"></div>-->
            <#--                <div id="vcomment" style="padding: 30px 0;" data-name="${article.authorName}"-->
            <#--                     data-postId="${article.oId}"></div>-->
            <#--                <#if !staticSite>-->
            <#--                    <div id="soloComments" style="display: none;">-->
            <#--                        <@comments commentList=articleComments article=article></@comments>-->
            <#--                    </div>-->
            <#--                </#if>-->
            <#--            </#if>-->
            <#if !post.disallowComment!false>
                <div id="vcomment" style="padding: 30px 0;">
                    <div id="comments" class="comments">
                        <#include "comment.ftl">
                        <@comment post=post type="post" />
                    </div>
                </div>
            </#if>
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
<#--<#if pjax><!---- pjax {#pjax} start --&ndash;&gt;</#if>-->
<#--<@comment_script oId=article.oId commentable=article.commentable>-->
<#--    page.tips.externalRelevantArticlesDisplayCount = "${externalRelevantArticlesDisplayCount}";-->
<#--    <#if 0 != randomArticlesDisplayCount>-->
<#--        page.loadRandomArticles('<h3>RECOMMEND POSTS</h3>');-->
<#--    </#if>-->
<#--    <#if 0 != externalRelevantArticlesDisplayCount>-->
<#--        page.loadExternalRelevantArticles("<#list article.articleTags?split(",") as articleTag>${articleTag}<#if articleTag_has_next>,</#if></#list>",-->
<#--        '<h3>HACPAI POSTS</h3>');-->
<#--    </#if>-->
<#--    <#if 0 != relevantArticlesDisplayCount>-->
<#--        page.loadRelevantArticles('${article.oId}', '<h3>RELEVANT POSTS</h3>');-->
<#--    </#if>-->
<#--    Skin.initArticle()-->
<#--</@comment_script>-->
<#--<#if pjax><!---- pjax {#pjax} end --&ndash;&gt;</#if>-->
</body>
</html>
