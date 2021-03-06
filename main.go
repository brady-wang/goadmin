package main

import (
	_ "github.com/GoAdminGroup/go-admin/adapter/gin"               // 适配器
	_ "github.com/GoAdminGroup/go-admin/modules/db/drivers/mysql" // sql 驱动
	_ "github.com/GoAdminGroup/themes/adminlte"                    // ui主题

	"github.com/GoAdminGroup/go-admin/engine"
	"github.com/GoAdminGroup/go-admin/examples/datamodel"
	"github.com/GoAdminGroup/go-admin/modules/config"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/modules/language"
	"github.com/GoAdminGroup/go-admin/template"
	"github.com/GoAdminGroup/go-admin/template/chartjs"
	"github.com/gin-gonic/gin"
	"io/ioutil"

)

func main() {
	r := gin.Default()

	gin.SetMode(gin.ReleaseMode)
	gin.DefaultWriter = ioutil.Discard

	eng := engine.Default()

	template.AddComp(chartjs.NewChart())

	if err := eng.AddConfig(config.Config{
		Databases: config.DatabaseList{
			"default": {
				Host:       "192.168.33.10",
				Port:       "3306",
				User:       "root",
				Pwd:        "123456",
				Name:       "goadmin",
				MaxIdleCon: 50,
				MaxOpenCon: 150,
				Driver:     db.DriverMysql,
			},
		},
		UrlPrefix: "admin",
		IndexUrl:  "/",
		Debug:     true,
		Language:  language.CN,
	}).
		AddGenerators(Generators).
		Use(r); err != nil {
		panic(err)
	}

	r.Static("/uploads", "./uploads")

	eng.HTML("GET", "/admin", datamodel.GetContent)


	_ = r.Run(":9033")
}