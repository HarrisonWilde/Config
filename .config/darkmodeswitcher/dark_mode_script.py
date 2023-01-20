import subprocess
from datetime import datetime
from dateutil import tz

now = datetime.now().astimezone(tz.tzlocal())

subprocess.run(["osascript", "-e", 'tell application "System Events" to tell appearance preferences to set dark mode to true'])
print("\n\tChanged to Dark Mode", end="", flush=True)