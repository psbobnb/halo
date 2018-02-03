<#include "module/_macro.ftl">
<@head title="Halo后台管理-菜单设置"></@head>
<div class="wrapper">
    <!-- 顶部栏模块 -->
    <#include "module/_header.ftl">
    <!-- 菜单栏模块 -->
    <#include "module/_sidebar.ftl">
    <div class="content-wrapper">
        <section class="content-header">
            <h1 style="display: inline-block;">菜单设置</h1>
            <ol class="breadcrumb">
                <li>
                    <a href="/admin"><i class="fa fa-dashboard"></i> 首页</a>
                </li>
                <li><a href="#">外观</a></li>
                <li class="active">菜单设置</li>
            </ol>
        </section>
        <section class="content container-fluid">
            <div class="row">
                <div class="col-md-5">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">添加分类目录</h3>
                        </div>
                        <form action="/admin/category/save" method="post" role="form" id="cateAddForm" onsubmit="return checkCate()">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">名称</label>
                                    <input type="text" class="form-control" id="cateName" name="cateName" placeholder="">
                                    <small>页面上所显示的名称</small>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">路径名称</label>
                                    <input type="text" class="form-control" id="cateUrl" name="cateUrl" placeholder="">
                                    <small>*这是文章路径上显示的名称，最好为英文</small>
                                </div>
                                <div class="form-group">
                                    <label for="cateDesc" class="control-label">描述</label>
                                    <textarea class="form-control" rows="3" id="cateDesc" name="cateDesc" style="resize: none"></textarea>
                                    <small>*添加描述，部分主题可显示</small>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="submit" class="btn btn-primary btn-flat">确定添加</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">所有菜单选项</h3>
                        </div>
                        <div class="box-body table-responsive">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>名称</th>
                                    <th>路径</th>
                                    <th>排序</th>
                                    <th>图标</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <#list menus as menu>
                                    <tr>
                                        <td>${menu.menuName}</td>
                                        <td>${menu.menuUrl}</td>
                                        <td>${(menu.menuSort)!}</td>
                                        <td>${menu.menuIcon}</td>
                                        <td>
                                            <a href="#" class="btn btn-primary btn-xs btn-flat">修改</a>
                                            <button class="btn btn-danger btn-xs btn-flat" onclick="modelShow()">删除</button>
                                        </td>
                                    </tr>
                                    </#list>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <#include "module/_footer.ftl">
</div>
<@footer></@footer>