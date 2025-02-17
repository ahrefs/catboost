PY3_LIBRARY()



VERSION(1.0.0)

LICENSE(MIT)

NO_LINT()

PY_SRCS(
    TOP_LEVEL
    pluggy/__init__.py
    pluggy/_callers.py
    pluggy/_hooks.py
    pluggy/_manager.py
    pluggy/_result.py
    pluggy/_tracing.py
    pluggy/_version.py
)

RESOURCE_FILES(
    PREFIX contrib/python/pluggy/py3/
    .dist-info/METADATA
    .dist-info/top_level.txt
)

END()

RECURSE_FOR_TESTS(
    tests
)
