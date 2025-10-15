package analizadorlexico;

import static analizadorlexico.Tokens.*;
%%
%class ReglasLexicas
%type Tokens

%{
    public String lexema;
%}

LETRAS=[a-zA-Z_]+
DIGITOS=[0-9]+
ESPACIO=[ ,\t,\r,\n]+ 

%%

{ESPACIO} {/*Ignore*/}
"//".* {/*Ignore*/}

abstract {lexema=yytext(); return PalabraReservada;}
continue {lexema=yytext(); return PalabraReservada;}
for {lexema=yytext(); return PalabraReservada;}
new {lexema=yytext(); return PalabraReservada;}
switch {lexema=yytext(); return PalabraReservada;}

assert {lexema=yytext(); return PalabraReservada;}
default {lexema=yytext(); return PalabraReservada;}
goto {lexema=yytext(); return PalabraReservada;}
package {lexema=yytext(); return PalabraReservada;}
synchronized {lexema=yytext(); return PalabraReservada;}

boolean {lexema=yytext(); return PalabraReservada;}
do {lexema=yytext(); return PalabraReservada;}
if {lexema=yytext(); return PalabraReservada;}
private {lexema=yytext(); return PalabraReservada;}
this {lexema=yytext(); return PalabraReservada;}

break {lexema=yytext(); return PalabraReservada;}
double {lexema=yytext(); return PalabraReservada;}
implements {lexema=yytext(); return PalabraReservada;}
protected {lexema=yytext(); return PalabraReservada;}
throw {lexema=yytext(); return PalabraReservada;}

byte {lexema=yytext(); return PalabraReservada;}
else {lexema=yytext(); return PalabraReservada;}
import {lexema=yytext(); return PalabraReservada;}
public {lexema=yytext(); return PalabraReservada;}
thows {lexema=yytext(); return PalabraReservada;}

case {lexema=yytext(); return PalabraReservada;}
enum {lexema=yytext(); return PalabraReservada;}
instanceof {lexema=yytext(); return PalabraReservada;}
return {lexema=yytext(); return PalabraReservada;}
transient {lexema=yytext(); return PalabraReservada;}

catch {lexema=yytext(); return PalabraReservada;}
extends {lexema=yytext(); return PalabraReservada;}
int {lexema=yytext(); return PalabraReservada;}
short {lexema=yytext(); return PalabraReservada;}
try {lexema=yytext(); return PalabraReservada;}

char {lexema=yytext(); return PalabraReservada;}
final {lexema=yytext(); return PalabraReservada;}
interface {lexema=yytext(); return PalabraReservada;}
static {lexema=yytext(); return PalabraReservada;}
void {lexema=yytext(); return PalabraReservada;}

class {lexema=yytext(); return PalabraReservada;}
finally {lexema=yytext(); return PalabraReservada;}
long {lexema=yytext(); return PalabraReservada;}
strictfp {lexema=yytext(); return PalabraReservada;}
volatile {lexema=yytext(); return PalabraReservada;}

const {lexema=yytext(); return PalabraReservada;}
float {lexema=yytext(); return PalabraReservada;}
native {lexema=yytext(); return PalabraReservada;}
super {lexema=yytext(); return PalabraReservada;}
while {lexema=yytext(); return PalabraReservada;}



"(" {lexema=yytext(); return ParentesisAbierto;}
")" {lexema=yytext(); return ParentesisCerrado;}
"+" {lexema=yytext(); return Suma;}
"-" {lexema=yytext(); return Resta;}
"*" {lexema=yytext(); return Multiplicacion;}
"/" {lexema=yytext(); return Division;}
"%" {lexema=yytext(); return Modulo;}

"=" {lexema=yytext(); return Asignacion;}
"+=" {lexema=yytext(); return SumaAsignacion;}
"-=" {lexema=yytext(); return RestaAsignacion;}
"*=" {lexema=yytext(); return MultiplicacionAsignacion;}
"/=" {lexema=yytext(); return DivisionAsignacion;}
"%=" {lexema=yytext(); return ModuloAsignacion;}

"++" {lexema=yytext(); return Incremento;}
"--" {lexema=yytext(); return Decremento;}
"!" {lexema=yytext(); return NegacionLogica;}

"==" {lexema=yytext(); return Igual;}
"!=" {lexema=yytext(); return Diferente;}
">" {lexema=yytext(); return Mayor;}
"<" {lexema=yytext(); return Menor;}
">=" {lexema=yytext(); return MayorIgual;}
"<=" {lexema=yytext(); return MenorIgual;}

"&&" {lexema=yytext(); return ANDLogico;}
"||" {lexema=yytext(); return ORLogico;}

"&" {lexema=yytext(); return ANDBit;}
"|" {lexema=yytext(); return ORBit;}
"^" {lexema=yytext(); return XORBit;}
"~" {lexema=yytext(); return NOTBit;}
"<<" {lexema=yytext(); return DesplazIzq;}
">>" {lexema=yytext(); return DesplazDer;}
">>>" {lexema=yytext(); return DesplazDerSinSigno;}

"?" {lexema=yytext(); return OperadorTernario;}
":" {lexema=yytext(); return DosPuntos;}

"instanceof" {lexema=yytext(); return InstanciaDe;}

";" {lexema=yytext(); return PuntoyComa;}
"[" {lexema=yytext(); return CorcheteAbierto;}
"]" {lexema=yytext(); return CorcheteCerrado;}
"{" {lexema=yytext(); return LlaveAbierta;}
"}" {lexema=yytext(); return LlaveCerrada;}
"." {lexema=yytext(); return Punto;}

{LETRAS}({LETRAS}|{DIGITOS})* {lexema=yytext(); return Variable;}
("(-"{DIGITOS}+")")|{DIGITOS}+ {lexema=yytext(); return Numero;}

 . {lexema=yytext(); return ERROR;}
