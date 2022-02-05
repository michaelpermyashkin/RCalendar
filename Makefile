
PLATFORM = Linux

PYTHON = bin/python3
PIP = bin/pip3
SHELL := /bin/bash
SOURCE = source bin/activate

all: database

run:
	$(SOURCE) && DJANGO_SETTINGS_MODULE=RCalendar.settings $(PYTHON) -m django runserver

database: clean
	$(SOURCE) && DJANGO_SETTINGS_MODULE=RCalendar.settings $(PYTHON) -m django migrate --run-syncdb

clean:
	rm -fr db.sqlite3

requirements:
	$(PIP) freeze > requirements.txt
