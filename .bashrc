
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
