package pb

var (
	VERSION = "v0.0.1"
	BUILT   = "2022-01-26T08:11:45+0000"
)

func VersionInfoMap() map[string]interface{} {
	return map[string]interface{}{
		"version": VERSION,
		"built":   BUILT,
	}
}
