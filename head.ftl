<#macro head title>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>${title!}</title>
    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

    <meta name="author" content="${user.nickname!}">
    <meta name="description" content="${meta_description!}">
    <meta name="keywords" content="${meta_keywords!}">

    <@global.head />

    <link rel="alternate" type="application/atom+xml" title="ATOM 1.0" href="${atom_url!}">
    <link rel="apple-touch-icon" sizes="180x180" href="/avatar">
    <link rel="bookmark" href="/avatar" type="image/png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon.ico">
    <link rel="alternate" href="${atom_url!}" title="${blog_title!}" type="application/atom+xml">

    <link rel="stylesheet" href="${theme_base!}/css/index.css"/>
    <link rel="stylesheet" href="${theme_base!}/css/font-icon.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mdui@0.4.3/dist/css/mdui.min.css">
    <link href="//cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="//cdn.jsdelivr.net/gh/coortop/cdn@master/prism.css" rel="stylesheet">

    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.5.0/dist/jquery.min.js"></script>

    <@global.statistics />
</head>
</#macro>
