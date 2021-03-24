# Spinny

## Getting started

To get started with the app, first clone the repo and `cd` into the directory:

```bash
$git clone git@github.com:alexiscrack3/spinny.git
$cd spinny
```

Then install the needed packages (while skipping any Ruby gems needed only in production):

```bash
$bundle install --without production
```

Next, migrate the database:

```bash
$rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```bash
$rails test
```

If the test suite passes, you’ll be ready to seed the database with sample users and run the app in a local server:

```bash
$rails db:seed
$rails server
```
