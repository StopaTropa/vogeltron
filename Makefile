.PHONY: test install

install: venv
	venv/bin/pip install -r requirements.txt

venv:
	virtualenv --python=python3.3 venv

test:
	venv/bin/flake8 tests reddit.py baseball.py bot.py
	venv/bin/nosetests tests
