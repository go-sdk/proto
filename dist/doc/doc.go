package doc

import (
	_ "embed"
)

//go:embed apidocs.swagger.json
var SwaggerJSON string
