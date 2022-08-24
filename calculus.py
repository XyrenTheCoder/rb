from sympy import *
from math import e, tau, pi

def derivative(expr):
  x = Symbol("x")
  try: expr = expr.replace("^", "**")
  except: pass
  try: out = str(eval(expr).diff(x))
  except AttributeError: out = 0
  return str(out).replace("**", "^")
