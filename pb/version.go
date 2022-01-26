package pb

var (
	VERSION = "latest"
	GITHASH = "b2049e5"
	BUILT   = "2022-01-26T11:15:34+0800"
)

func VersionInfoMap() map[string]interface{} {
	return map[string]interface{}{
		"version": VERSION + "-" + GITHASH,
		"built":   BUILT,
	}
}
