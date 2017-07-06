<%@ page language="C#" autoeventwireup="true" inherits="StateRecord, App_Web_gcyxjnfd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="Scripts/easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <link href="Scripts/easyui/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="Scripts/easyui/themes/icon.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/easyui/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            setInterval(function () { $("#grid").datagrid('reload'); }, 1000 * 60);
        });
//        function formatDate(value, row, index) {
//            return value.toString().substr(0, 4) + '/' + value.toString().substr(4, 2) + '/' + value.toString().substr(6, 2);
//        }
//        function formatTime(value, row, index) {
//            return value.toString().substr(0, 2) + ':' + value.toString().substr(2, 2) + ':' + value.toString().substr(4, 2);
//        }
    </script>
</head>
<body>
    <div>
        <table id="grid" style="width: 1100px; height: 700px" class="easyui-datagrid" data-options="rownumbers:true,pagination:true,url:'StateRecord.aspx?opt=GetStateList'">
            <thead>
                <tr>
                    <th data-options="field:'IP',width:150,align:'center'">
                        IP地址
                    </th>
                    <%--<th data-options="field:'Date',width:120,align:'center'">
                        日期
                    </th>--%>
                    <th data-options="field:'Time',width:200,align:'center'">
                        时间
                    </th>
                    <th data-options="field:'Device',width:100,align:'center'">
                        设备号
                    </th>
                    <th data-options="field:'BizNo',width:100,align:'center'">
                        商户号
                    </th>
                    <th data-options="field:'SerialNo',width:100,align:'center'">
                        流水号
                    </th>
                    <th data-options="field:'State',width:100,align:'center'">
                        状态
                    </th>
                    <th data-options="field:'TransName',width:100,align:'center'">
                        交易类型
                    </th>
                    <th data-options="field:'Remark',width:150,align:'center'">
                        备注
                    </th>
                </tr>
            </thead>
        </table>
    </div>
</body>
</html>
