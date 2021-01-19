package main

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)


func GetBlogAuthTable(ctx *context.Context) table.Table {

	blogAuth := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := blogAuth.GetInfo().HideFilterArea()

	info.AddField("Id", "id", db.Int).
		FieldFilterable().FieldSortable()
	info.AddField("用户名", "username", db.Varchar)
	info.AddField("密码", "password", db.Varchar)

	info.SetTable("blog_auth").SetTitle("博客用户").SetDescription("博客用户").SetAction(template.HTML(`<a href="http://www.baidu.com" target="_blank"><i class="fa fa-google"></i></a>`))

	// 添加第三个字段，一个sql表不存在的字段
	info.AddField("Custom", "custom", db.Varchar)

	info.AddField("性别", "gender", db.Tinyint).FieldDisplay(func(model types.FieldModel) interface{} {
		if model.Value == "0" {
			return "men"
		}
		if model.Value == "1" {
			return "women"
		}
		return "unknown"
	})

	info.HideDeleteButton()


	formList := blogAuth.GetForm()
	formList.AddField("Id", "id", db.Int, form.Default).
		FieldDisableWhenCreate().
		FieldDisableWhenUpdate()
	formList.AddField("用户名", "username", db.Varchar, form.Text)

	formList.AddField("密码", "password", db.Varchar, form.Password)


	formList.SetTable("blog_auth").SetTitle("博客用户").SetDescription("博客用户")

	return blogAuth
}
