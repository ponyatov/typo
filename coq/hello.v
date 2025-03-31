(* hello *)

(* every file starts with this: *)
Require Import Bool Arith List.
(* Require Import Cpdt.CpdtTactics. *)
Set Implicit Arguments.
Set Asymmetric Patterns.

Inductive bool : Type :=
| true
| false.

(* -bool *)
Definition negb (b:bool) : bool :=
  match b with
  | true => false
  | false => true
  end.

(* interpret nat as bool *)
Definition to_bool (x: nat) :=
 match x with
 | 0 => false
 | _ => true
 end.

(* binary operator: +|* *)
Inductive binop : Set := Plus | Times.

Inductive exp : Set :=
| Const : nat -> exp
| Binop : binop -> exp -> exp -> exp.
