package pb

var (
	VERSION = "latest"
	GITHASH = "f29246c"
	BUILT   = "2022-01-26T15:28:47+0800"
)

func VersionInfoMap() map[string]interface{} {
	return map[string]interface{}{
		"version": VERSION + "-" + GITHASH,
		"built":   BUILT,
	}
}
