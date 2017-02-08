(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.4' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[      8295,        222]
NotebookOptionsPosition[      8673,        213]
NotebookOutlinePosition[      9190,        233]
CellTagsIndexPosition[      9147,        230]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell["\<\
Code for interactive example of Lebesgue integral. Notice the \
\[OpenCurlyDoubleQuote]slices\[CloseCurlyDoubleQuote] are taken horizontally. \
This is in contrast with Riemann sums which are slices horizontally. To \
change the function being integrated, edit fun[x_]. To play as a movie, click \
the plus button next to the slider. 
Enjoy!
Erik Palmer \
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"fun", " ", "[", "x_", "]"}], ":=", 
    RowBox[{
     RowBox[{"1.2", 
      RowBox[{"Sin", "[", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"x", "+", "1"}], ")"}], "2"], "]"}]}], "-", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"x", "-", "2"}], ")"}], "2"], "+", "3.5"}]}], ";"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
     RowBox[{"fun", "[", "x_", "]"}], ":=", " ", 
     RowBox[{"funb", "[", "x", "]"}]}], ";"}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"fun", "[", "x", "]"}], ",", 
       RowBox[{"Piecewise", "[", "Lst", "]"}], ",", "HrzLines"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", "0", ",", "10"}], "}"}]}], "]"}], "*)"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"maxe", " ", "=", " ", "a"}], ";", "\[IndentingNewLine]", 
    RowBox[{"linespace", " ", "=", " ", 
     FractionBox["1", 
      SuperscriptBox["2", "maxe"]]}], ";", "\[IndentingNewLine]", 
    "\[IndentingNewLine]", 
    RowBox[{"Lst", " ", ":=", " ", 
     RowBox[{"Table", "[", " ", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"i", ",", 
         RowBox[{"i", "<", " ", 
          RowBox[{"fun", "[", "x", "]"}], "<", 
          RowBox[{"(", 
           RowBox[{"i", "+", "linespace"}], ")"}]}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"i", ",", "0", ",", "maxe", ",", "linespace"}], "}"}]}], 
      "]"}]}], ";", "\[IndentingNewLine]", 
    RowBox[{"HrzLines", " ", ":=", " ", 
     RowBox[{"Table", "[", 
      RowBox[{"i", ",", 
       RowBox[{"{", 
        RowBox[{"i", ",", "0", ",", "maxe", ",", "linespace"}], "}"}]}], 
      "]"}]}], ";", "\[IndentingNewLine]", 
    RowBox[{"Lst", " ", "=", " ", 
     RowBox[{"Insert", "[", 
      RowBox[{"Lst", ",", 
       RowBox[{"{", 
        RowBox[{"maxe", ",", " ", 
         RowBox[{
          RowBox[{"fun", "[", "x", "]"}], ">", "maxe"}]}], "}"}], ",", "1"}], 
      "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
    RowBox[{"Graphrange", " ", "=", " ", "4"}], ";", "\[IndentingNewLine]", 
    "\[IndentingNewLine]", 
    RowBox[{"Show", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{"fun", "[", "x", "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"x", ",", "0", ",", "Graphrange"}], "}"}], ",", " ", 
        RowBox[{"PlotStyle", " ", "\[Rule]", " ", "Thick"}], " ", ",", " ", 
        RowBox[{"PlotRange", "\[Rule]", " ", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", "Graphrange"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "6"}], "}"}]}], "}"}]}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{"{", "HrzLines", "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"x", ",", "0", ",", "Graphrange"}], "}"}], ",", " ", 
        RowBox[{"PlotStyle", " ", "\[Rule]", " ", 
         RowBox[{"Directive", "[", 
          RowBox[{
           RowBox[{"Opacity", "[", "0.2", "]"}], ",", "Black"}], "]"}]}]}], 
       "]"}], ",", 
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{"Piecewise", "[", "Lst", "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"x", ",", "0", ",", "Graphrange"}], "}"}], ",", 
        RowBox[{"FillingStyle", "\[Rule]", 
         RowBox[{"Directive", "[", 
          RowBox[{
           RowBox[{"Opacity", "[", "0.2", "]"}], ",", "Red"}], "]"}]}], ",", 
        " ", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Thick", ",", "Red"}], "}"}]}], ",", 
        RowBox[{"MaxRecursion", "\[Rule]", "5"}]}], "]"}]}], 
     "\[IndentingNewLine]", "\t", "]"}]}], "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{"a", ",", "0", ",", "5", ",", "0.2"}], "}"}]}], "]"}]}], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 5., Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`a$$], 0, 5, 0.2}}, Typeset`size$$ = {
    360., {116., 122.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`a$341757$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`a$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`a$$, $CellContext`a$341757$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> ($CellContext`maxe = $CellContext`a$$; $CellContext`linespace = 
        1/2^$CellContext`maxe; $CellContext`Lst := 
        Table[{$CellContext`i, $CellContext`i < \
$CellContext`fun[$CellContext`x] < $CellContext`i + $CellContext`linespace}, \
{$CellContext`i, 
           0, $CellContext`maxe, $CellContext`linespace}]; \
$CellContext`HrzLines := 
        Table[$CellContext`i, {$CellContext`i, 
           0, $CellContext`maxe, $CellContext`linespace}]; $CellContext`Lst = 
        Insert[$CellContext`Lst, {$CellContext`maxe, \
$CellContext`fun[$CellContext`x] > $CellContext`maxe}, 
          1]; $CellContext`Graphrange = 4; Show[
         Plot[
          $CellContext`fun[$CellContext`x], {$CellContext`x, 
           0, $CellContext`Graphrange}, PlotStyle -> Thick, 
          PlotRange -> {{0, $CellContext`Graphrange}, {0, 6}}], 
         Plot[{$CellContext`HrzLines}, {$CellContext`x, 
           0, $CellContext`Graphrange}, PlotStyle -> Directive[
            Opacity[0.2], Black]], 
         Plot[
          
          Piecewise[$CellContext`Lst], {$CellContext`x, 
           0, $CellContext`Graphrange}, FillingStyle -> Directive[
            Opacity[0.2], Red], PlotStyle -> {Thick, Red}, MaxRecursion -> 
          5]]), "Specifications" :> {{$CellContext`a$$, 0, 5, 0.2}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{411., {162., 169.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]]
},
WindowSize->{1018, 805},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
PrivateNotebookOptions->{"VersionedStylesheet"->{"Default.nb"[8.] -> False}},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.4 for Microsoft Windows (64-bit) (February 25, 2016)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1464, 33, 378, 8, 87, "Text"],
Cell[CellGroupData[{
Cell[1867, 45, 4051, 108, 493, "Input"],
Cell[5921, 155, 2736, 55, 348, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 0v0pNvlZ4dP2SCKXnAcSRkpe *)
