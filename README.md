Ideanet
================
Dan McLinden - Idea Networks, LLC
2022-05-26

### About concept mapping

Concept mapping a method for crowd-sourcing the understanding of and/or
the design of interventions of complex challenges. Unlike other group
processes which rely on consensus; this process elicits the many and
diverse viewpoints on a complex issue. The methodology relies on member
of a community to work individually to:

-   Generate ideas in response to a specific challenge

-   Organize all of the collected ideas into groups of similar ideas
    that they \[participants\] individually create and name

-   Optionally, assess (e.g., rate) ideas on one or more measure of
    value (e.g., importance, feasibility).

Mathematical algorithms integrate the individual contributions from
multiple people into maps that show the detailed ideas, themes and
priorities; the collective wisdom of the group. While visualization is
driven by sophisticated algorithms, the graphics are interpretable
without knowledge of the underlying mathematics. As such, community
members that provided individual input can work together to interpret
their group’s results and plan actions.

### About the Ideanet application

Ideanet is a software application to support concept mapping. The
application provides a menu-driven interface for data management,
computation, and visualization for a concept mapping project.

The program distributed here is shared in the hope that this will be
useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. This work is
licensed under the GNU General Public License v3.0, a link to the
details of the license can be found at:
[License](https://www.gnu.org/licenses/gpl-3.0.en.html)

You are free to use this program, share with others and make and share
changes to the code. If you do make changes, the software license
requires that the code and any ensuing modifications be made publicly
available, allowing the entire community to benefit.

Send suggestions, questions, improvements, etc. to:
<info@ideanetworks.io>

This is a development version, improvements to the code and additional
functions are in the process of being created and tested. The code has
been developed and tested in a Windows PC environment. This application
has **not** been tested in a macOS environment.

## How to get started with Ideanet

### 1. Download supporting software

This code has been developed ad tested using version 4.2 of R. I use
RStudio (explained below) when working with R. At present the newest
version of R is causing problems with RStudio. I recommend downloading
the “patched” version of R if you use RStudio now or may do so in the
future. R-4..2 Patched can be downloaded at the URL below. I recommend
accepting all of the defaults.

[Download & Install R 4.2.0
patched](https://cran.r-project.org/bin/windows/base/rpatched.html)

Rstudio desktop is recommended for running R code, a free version can be
accessed here:
[Rstudio](https://www.rstudio.com/products/rstudio/download/ "Download free desktop version")

### 2. Install Ideanet application

Run the following code to install the application. This code only needs
to be run once to install the application. Run this code again, in the
future, as needed, to install newer versions of the Ideanet application.
While I prefer using RStudio for editing and running code, launching
Base R will open an interface that can be used to install and run the
software.

#### RStudio install

-   If you downloaded the file “*ideanet_install.R*” then you can
    double-click on that file to open Rstudio with the code in the
    source window.

-   If RStudio is already open then, on the menu click on *File, Open
    file,* and navigate to the file and click to open.

-   If you do not have the the file “*ideanet_install.R*” then copy and
    paste the code below into RStudio *source* window.

-   Once the code is visible in the RStudio source window, click on
    *Ctrl+Alt+R* to run the code or, using the RStudio menu, click on
    *Code*, *Run region*, *Run all*.

#### Base R install

-   If you downloaded the file “*ideanet_install.R*” you can
    double-click on that file to open R or if R is already open then, on
    the menu, click on *open script* and navigate to the file.

-   If you do not have the file “*ideanet_install.R*” then from the
    menu, click on *File, New script* and then copy and paste the code
    below into blank editor window.

-   Once the code is available then, on the menu click on *Edit*, *Run
    All*.

``` r
options(repos=structure(c(CRAN="http://cran.us.r-project.org")))#cran mirror

if (!require(rlang)){
  install.packages("rlang")
  suppressPackageStartupMessages(library(rlang))
}
if (!require(pacman)){
  install.packages("pacman")
  suppressPackageStartupMessages(library(pacman))
}
if (!require(devtools)){
  install.packages("devtools")
  suppressPackageStartupMessages(library(devtools))
}

pacman::p_unlock() # remove 00lock if present

remotes::install_github("ideanetwork/ideanet", force = TRUE) 
```

### 3. Run the Ideanet application

If you have a copy of “*run_ideanet.R”* on your computer then follow the
same procedure as described above for installing Ideanet except, in this
case use, *run_ideanet.R*. If you do not have the the
file”run_ideanet.R” then copy and paste the code below following the
same procedures described above.

Once executed the code will open the program. Sometimes the Ideanet app
will open behind other windows applications. Look on your task bar for
*feather icon* or use the hot keys (Alt+Tab) to tab through open
applications to find Ideanet.

Note that once the Ideanet application is open, R and RStudio will not
accept input because the Ideanet application has control of R
environment. To stop using the app and regain control of R or RStudio
click *Quit, Close app*.

``` r
options(repos=structure(c(CRAN="http://cran.us.r-project.org")))#cran mirror 

if (!require(pacman)){
  install.packages("pacman")
  suppressPackageStartupMessages(library(pacman))
}
pacman::p_unlock() # remove 00lock if present

Ideanet::ideanet() # open the application.
```

### 4. Use the Ideanet application

The following is a brief description of the menu options. Additional
details can be found in application.

##### Data entry

Use the menu option to create a blank Excel template for data entry. The
Ideanet software is structured to read data from this template.

-   Sorting data is required. Depending on how the sorting data was
    collected the data is added to either the racked worksheet if
    manually entered or stacked worksheet if downloaded from an online
    sorting program.

-   The text for ideas is required and is entered in the ideas
    worksheet.

-   If rating data is collected, the values worksheet accommodates up to
    three demographic variables and up to two measures.

##### Review & define data

Sorting data can be checked for errors such as missing cards and data
entry errors so that these may be corrected. Rating data can be defined
by entering details about demographics and the measures.

##### Compute maps

Multidimensional scaling (MDS) computes the location of points in two
dimensions and computes a stress value for the solution. Label analysis
computes the location for each label from each participant on the map.
The map of items is partitioned with hierarchical cluster analysis to
produce multiple cluster solutions. The app will create three output
files that are useful for choosing an optimal cluster solution for
further analysis:

-   An Excel workbook with cluster solutions and cluster labels

-   A slide deck illustrating cluster membership and labels for each
    cluster solution

-   A slide deck illustrating cluster membership in a dendrogram.

##### Create cluster report

Once a cluster solution is selected, this option creates a slide deck
that is a detailed report for that cluster solution.

##### Analyze values

Users may choose to subset data analysis by demographic variables and/or
measure and saves results as a PowerPoint file.

-   *Pattern Analysis* creates a cluster rating map to illustrate
    relative value among the clusters with a third (i.e., height)
    dimension.

-   *Pattern matching* compares patterns in values between measures
    (e.g., importance & feasibility) or between demographic groups
    (e.g., management & staff). Two types of graphics are created for
    pattern matching:

    -   A ladder graph comparing values at the cluster level

    -   A bivariate plot comparing the item means within each cluster.

##### Assess cluster solution

Once a cluster solution is chosen, in some cases, a review of the map
may evoke assertions that a given point may be better placed in a nearby
cluster instead of the cluster where the point is currently located. The
analysis done here will validate cluster membership or indicate if the
map may be improved by placing an item in a neighboring cluster.
