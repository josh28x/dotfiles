
#seeing importables 
python -c "import fastapi; print([x for x in dir(fastapi) if not x.startswith('_')])"
python -c "import requests; print([x for x in dir(requests) if not x.startswith('_')])"

python -c "
import fastapi
for name in [x for x in dir(fastapi) if not x.startswith('_')]:
    obj = getattr(fastapi, name)
    obj_type = type(obj).__name__
    if obj_type in ['str', 'int', 'float', 'bool', 'dict', 'list']:
        print(f'{name}: {obj_type} = {obj}')
    else:
        print(f'{name}: {obj_type}')
"


PYTHONUNBUFFERED=1 - Forces Python programs to output immediately
stdbuf -o0 -e0 - Disables buffering for ANY program (stdout and stderr)
2>&1 - Combines stderr and stdout into one stream
tee debug_output.txt - Shows output AND saves to file simultaneously


PYTHONUNBUFFERED=1 stdbuf -o0 -e0 ANY_COMMAND_HERE 2>&1 | tee debug_output.txt

e.g, command is bash.rc -> PYTHONUNBUFFERED=1 stdbuf -o0 -e0 bash run.sh 2>&1 | tee debug_output.txt
