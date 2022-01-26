package pb

var (
	VERSION = "latest"
	GITHASH = "a3342d5"
	BUILT   = "2022-01-26T14:06:22+0800"
)

func VersionInfoMap() map[string]interface{} {
	return map[string]interface{}{
		"version": VERSION + "-" + GITHASH,
		"built":   BUILT,
	}
}
