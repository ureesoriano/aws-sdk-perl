aws-sdk-perl
============

Attempt to build a complete AWS SDK in Perl

This project is attempting to build an entire AWS SDK from the information
that is stored in other AWS SDKs. Other AWS SDKs have a "data-driven" approach,
meaning that the definitions for the method calls are stored in a data structure
describing input and output parameters.

The project is actually generating all of it's classes from botocore

Organization
============

build-lib: Contains classes that convert a datastructure into class definitions

auto-lib: Contains the auto-generated classes

lib: Contains roles and classes that the auto-generated classes use to call the API,
sign requests, handle responses, etc.

Generating API
============

Note: This step is not necessary if you want to try out the SDK. We commit in "auto-lib"
the classes generated by pulling other sdks and generating the classes from them. If you're
not developing the SDK, go directly to the "Trying it out" step :)

Execute command make pull-other-sdks This will do a git pull of some official AWS sdks
that are data-driven, and used to generate the SDK.

To generate the API for a given API call: ./gen_classes.pl botocore/botocore/data/aws/API.json.
This will generate file(s) in auto-lib.

To generate all files:

make gen-classes


Trying it out
============

Each class for each API can be constructed in the following way:

Create a Perl script (myscript.pl)

```
#!/usr/bin/env perl

use Aws::IAM;
use Data::Printer;

my $iam = Aws::IAM->new(
  region => 'eu-west-1',
);

my $summary = $iam->GetAccountSummary;
p $summary->SummaryMap;
```

ACCESS_KEY and SECRET_KEY are transmitted via ENVIRONMENT variables for the moment.
This behaviour will be changed. You also have to tell Perl where to get find the API
classes (with -I option).

```
export AWS_ACCESS_KEY=....
export AWS_SECRET_KEY=....

perl -I lib -I auto-lib myscript.pl
```

Thanks
================
Luis Alberto Gimenez (@agimenez) for the git-fu cleaning up the "pull other sdks" code
Srinvas (@kidambisrinivas) for testing, bug reporting and fixing

