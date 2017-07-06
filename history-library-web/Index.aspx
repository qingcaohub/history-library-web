<%@ page language="C#" autoeventwireup="true" inherits="Index, App_Web_gcyxjnfd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>购票客户端监控系统</title>
    <script src="Scripts/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="Scripts/easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <link href="Scripts/easyui/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="Scripts/easyui/themes/icon.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/easyui/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <script type="text/javascript">
        data = [{
            "id": 1,
            "text": "状态记录",
            "url": "StateRecord.aspx"
        },
            {
                "id": 1,
                "text": "远程控制",
                "url": "Remote.aspx"
            }
        ]
        $(function () {
            $("#tree").tree({ data: data, lines: true });
        });
        function treeClick(node) {
            var tabs = $("#mainTabs").tabs();
            if (node.url) {
                var date = new Date();
                if (tabs.tabs('exists', node.text)) {
                    tabs.tabs('select', node.text);
                    tabs.tabs('update', {
                        tab: tabs.tabs("getTab", node.text), options: {}
                    });
                } else {
                    var opts = {
                        title: node.text,
                        closable: true, border: false, fit: true,
                        content: '<iframe id="tabFrm' + date.getMilliseconds() + '" src="' + node.url + '" allowTransparency="true" style="border:0;width:100%;height:100%;" frameBorder="0"></iframe>'
                    }
                    tabs.tabs('add', opts);
                }
            }
        }
    </script>
</head>
<body class="easyui-layout" data-options="border:false">
    <%--<form id="form1" runat="server">--%>
    <div data-options="region:'north',height:50" style="padding: 10px; font-size: 25px;">
        购票客户端 监控系统
    </div>
    <div data-options="region:'west',title:'系统导航',width:150">
        <ul id="tree" data-options="onClick:treeClick">
        </ul>
    </div>
    <div data-options="region:'center',border:false">
        <div id="mainTabs" class="easyui-tabs" data-options="fit:true,border:false">
        </div>
    </div>
    <%--   </form>--%>
</body>
</html>
