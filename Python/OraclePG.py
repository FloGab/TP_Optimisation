#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Fri Apr  5 10:11:14 2019

@author: lola
"""
import numpy as np

# Donnees du probleme
from Structures_N import *


def OraclePG(qc,ind):
    if ind==2:
        return F(qc)
    elif ind==3:
        return G(qc)
    elif ind ==4:
        return F(qc),G(qc)
    
def F(qc):
    f = 1/3*(np.)