<%@ page language="C#" autoeventwireup="true" inherits="Remote, App_Web_gcyxjnfd" %>

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
            $("#IPList").combobox({
                url: 'Remote.aspx?opt=GetOnlineIPList',
                required: true,
                valueField: 'IP',
                textField: 'IP'
            });
            setInterval(function () { $("#IPList").combobox('reload'); }, 1000*60*10 );
        });

        function Close() {
            var currIP = $("#IPList").combobox('getValue');
                    if (currIP == "") {
                        alert("请选择要远程控制的客户端!");
                        return false;
                    }
            $.ajax({
                url: 'Remote.aspx?opt=CloseClient',
                async: true,
                data: { IP: currIP },
                success: function (data) {
                    alert(data);
                }
                
            });
        }
        function Restart() {
            var currIP = $("#IPList").combobox('getValue');
                        if (currIP == "") {
                            alert("请选择要远程控制的客户端!");
                            return false;
                        }
            $.ajax({
                url: 'Remote.aspx?opt=RestartClient',
                async: true,
                data: { IP: currIP },
                success: function (data) {
                    alert(data);
                }

            });
        }
        function StopService() {
            var currIP = $("#IPList").combobox('getValue');
                        if (currIP == "") {
                            alert("请选择要远程控制的客户端!");
                            return false;
                        }
            $.ajax({
                url: 'Remote.aspx?opt=StopService',
                async: true,
                data: { IP: currIP },
                success: function (data) {
                    alert(data);
                }

            });
        }
        function RecoverService() {
            var currIP = $("#IPList").combobox('getValue');
                        if (currIP == "") {
                            alert("请选择要远程控制的客户端!");
                            return false;
                        }
            $.ajax({
                url: 'Remote.aspx?opt=RecoverService',
                async: true,
                data: { IP: currIP },
                success: function (data) {
                    alert(data);
                }

            });
        }
        function GetLog() {
            var currIP = $("#IPList").combobox('getValue');
                        if (currIP == "") {
                            alert("请选择要远程控制的客户端!");
                            return false;
                        }
            $.ajax({
                url: 'Remote.aspx?opt=GetLog',
                async: true,
                data: { IP: currIP },
                success: function (data) {
                    alert(data);
                }

            });
        }
        function UpdateClient() {
            var currIP = $("#IPList").combobox('getValue');
                        if (currIP == "") {
                            alert("请选择要远程控制的客户端!");
                            return false;
                        }
            $.ajax({
                url: 'Remote.aspx?opt=UpdateClient',
                async: true,
                data: { IP: currIP },
                success: function (data) {
                    alert(data);
                }

            });
        }
    </script>
</head>
<body>
    <div>
        <table>
            <tr>
                <td>
                    在线客户端IP &nbsp;&nbsp;
                </td>
                <td>
                    <input id="IPList" class="easyui-combobox" style="width: 180px" />
                </td>
            </tr>
        </table>
    </div>
    <br />
    <div>
        <table>
            <tr>
                <td>
                    <a id="Close" href="#" class="easyui-linkbutton" onclick="Close()" style="width: 80px;
                        height: 40px; font-size: 25px">关机</a>&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <a id="Restart" href="#" class="easyui-linkbutton" onclick="Restart()" style="width: 80px;
                        height: 40px; font-size: 25px">重启</a>&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <a id="StopService" href="#" class="easyui-linkbutton" onclick="StopService()" style="width: 80px;
                        height: 40px; font-size: 25px">暂停服务</a>&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <a id="RecoverService" href="#" class="easyui-linkbutton" onclick="RecoverService()"
                        style="width: 80px; height: 40px; font-size: 25px">恢复服务</a>&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <a id="GetLog" href="#" class="easyui-linkbutton" onclick="GetLog()" style="width: 80px;
                        height: 40px; font-size: 25px">提取日志</a>&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <a id="UpdateClient" href="#" class="easyui-linkbutton" onclick="UpdateClient()"
                        style="width: 80px; height: 40px; font-size: 25px">客户端升级</a>&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
