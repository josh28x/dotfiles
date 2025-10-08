
#seeing importables 
python -c "import fastapi; print([x for x in dir(fastapi) if not x.startswith('_')])"
python -c "import requests; print([x for x in dir(requests) if not x.startswith('_')])"
