# Errors after putting BEAST2 into a Java project

[This tutorial](../CreateNewTreePrior/CreateNewTreePrior.md), section `Put BEAST2 into a Java project` shows how to put
BEAST2 into a Java project. This does not always work out well.

Ideally, you'd see this:

![Eclipse with BEAST2 in the package explorer](EclipsePackageExplorerWithBeast2.png)

This tutorial shows how to deal with this:

![Many errors: ActionOnExit cannot be resolved](ActionOnExitCannotBeResolved.png)

 * If you just want to fix the error, go to the `Fix the error` section. 
 * If you are interested in how to find out the problem, visit the `How to find out` section

## Fix the error

Do `Project | Properties`, then `Java compiler`.

![Java compiler at 1.4](JavaCompiler.png)

Set it to 1.6:

![Java compiler at 1.4](JavaCompilerFixed.png)

Click `Apply`. The project will request a rebuild, click `Yes`.

![Rebuild request](Rebuild.png)

Click `Apply` again. All errors are gone now.

![Fixed](Fixed.png)


## How to find out

We zoom in on the first error: `beast.core.Logger.LogFileMode` cannot be resolved.

![LogFileMode cannot be resolved](LogFileMode.png)

We visit the first error in `beast.core.Logger.LogFileMode`. Here we see `beast.core.Input.Validate` cannot be resolved.

![Validate cannot be resolved](Validate.png)

We visit the first error in `beast.core.Input.Validate`. Here we see there is a syntax error and that we need JRE 1.5 or higher.

![Syntax error](SyntaxError.png)



