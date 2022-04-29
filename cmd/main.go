package main

import (
	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()
	router.GET("/index", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "Hello mother fucker",
		})
	})

	router.Run("localhost:9000")
}
