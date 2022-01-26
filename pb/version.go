package pb

var (
	VERSION = "v0.0.0-dev"
	BUILT   = "2022-01-26T15:41:10+0800"
)

func VersionInfoMap() map[string]interface{} {
	return map[string]interface{}{
		"version": VERSION,
		"built":   BUILT,
	}
}
