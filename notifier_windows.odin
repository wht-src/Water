package main

import "core:sys/windows"

trigger_notification :: proc() {
	windows.MessageBoxW(
		nil,
		windows.L("drink water"),
		windows.L("water reminder"),
		windows.MB_OK | windows.MB_ICONINFORMATION | windows.MB_SYSTEMMODAL,
	)
}
