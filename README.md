#Swiss Tournament

The Swiss Tournament project, written using Python and PostgreSQL, tracks players and matches in a swiss-pairing style game tournament.

##About
The project contains 3 files:

 - `tournament.sql` as the database schema
 - `tournament.py` as a Python library of functions to add, delete, and query data in the database
 - `tournament_test.py` as a library of funtions to test the implementation of `tournament.py`

##Using
1. Download all three files into a single working directory.
2. To run the application:
    - Open a command-line prompt
    - Navigate to the working directory
    - Type `psql -f tournament.sql` to create the database schema
    - Type `python tournament_test.py` to execute the tests module


> Written with [StackEdit](https://stackedit.io/).