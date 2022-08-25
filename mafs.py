import sys
from sympy import *
from math import e, tau, pi

def derivative(expr):
  x = Symbol("x")
  try: expr = expr.replace("^", "**")
  except: pass
  try: out = str(eval(expr).diff(x))
  except AttributeError: out = 0
  return print(str(out).replace("**", "^").replace("*", "\\*"))

def integral(expr):
  x = Symbol("x")
  try: expr = expr.replace("^", "**")
  except: pass
  out = str(integrate(eval(expr), x))
  return print(str(out).replace("**", "^").replace("*", "\\*") + " + C")

if sys.argv[1] == "d": derivative(sys.argv[2])
elif sys.argv[1] == "i": integral(sys.argv[2])
