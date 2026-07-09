package main

import "core:fmt"
import "core:time"

main :: proc() {
	fmt.println("started")
	fmt.println("monitoring clock... running every :00 and :30")

	last_notified_minute := -1

	for {
		current_time := time.now()

		_, minute, _ := time.clock_from_time(current_time)

		if (minute == 0 || minute == 30) && minute != last_notified_minute {
			trigger_notification()
			last_notified_minute = minute
		}

		time.sleep(10 * time.Second)
	}
}
