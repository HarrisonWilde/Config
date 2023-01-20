import geocoder
import subprocess
from astral import LocationInfo
from astral.sun import sun
from crontab import CronTab
from datetime import datetime, timedelta
from dateutil import tz


userpath = "/Users/harrisonwilde"
pythonpath = f"{userpath}/miniforge3/bin/python"
path = f"{userpath}/.config/darkmodeswitcher"

# Get current time
now = datetime.now().astimezone(tz.tzlocal())
output = f"[{now}]"

# Get location based on IP address
g = geocoder.ip('me')

# Get latitude and longitude
latitude, longitude = g.latlng

# Create Sun object with latitude and longitude
city = LocationInfo(latitude = latitude, longitude = longitude)

s = sun(city.observer, date=now, tzinfo=tz.tzlocal())

# Add one hour to sunrise and subtract one hour from sunset
sunrise_plus_one_hour = s["sunrise"] + timedelta(hours=1)
sunset_minus_one_hour = s["sunset"] - timedelta(hours=1)

# Record the sun times
output += f"\n\tSunrise: {s['sunrise']}\n\tSunset: {s['sunset']}"


# Check if current time is between sunrise + 1 hour and sunset - 1 hour
if now > sunrise_plus_one_hour and now < sunset_minus_one_hour:
    # Change to light mode
    subprocess.run(["osascript", "-e", 'tell application "System Events" to tell appearance preferences to set dark mode to false'])
else:        
    # Change to dark mode
    subprocess.run(["osascript", "-e", 'tell application "System Events" to tell appearance preferences to set dark mode to true'])


cron = CronTab(user=True)
for job in cron:
    if job.comment == 'switch_mode':
        cron.remove(job)
        cron.write()


# Use current time to determine which cron jobs to setup for the day
if now < sunset_minus_one_hour:
    output += f"\n\tScheduling CRON job for switching to Dark Mode at {sunset_minus_one_hour}"
    job = cron.new(
        command = f"{pythonpath} {path}/dark_mode_script.py >> {path}/out.log 2>&1",
        comment = "switch_mode"
    )
    job.setall(f"{sunset_minus_one_hour.minute} {sunset_minus_one_hour.hour} {now.day} {now.month} *")
    cron.write()


if now < sunrise_plus_one_hour:
    output += f"\n\tScheduling CRON job for switching to Light Mode at {sunrise_plus_one_hour}"
    job = cron.new(
        command = f"{pythonpath} {path}/light_mode_script.py >> {path}/out.log 2>&1",
        comment = "switch_mode"
    )
    job.setall(f"{sunrise_plus_one_hour.minute} {sunrise_plus_one_hour.hour} {now.day} {now.month} *")
    cron.write()


with open(f"{path}/out.log", "r") as f:
    lines = f.readlines()[-8:]
    if f"[{now.date()}" in ''.join(lines):
        if "Re-run" in ''.join(lines[-1]):
            print(f", {now}", end="", flush=True)
        else:
            print(f"\n\tRe-run at {now}", end="", flush=True)
    else:
        if len(lines) > 1:
            output = "\n" + output
        print(output, end="", flush=True)
