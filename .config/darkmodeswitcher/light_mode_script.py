import subprocess
from datetime import datetime
from dateutil import tz

now = datetime.now().astimezone(tz.tzlocal())

subprocess.run(["osascript", "-e", 'tell application "System Events" to tell appearance preferences to set dark mode to false'])
print("\n\tChanged to Light Mode", end="", flush=True)
