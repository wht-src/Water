package main

import "core:os"

trigger_notification :: proc() {
	p, err := os.process_start({command = {"notify-send", "water reminder", "drink water"}})

	if err == nil {
		_, _ = os.process_wait(p)
	}
}
