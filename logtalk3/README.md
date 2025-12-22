Logtalk is a declarative object-oriented logic programming language that extends and leverages the Prolog language with modern code encapsulation and code reuse mechanisms while also providing improved predicate semantics.

Implemented as a trans-compiler in highly portable, extensively tested, and well documented code, it can use most modern and standards compliant Prolog implementations as a backend compiler.

As a multi-paradigm language, it includes support for modules, prototypes, classes, protocols (interfaces), categories (components and hot patching), event-driven programming, and high-level multi-threading programming. Distributed under a commercial friendly license, it includes full documentation, portable libraries, portable developer tools, and a large number of programming examples to help get you started.

## Package Parameters

- `/DIR` - Installation directory (default is "C:\Program Files (x86)\Logtalk")

Example: `choco install logtalk --params "'/DIR=%ChocolateyInstall%\lib\'"`

- `/COMPONENTS="COMPONENT"`

Example: `choco install logtalk --params "'/COMPONENTS="base"` (doesn't require a user documents folder)

## Notes

- The backend Prolog compilers you intend to use must be installed before installing Logtalk.

- The installer can be run in system context for deployment via enterprise management tools.
