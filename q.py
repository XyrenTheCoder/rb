import sys, os, sympy, string
import matplotlib.pyplot as plt
import numpy as np
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

# def graph(expr):
#   expr = expr.replace("^", "**")
#   h = dir(sympy)
#   obj = ["+", "-", "/", "*", "(", ")", ".", ",", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "=", "cum"]
#   for i in obj: c = c.replace(i, " ")
#   for i in c.split():
#     if i not in h: raise BadArgument
  
#   xpoints = list(np.arrange(-20, 20, 0.1))
#   ypoints = []
#   for i in xpoints:
#     ypoints.append(eval(expr.replace("x", str(i))))
#   plt.axhline(color="black")
#   plt.plot(xpoints, ypoints, "c", label=f"y={expr.replace("**", "^")}")
#   try: os.remove("graph.png")
#   except FileNotFoundError: pass
#   plt.savefig("graph.png")
#   plt.close()

def encode(text):
    arr = []
    for i in text:
        if i not in list(string.letters + string.digits): return f"Invalid character at position {text.index(i)}"
        if i == " ": arr.append("*")
        elif i.isupper(): arr.append(f"{(int(hex(ord(i)), 16) - int('0x40', 16))*'+'}@")
        elif i.islower(): arr.append(f"{(int(hex(ord(i)), 16) - int('0x60', 16))*'+'}#")
        elif i.isdigit:
            var = "+"*int(i) + "&!"
            arr.append(var)
    arr.append(".;")
    return print(''.join(arr))

def decode(text):
    value = 0
    arr = []
    out = str()
    for i in text:
        if i == "+": value += 1
        elif i == "-": value -= 1
        elif i == ".": out += ''.join(arr)
        elif i == "#":
            arr.append(chr(0x60+value))
            value = 0
        elif i == "@":
            arr.append(chr(0x40+value))
            value = 0
        elif i == ";": break
        elif i == "*": arr.append(" ")
        elif i == "!": value = 0
        elif i == "&": arr.append(str(value))
    return print(''.join(arr))
  
if sys.argv[1] == "d": derivative(sys.argv[2])
elif sys.argv[1] == "i": integral(sys.argv[2])
elif sys.argv[1] == "g": graph(sys.argv[2])
elif sys.argv[1] == "e": encode(sys.argv[2])
elif sys.argv[1] == "de": decode(sys.argv[2]