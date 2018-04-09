" Python with virtualenv support
py3 << EOF
import os
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activator = os.path.join(project_base_dir, 'bin/activate_this.py')  # Looted from virtualenv; should not require modification, since it's defined relatively
  with open(activator) as f:
    exec(f.read(), {'__file__': activator})
EOF
