<#-- Layout -->
<#macro layout title keywords description>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <!--
    ------------------------------------------------------
	 _  _         _  _           _     _   _  _       
	| |(_) _ _   (_)(_) ___  ___| |_  (_) (_)(_) __ _ 
	| || || ' \  | || |/ -_)|_ /| ' \ | | | || |/ _` |
	|_||_||_||_|_/ ||_|\___|/__||_||_||_|_/ ||_|\__,_|
	           |__/                     |__/          
    ------------------------------------------------------------
    version: ${site.version}
    github : https://github.com/roilat/interspace/tree/master/interspace-blog
    ------------------------------------------------------------
    -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--[if IE]>
    <meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'/>
    <![endif]-->
    <meta name="keywords" content="interspace, ${keywords?default(options['site_keywords'])}">
    <meta name="description" content="${description?default(options['site_description'])}">
    <meta name="cn.roilat:interspace-blog" content="${site.version}">
    ${options['site_metas']}

    <title>${title?default(options['site_name'])}</title>

    <link href="${base}/dist/vendors/pace/themes/pace-theme-minimal.css" rel="stylesheet"/>
    <link href="${base}/dist/vendors/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

    <link href="${base}/dist/css/editor.css" rel="stylesheet"/>
    <link href="${base}/dist/css/plugins.css" rel="stylesheet"/>
    <link href="${base}/theme/classic/dist/css/style.css" rel="stylesheet"/>

    <link href="${base}/dist/vendors/simple-line-icons/css/simple-line-icons.css" rel="stylesheet"/>
    <link href="${base}/dist/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>

    <script src="${base}/dist/vendors/pace/pace.min.js"></script>

    <script src="${base}/dist/js/jquery.min.js"></script>
    <script src="${base}/dist/vendors/layer/layer.js"></script>
    <script src="${base}/dist/vendors/bootstrap/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        var _INTERSPACE_BLOG = _INTERSPACE_BLOG || {};
        _INTERSPACE_BLOG.BASE_PATH = '${base}';
        _INTERSPACE_BLOG.LOGIN_TOKEN = '${profile.id}';
    </script>

    <script src="${base}/dist/js/sea.js"></script>
    <script src="${base}/dist/js/sea.config.js"></script>
    <script src="${base}/dist/js/site.base.js"></script>

    <!-- Favicons -->
    <link href="<@resource src=options['site_favicon']/>" rel="apple-touch-icon-precomposed" />
    <link href="<@resource src=options['site_favicon']/>" rel="shortcut icon" />
</head>
<body>
    <!-- header -->
    <#include "/classic/inc/header.ftl"/>
    <!-- /header -->

    <!-- content -->
    <div class="wrap">
        <!-- Main -->
        <div class="container">
            <#nested>
        </div>
    </div>
    <!-- /content -->

    <!-- footer -->
    <#include "/classic/inc/footer.ftl"/>
</body>
</html>
</#macro>