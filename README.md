# ADI Data Consolidation Demonstration

This package contains demonstrations of the ARM Data Integrator's (ADI) data consolidation capability.  It is currently only meant to be run on the ARM Data Center (ADC).  A system account can be requested [here](https://www.db.arm.gov/SARS2/).  To manage your ARM LDAP account, go [here](https://www.arm.gov/people/profile/) (required to create entries in the [PCM](https://engineering.arm.gov/pcm) but is not required for using this demo).

## Step 1: Download

Clone this Github repository from an ADC machine (e.g., research.dmf.arm.gov):

```
git clone https://github.com/ARM-DOE/adi-demo.git adi-demo
```

## Step 2: Setup

ADI expects a `~/.db_connect` file with database configuration.  The one in this package provides a read-only connection to the same database that is used by the [PCM](https://engineering.arm.gov/pcm).

```
cp adi-demo/db_connect ~/.db_connect
```

## Step 3: Run Examples

Some example processes have been pre-configured using the [PCM](https://engineering.arm.gov/pcm).

Follow the steps below to work through the provided examples:

1. `cd adi-demo` (moves to package root; following commands are relative to this directory)

1. `scripts/setup demo1` (creates demo directory and provides script for setting up environment)

1. `source demo1/env.*` (sets up environment)

1. `examples/demo1.sh` (runs ADI and then creates plots)

1. Repeat previous three steps above for each demo

1. Use your web browser to see plots: http://dev.arm.gov/~user/adi-demo/demo1 (where `user` is your account name)

## Questions?

For help with ADI, contact [Krista Gaustad](mailto:krista.gaustad@pnnl.gov), [Chitra Sivaraman](mailto:chitra.sivaraman@pnnl.gov), or [Brian Ermold](mailto:brian.ermold@pnnl.gov).