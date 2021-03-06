﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSongShe/songshe.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Maticsoft.Web.MobileSongShe.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(function () {
            $(".logo").html("联系我们");
            $(".ytnav li").eq(0).click(function () {
                $(this).addClass("currentli");
                $(this).siblings("li").removeClass("currentli");
                $(".yycg").show();
                $(".tsjy").hide();
            });
            $(".ytnav li").eq(1).click(function () {
                $(this).addClass("currentli");
                $(this).siblings("li").removeClass("currentli");
                $(".tsjy").show();
                $(".yycg").hide();
            });
        });
        function SubmitMessage(GroupName) {
            var Name = $("div[name=" + GroupName + "] input[name=Name]").val();
            var Phone = $("div[name=" + GroupName + "] input[name=Phone]").val();
            var Email = $("div[name=" + GroupName + "] input[name=Email]").val();
            var ComplaintType = $("div[name=" + GroupName + "] input[name=ComplaintType]").val();
            var Content = $("div[name=" + GroupName + "] textarea[name=Content]").val();
            if (Name == undefined || Name == "") {
                alert("请输入您的姓名!");
                return;
            }
            if (Phone == undefined || Phone == "") {
                alert("请输入您的联系电话!");
                return;
            }
            if (isNaN(Phone) || Phone.length != 11) {
                alert("您输入的联系电话有误，请重新输入您的11位联系电话!");
                return;
            }
            if (GroupName == "yycg") {
                if (Email == undefined || Email == "") {
                    alert("请输入您的邮箱!");
                    return;
                }
            }
            if (GroupName == "tsjy") {
                if (ComplaintType == undefined || ComplaintType == "") {
                    alert("请输入您的投诉类型!");
                    return;
                }
            }
            $.ajax({
                dataType: "json",
                type: "post",
                url: "/Ajax/WebHandler.ashx",
                data: { "action":"SubmitMessage", "GroupName": GroupName, "Name": Name, "Phone": Phone, "Email": Email, "ComplaintType": ComplaintType, "Content": Content },
                success: function (data) {
                    alert(data.msg);
                    if (data.status == 1) {
                        window.location.href = "/MobileSongShe/Index.aspx";
                    }
                },
                error: function () {
                    alert("提交留言信息失败，请刷新页面重新提交");
                }
            });
        }
    </script>
    <style>
        .qq, .telphone {
            float: left;
            width: 43%;
            border-bottom: 2px solid #D9D9D9;
            height: 55px;
            overflow: hidden;
            margin-left: 4%;
            color: #43BCC5;
        }

        .qqinfo, .telphoneinfo {
            float: left;
            margin-left: 13px;
            line-height: 23px;
            font-size: 14px;
        }

        .qqimg, .telphoneimg, .whereimg, .whereinfo {
            float: left;
        }

        .whereinfo {
            margin-left: 13px;
            width: 85%;
            color: #43BCC5;
            line-height: 23px;
            font-size: 12px;
        }

        .qqimg img, .telphoneimg img, .whereimg img {
            height: 25px;
            position:relative;
            top:10px;
        }

        .ytnav {
            width: 100%;
            border-bottom: 2px solid #D9D9D9;
            height: 30px;
            line-height: 30px;
            padding-left: 4%;
        }

            .ytnav ul li {
                float: left;
                width: 23%;
                text-align: center;
                margin-right: 15%;
                color: #43BCC5;
                font-size: 12px;
            }

        .currentli {
            border-bottom: 2px solid #080403;
        }

        .yycg,.tsjy {
            margin-top: 5px;
        }

            .yycg input,.tsjy input {
                height: 28px;
            }

            .yycg textarea,.tsjy textarea {
                height: 110px;
                line-height: 25px;
            }

            .yycg input, .yycg textarea,.tsjy input,.tsjy textarea {
                width: 85%;
                margin-top: 10px;
                padding-left: 10px;
                background: #F4F4F4;
                border: 1px solid #CFCECD;
                color: #43BCC5;
                font-size: 12px;
                margin-left: 4%;
            }

        :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
            color: #43BCC5;
            opacity: 1;
        }

        ::-moz-placeholder { /* Mozilla Firefox 19+ */
            color: #43BCC5;
            opacity: 1;
        }

        input:-ms-input-placeholder, textarea:-ms-input-placeholder {
            color: #43BCC5;
            opacity: 1;
        }

        input::-webkit-input-placeholder, textarea::-webkit-input-placeholder {
            color: #43BCC5;
            opacity: 1;
        }

        .tjly {
            margin-left: 4%;
            padding-left:10px;
            width: 85%;
            height: 30px;
            line-height: 30px;
            text-align: center;
            background: #F4F4F4;
            border: 1px solid #CFCECD;
            margin-top:10px;
            margin-bottom:20px;
            font-size:14px;
            color:#43BCC5;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pagecontent">
        <div style="margin-top: 20px;">
            <div class="qq">
                <div class="qqimg">
                    <img src="/MobileSongShe/Image/qq.png" />
                </div>
                <div class="qqinfo">
                    <div>在线QQ</div>
                    <div>593768393</div>
                </div>
            </div>
            <div class="telphone">
                <div class="telphoneimg">
                    <img src="/MobileSongShe/Image/phone_1.png" />
                </div>
                <div class="telphoneinfo">
                    <div>服务热线</div>
                    <div>023-XXXXXXXX</div>
                </div>
            </div>
        </div>
        <div style="clear: both;"></div>
        <div style="margin-top: 30px; margin-left: 4%;">
            <div class="whereimg">
                <img src="/MobileSongShe/Image/where_1.png" />
            </div>
            <div class="whereinfo">
                <div>地址</div>
                <div>重庆市渝中区大坪时代天街 时代汇13号楼17层</div>
            </div>
        </div>
        <div style="clear: both;"></div>
        <div style="margin-top: 40px;">
            <div class="ytnav">
                <ul>
                    <li class="currentli">预约参观</li>
                    <li>投诉及建议</li>
                </ul>
            </div>
            <div name="yycg" class="yycg">
                <div>
                    <input type="text" placeholder="姓名" name="Name" data-role='none' />
                </div>
                <div>
                    <input type="text" placeholder="手机" name="Phone" data-role='none' />
                </div>
                <div>
                    <input type="text" placeholder="邮箱" name="Email" data-role='none' />
                </div>
                <div>
                    <textarea placeholder="内容" name="Content" data-role='none'></textarea>
                </div>
                <div class="tjly" onclick="SubmitMessage('yycg')">提交留言</div>
            </div>
            <div name="tsjy" class="tsjy" style="display:none;">
                <div>
                    <input type="text" placeholder="姓名" name="Name" data-role='none' />
                </div>
                <div>
                    <input type="text" placeholder="手机" name="Phone" data-role='none' />
                </div>
                <div>
                    <input type="text" placeholder="投诉类型" name="ComplaintType" data-role='none' />
                </div>
                <div>
                    <textarea placeholder="内容" name="Content" data-role='none'></textarea>
                </div>
                <div class="tjly" onclick="SubmitMessage('tsjy')">提交留言</div>
            </div>
        </div>
    </div>
</asp:Content>
