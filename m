Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA0A182EC3
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 12:15:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E30466E150;
	Thu, 12 Mar 2020 11:15:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 787256E150
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 11:15:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 04:15:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,544,1574150400"; d="scan'208";a="289685673"
Received: from unknown (HELO delly.ger.corp.intel.com) ([10.252.53.213])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Mar 2020 04:15:48 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Mar 2020 13:15:41 +0200
Message-Id: <20200312111542.2418545-2-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200312111542.2418545-1-lionel.g.landwerlin@intel.com>
References: <20200312111542.2418545-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 2/3] lib/i915/perf: break generated
 code in separate files
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Initially all the generated code was per generation. Eventually we
grouped it into a single file to reuse as much as possible equation
code (this reduce binary size by a factor). So many equations are just
the same from generation to generation.

But this generated file is 200k lines long...

This change puts all the equations into a single file, so that we
reuse as much code as possible, and then breaks down the metric sets &
register configurations into per generation files.

v2: Split registers away from the metric set descriptions

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 lib/i915/perf-configs/codegen.py              | 320 ++++++++
 lib/i915/perf-configs/perf-codegen.py         | 716 ------------------
 .../perf-configs/perf-equations-codegen.py    | 289 +++++++
 .../perf-configs/perf-metricset-codegen.py    | 238 ++++++
 .../perf-configs/perf-registers-codegen.py    | 159 ++++
 lib/i915/perf.c                               |  18 +-
 lib/meson.build                               |  33 +-
 7 files changed, 1053 insertions(+), 720 deletions(-)
 delete mode 100755 lib/i915/perf-configs/perf-codegen.py
 create mode 100644 lib/i915/perf-configs/perf-equations-codegen.py
 create mode 100644 lib/i915/perf-configs/perf-metricset-codegen.py
 create mode 100644 lib/i915/perf-configs/perf-registers-codegen.py

diff --git a/lib/i915/perf-configs/codegen.py b/lib/i915/perf-configs/codegen.py
index 0802547a..88981d73 100644
--- a/lib/i915/perf-configs/codegen.py
+++ b/lib/i915/perf-configs/codegen.py
@@ -1,3 +1,5 @@
+import xml.etree.cElementTree as et
+
 class Codegen:
 
     _file = None
@@ -31,3 +33,321 @@ class Codegen:
         self._indent = self._indent + n
     def outdent(self, n):
         self._indent = self._indent - n
+
+
+class Counter:
+    def __init__(self, set, xml):
+        self.xml = xml
+        self.set = set
+        self.read_hash = None
+        self.max_hash = None
+
+        self.read_sym = "{0}__{1}__{2}__read".format(self.set.gen.chipset,
+                                                     self.set.underscore_name,
+                                                     self.xml.get('underscore_name'))
+
+        max_eq = self.xml.get('max_equation')
+        if not max_eq:
+            self.max_sym = "NULL /* undefined */"
+        elif max_eq == "100":
+            self.max_sym = "percentage_max_callback_" + self.xml.get('data_type')
+        else:
+            self.max_sym = "{0}__{1}__{2}__max".format(self.set.gen.chipset,
+                                                       self.set.underscore_name,
+                                                       self.xml.get('underscore_name'))
+
+    def get(self, prop):
+        return self.xml.get(prop)
+
+    def compute_hashes(self):
+        if self.read_hash is not None:
+            return
+
+        def replace_func(token):
+            if token[0] != "$":
+                return token
+            if token not in self.set.counter_vars:
+                return token
+            self.set.counter_vars[token].compute_hashes()
+            return self.set.counter_vars[token].read_hash
+
+        read_eq = self.xml.get('equation')
+        self.read_hash = ' '.join(map(replace_func, read_eq.split()))
+
+        max_eq = self.xml.get('max_equation')
+        if max_eq:
+            self.max_hash = ' '.join(map(replace_func, max_eq.split()))
+
+class Set:
+    def __init__(self, gen, xml):
+        self.gen = gen
+        self.xml = xml
+
+        self.counter_vars = {}
+        self.max_funcs = {}
+        self.read_funcs = {}
+        self.counter_hashes = {}
+
+        self.counters = []
+        xml_counters = self.xml.findall("counter")
+        for xml_counter in xml_counters:
+            counter = Counter(self, xml_counter)
+            self.counters.append(counter)
+            self.counter_vars["$" + counter.get('symbol_name')] = counter
+            self.max_funcs[counter.get('symbol_name')] = counter.max_sym
+            self.read_funcs[counter.get('symbol_name')] = counter.read_sym
+
+        for counter in self.counters:
+            counter.compute_hashes()
+
+    @property
+    def hw_config_guid(self):
+        return self.xml.get('hw_config_guid')
+
+    @property
+    def name(self):
+        return self.xml.get('name')
+
+    @property
+    def symbol_name(self):
+        return self.xml.get('symbol_name')
+
+    @property
+    def underscore_name(self):
+        return self.xml.get('underscore_name')
+
+    def findall(self, path):
+        return self.xml.findall(path)
+
+    def find(self, path):
+        return self.xml.find(path)
+
+
+class Gen:
+    def __init__(self, filename, c):
+        self.filename = filename
+        self.xml = et.parse(self.filename)
+        self.chipset = self.xml.find('.//set').get('chipset').lower()
+        self.sets = []
+        self.c = c
+
+        for xml_set in self.xml.findall(".//set"):
+            self.sets.append(Set(self, xml_set))
+
+        self.ops = {}
+        #                     (n operands, emitter)
+        self.ops["FADD"]     = (2, self.emit_fadd)
+        self.ops["FDIV"]     = (2, self.emit_fdiv)
+        self.ops["FMAX"]     = (2, self.emit_fmax)
+        self.ops["FMUL"]     = (2, self.emit_fmul)
+        self.ops["FSUB"]     = (2, self.emit_fsub)
+        self.ops["READ"]     = (2, self.emit_read)
+        self.ops["READ_REG"] = (1, self.emit_read_reg)
+        self.ops["UADD"]     = (2, self.emit_uadd)
+        self.ops["UDIV"]     = (2, self.emit_udiv)
+        self.ops["UMUL"]     = (2, self.emit_umul)
+        self.ops["USUB"]     = (2, self.emit_usub)
+        self.ops["UMIN"]     = (2, self.emit_umin)
+        self.ops["<<"]       = (2, self.emit_lshft)
+        self.ops[">>"]       = (2, self.emit_rshft)
+        self.ops["AND"]      = (2, self.emit_and)
+
+        self.exp_ops = {}
+        #                 (n operands, splicer)
+        self.exp_ops["AND"]  = (2, self.splice_bitwise_and)
+        self.exp_ops["UGTE"] = (2, self.splice_ugte)
+        self.exp_ops["ULT"]  = (2, self.splice_ult)
+        self.exp_ops["&&"]   = (2, self.splice_logical_and)
+
+        self.hw_vars = {
+            "$EuCoresTotalCount": { 'c': "perf->devinfo.n_eus", 'desc': "The total number of execution units" },
+            "$EuSlicesTotalCount": { 'c': "perf->devinfo.n_eu_slices" },
+            "$EuSubslicesTotalCount": { 'c': "perf->devinfo.n_eu_sub_slices" },
+            "$EuThreadsCount": { 'c': "perf->devinfo.eu_threads_count" },
+            "$SliceMask": { 'c': "perf->devinfo.slice_mask" },
+            "$DualSubsliceMask": { 'c': "perf->devinfo.subslice_mask" },
+            "$SubsliceMask": { 'c': "perf->devinfo.subslice_mask" },
+            "$GpuTimestampFrequency": { 'c': "perf->devinfo.timestamp_frequency" },
+            "$GpuMinFrequency": { 'c': "perf->devinfo.gt_min_freq" },
+            "$GpuMaxFrequency": { 'c': "perf->devinfo.gt_max_freq" },
+            "$SkuRevisionId": { 'c': "perf->devinfo.revision" },
+            "$QueryMode": { 'c': "perf->devinfo.query_mode" },
+        }
+
+    def emit_fadd(self, tmp_id, args):
+        self.c("double tmp{0} = {1} + {2};".format(tmp_id, args[1], args[0]))
+        return tmp_id + 1
+
+    # Be careful to check for divide by zero...
+    def emit_fdiv(self, tmp_id, args):
+        self.c("double tmp{0} = {1};".format(tmp_id, args[1]))
+        self.c("double tmp{0} = {1};".format(tmp_id + 1, args[0]))
+        self.c("double tmp{0} = tmp{1} ? tmp{2} / tmp{1} : 0;".format(tmp_id + 2, tmp_id + 1, tmp_id))
+        return tmp_id + 3
+
+    def emit_fmax(self, tmp_id, args):
+        self.c("double tmp{0} = {1};".format(tmp_id, args[1]))
+        self.c("double tmp{0} = {1};".format(tmp_id + 1, args[0]))
+        self.c("double tmp{0} = MAX(tmp{1}, tmp{2});".format(tmp_id + 2, tmp_id, tmp_id + 1))
+        return tmp_id + 3
+
+    def emit_fmul(self, tmp_id, args):
+        self.c("double tmp{0} = {1} * {2};".format(tmp_id, args[1], args[0]))
+        return tmp_id + 1
+
+    def emit_fsub(self, tmp_id, args):
+        self.c("double tmp{0} = {1} - {2};".format(tmp_id, args[1], args[0]))
+        return tmp_id + 1
+
+    def emit_read(self, tmp_id, args):
+        type = args[1].lower()
+        self.c("uint64_t tmp{0} = accumulator[metric_set->{1}_offset + {2}];".format(tmp_id, type, args[0]))
+        return tmp_id + 1
+
+    # Disabled here as the generated code is not capturing registers. This
+    # will only be useful for query mode where the driver captures
+    # additional registers.
+    def emit_read_reg(self, tmp_id, args):
+        self.c("uint64_t tmp{0} = 0;".format(tmp_id))
+        return tmp_id + 1
+
+    def emit_uadd(self, tmp_id, args):
+        self.c("uint64_t tmp{0} = {1} + {2};".format(tmp_id, args[1], args[0]))
+        return tmp_id + 1
+
+    # Be careful to check for divide by zero...
+    def emit_udiv(self, tmp_id, args):
+        self.c("uint64_t tmp{0} = {1};".format(tmp_id, args[1]))
+        self.c("uint64_t tmp{0} = {1};".format(tmp_id + 1, args[0]))
+        self.c("uint64_t tmp{0} = tmp{1} ? tmp{2} / tmp{1} : 0;".format(tmp_id + 2, tmp_id + 1, tmp_id))
+        return tmp_id + 3
+
+    def emit_umul(self, tmp_id, args):
+        self.c("uint64_t tmp{0} = {1} * {2};".format(tmp_id, args[1], args[0]))
+        return tmp_id + 1
+
+    def emit_usub(self, tmp_id, args):
+        self.c("uint64_t tmp{0} = {1} - {2};".format(tmp_id, args[1], args[0]))
+        return tmp_id + 1
+
+    def emit_umin(self, tmp_id, args):
+        self.c("uint64_t tmp{0} = MIN({1}, {2});".format(tmp_id, args[1], args[0]))
+        return tmp_id + 1
+
+    def emit_lshft(self, tmp_id, args):
+        self.c("uint64_t tmp{0} = {1} << {2};".format(tmp_id, args[1], args[0]))
+        return tmp_id + 1
+
+    def emit_rshft(self, tmp_id, args):
+        self.c("uint64_t tmp{0} = {1} >> {2};".format(tmp_id, args[1], args[0]))
+        return tmp_id + 1
+
+    def emit_and(self, tmp_id, args):
+        self.c("uint64_t tmp{0} = {1} & {2};".format(tmp_id, args[1], args[0]))
+        return tmp_id + 1
+
+    def brkt(self, subexp):
+        if " " in subexp:
+            return "(" + subexp + ")"
+        else:
+            return subexp
+
+    def splice_bitwise_and(self, args):
+        return self.brkt(args[1]) + " & " + self.brkt(args[0])
+
+    def splice_logical_and(self, args):
+        return self.brkt(args[1]) + " && " + self.brkt(args[0])
+
+    def splice_ult(self, args):
+        return self.brkt(args[1]) + " < " + self.brkt(args[0])
+
+    def splice_ugte(self, args):
+        return self.brkt(args[1]) + " >= " + self.brkt(args[0])
+
+    def output_rpn_equation_code(self, set, counter, equation):
+        self.c("/* RPN equation: " + equation + " */")
+        tokens = equation.split()
+        stack = []
+        tmp_id = 0
+        tmp = None
+
+        for token in tokens:
+            stack.append(token)
+            while stack and stack[-1] in self.ops:
+                op = stack.pop()
+                argc, callback = self.ops[op]
+                args = []
+                for i in range(0, argc):
+                    operand = stack.pop()
+                    if operand[0] == "$":
+                        if operand in self.hw_vars:
+                            operand = self.hw_vars[operand]['c']
+                        elif operand in set.counter_vars:
+                            reference = set.counter_vars[operand]
+                            operand = set.read_funcs[operand[1:]] + "(perf, metric_set, accumulator)"
+                        else:
+                            raise Exception("Failed to resolve variable " + operand + " in equation " + equation + " for " + set.name + " :: " + counter.get('name'));
+                    args.append(operand)
+
+                tmp_id = callback(tmp_id, args)
+
+                tmp = "tmp{0}".format(tmp_id - 1)
+                stack.append(tmp)
+
+        if len(stack) != 1:
+            raise Exception("Spurious empty rpn code for " + set.name + " :: " +
+                    counter.get('name') + ".\nThis is probably due to some unhandled RPN function, in the equation \"" +
+                    equation + "\"")
+
+        value = stack[-1]
+
+        if value in self.hw_vars:
+            value = self.hw_vars[value]['c']
+        if value in set.counter_vars:
+            value = set.read_funcs[value[1:]] + "(perf, metric_set, accumulator)"
+
+        self.c("\nreturn " + value + ";")
+
+    def splice_rpn_expression(self, set, counter_name, expression):
+        tokens = expression.split()
+        stack = []
+
+        for token in tokens:
+            stack.append(token)
+            while stack and stack[-1] in self.exp_ops:
+                op = stack.pop()
+                argc, callback = self.exp_ops[op]
+                args = []
+                for i in range(0, argc):
+                    operand = stack.pop()
+                    if operand[0] == "$":
+                        if operand in self.hw_vars:
+                            operand = self.hw_vars[operand]['c']
+                        else:
+                            raise Exception("Failed to resolve variable " + operand + " in expression " + expression + " for " + set.name + " :: " + counter_name)
+                    args.append(operand)
+
+                subexp = callback(args)
+
+                stack.append(subexp)
+
+        if len(stack) != 1:
+            raise Exception("Spurious empty rpn expression for " + set.name + " :: " +
+                    counter_name + ".\nThis is probably due to some unhandled RPN operation, in the expression \"" +
+                    expression + "\"")
+
+        return stack[-1]
+
+    def output_availability(self, set, availability, counter_name):
+        expression = self.splice_rpn_expression(set, counter_name, availability)
+        lines = expression.split(' && ')
+        n_lines = len(lines)
+        if n_lines == 1:
+            self.c("if (" + lines[0] + ") {")
+        else:
+            self.c("if (" + lines[0] + " &&")
+            self.c.indent(4)
+            for i in range(1, (n_lines - 1)):
+                self.c(lines[i] + " &&")
+            self.c(lines[(n_lines - 1)] + ") {")
+            self.c.outdent(4)
diff --git a/lib/i915/perf-configs/perf-codegen.py b/lib/i915/perf-configs/perf-codegen.py
deleted file mode 100755
index ac3ad683..00000000
--- a/lib/i915/perf-configs/perf-codegen.py
+++ /dev/null
@@ -1,716 +0,0 @@
-#!/usr/bin/env python3
-#
-# Copyright (c) 2015-2018 Intel Corporation
-#
-# Permission is hereby granted, free of charge, to any person obtaining a
-# copy of this software and associated documentation files (the "Software"),
-# to deal in the Software without restriction, including without limitation
-# the rights to use, copy, modify, merge, publish, distribute, sublicense,
-# and/or sell copies of the Software, and to permit persons to whom the
-# Software is furnished to do so, subject to the following conditions:
-#
-# The above copyright notice and this permission notice (including the next
-# paragraph) shall be included in all copies or substantial portions of the
-# Software.
-#
-# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
-# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
-# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
-# IN THE SOFTWARE.
-
-import argparse
-import os
-import sys
-import textwrap
-
-import xml.etree.cElementTree as et
-
-import codegen
-
-h = None
-c = None
-
-hashed_funcs = {}
-xml_equations = None
-
-def emit_fadd(tmp_id, args):
-    c("double tmp{0} = {1} + {2};".format(tmp_id, args[1], args[0]))
-    return tmp_id + 1
-
-# Be careful to check for divide by zero...
-def emit_fdiv(tmp_id, args):
-    c("double tmp{0} = {1};".format(tmp_id, args[1]))
-    c("double tmp{0} = {1};".format(tmp_id + 1, args[0]))
-    c("double tmp{0} = tmp{1} ? tmp{2} / tmp{1} : 0;".format(tmp_id + 2, tmp_id + 1, tmp_id))
-    return tmp_id + 3
-
-def emit_fmax(tmp_id, args):
-    c("double tmp{0} = {1};".format(tmp_id, args[1]))
-    c("double tmp{0} = {1};".format(tmp_id + 1, args[0]))
-    c("double tmp{0} = MAX(tmp{1}, tmp{2});".format(tmp_id + 2, tmp_id, tmp_id + 1))
-    return tmp_id + 3
-
-def emit_fmul(tmp_id, args):
-    c("double tmp{0} = {1} * {2};".format(tmp_id, args[1], args[0]))
-    return tmp_id + 1
-
-def emit_fsub(tmp_id, args):
-    c("double tmp{0} = {1} - {2};".format(tmp_id, args[1], args[0]))
-    return tmp_id + 1
-
-def emit_read(tmp_id, args):
-    type = args[1].lower()
-    c("uint64_t tmp{0} = accumulator[metric_set->{1}_offset + {2}];".format(tmp_id, type, args[0]))
-    return tmp_id + 1
-
-# Disabled here as the generated code is not capturing registers. This
-# will only be useful for query mode where the driver captures
-# additional registers.
-def emit_read_reg(tmp_id, args):
-    c("uint64_t tmp{0} = 0;".format(tmp_id))
-    return tmp_id + 1
-
-def emit_uadd(tmp_id, args):
-    c("uint64_t tmp{0} = {1} + {2};".format(tmp_id, args[1], args[0]))
-    return tmp_id + 1
-
-# Be careful to check for divide by zero...
-def emit_udiv(tmp_id, args):
-    c("uint64_t tmp{0} = {1};".format(tmp_id, args[1]))
-    c("uint64_t tmp{0} = {1};".format(tmp_id + 1, args[0]))
-    c("uint64_t tmp{0} = tmp{1} ? tmp{2} / tmp{1} : 0;".format(tmp_id + 2, tmp_id + 1, tmp_id))
-    return tmp_id + 3
-
-def emit_umul(tmp_id, args):
-    c("uint64_t tmp{0} = {1} * {2};".format(tmp_id, args[1], args[0]))
-    return tmp_id + 1
-
-def emit_usub(tmp_id, args):
-    c("uint64_t tmp{0} = {1} - {2};".format(tmp_id, args[1], args[0]))
-    return tmp_id + 1
-
-def emit_umin(tmp_id, args):
-    c("uint64_t tmp{0} = MIN({1}, {2});".format(tmp_id, args[1], args[0]))
-    return tmp_id + 1
-
-def emit_lshft(tmp_id, args):
-    c("uint64_t tmp{0} = {1} << {2};".format(tmp_id, args[1], args[0]))
-    return tmp_id + 1
-
-def emit_rshft(tmp_id, args):
-    c("uint64_t tmp{0} = {1} >> {2};".format(tmp_id, args[1], args[0]))
-    return tmp_id + 1
-
-def emit_and(tmp_id, args):
-    c("uint64_t tmp{0} = {1} & {2};".format(tmp_id, args[1], args[0]))
-    return tmp_id + 1
-
-ops = {}
-#                     (n operands, emitter)
-ops["FADD"]     = (2, emit_fadd)
-ops["FDIV"]     = (2, emit_fdiv)
-ops["FMAX"]     = (2, emit_fmax)
-ops["FMUL"]     = (2, emit_fmul)
-ops["FSUB"]     = (2, emit_fsub)
-ops["READ"]     = (2, emit_read)
-ops["READ_REG"] = (1, emit_read_reg)
-ops["UADD"]     = (2, emit_uadd)
-ops["UDIV"]     = (2, emit_udiv)
-ops["UMUL"]     = (2, emit_umul)
-ops["USUB"]     = (2, emit_usub)
-ops["UMIN"]     = (2, emit_umin)
-ops["<<"]       = (2, emit_lshft)
-ops[">>"]       = (2, emit_rshft)
-ops["AND"]      = (2, emit_and)
-
-def brkt(subexp):
-    if " " in subexp:
-        return "(" + subexp + ")"
-    else:
-        return subexp
-
-def splice_bitwise_and(args):
-    return brkt(args[1]) + " & " + brkt(args[0])
-
-def splice_logical_and(args):
-    return brkt(args[1]) + " && " + brkt(args[0])
-
-def splice_ult(args):
-    return brkt(args[1]) + " < " + brkt(args[0])
-
-def splice_ugte(args):
-    return brkt(args[1]) + " >= " + brkt(args[0])
-
-exp_ops = {}
-#                 (n operands, splicer)
-exp_ops["AND"]  = (2, splice_bitwise_and)
-exp_ops["UGTE"] = (2, splice_ugte)
-exp_ops["ULT"]  = (2, splice_ult)
-exp_ops["&&"]   = (2, splice_logical_and)
-
-
-hw_vars = {
-        "$EuCoresTotalCount": { 'c': "perf->devinfo.n_eus", 'desc': "The total number of execution units" },
-        "$EuSlicesTotalCount": { 'c': "perf->devinfo.n_eu_slices" },
-        "$EuSubslicesTotalCount": { 'c': "perf->devinfo.n_eu_sub_slices" },
-        "$EuThreadsCount": { 'c': "perf->devinfo.eu_threads_count" },
-        "$SliceMask": { 'c': "perf->devinfo.slice_mask" },
-        "$DualSubsliceMask": { 'c': "perf->devinfo.subslice_mask" },
-        "$SubsliceMask": { 'c': "perf->devinfo.subslice_mask" },
-        "$GpuTimestampFrequency": { 'c': "perf->devinfo.timestamp_frequency" },
-        "$GpuMinFrequency": { 'c': "perf->devinfo.gt_min_freq" },
-        "$GpuMaxFrequency": { 'c': "perf->devinfo.gt_max_freq" },
-        "$SkuRevisionId": { 'c': "perf->devinfo.revision" },
-        "$QueryMode": { 'c': "perf->devinfo.query_mode" },
-}
-
-def output_rpn_equation_code(set, counter, equation):
-    c("/* RPN equation: " + equation + " */")
-    tokens = equation.split()
-    stack = []
-    tmp_id = 0
-    tmp = None
-
-    for token in tokens:
-        stack.append(token)
-        while stack and stack[-1] in ops:
-            op = stack.pop()
-            argc, callback = ops[op]
-            args = []
-            for i in range(0, argc):
-                operand = stack.pop()
-                if operand[0] == "$":
-                    if operand in hw_vars:
-                        operand = hw_vars[operand]['c']
-                    elif operand in set.counter_vars:
-                        reference = set.counter_vars[operand]
-                        operand = set.read_funcs[operand[1:]] + "(perf, metric_set, accumulator)"
-                    else:
-                        raise Exception("Failed to resolve variable " + operand + " in equation " + equation + " for " + set.name + " :: " + counter.get('name'));
-                args.append(operand)
-
-            tmp_id = callback(tmp_id, args)
-
-            tmp = "tmp{0}".format(tmp_id - 1)
-            stack.append(tmp)
-
-    if len(stack) != 1:
-        raise Exception("Spurious empty rpn code for " + set.name + " :: " +
-                counter.get('name') + ".\nThis is probably due to some unhandled RPN function, in the equation \"" +
-                equation + "\"")
-
-    value = stack[-1]
-
-    if value in hw_vars:
-        value = hw_vars[value]['c']
-    if value in set.counter_vars:
-        value = set.read_funcs[value[1:]] + "(perf, metric_set, accumulator)"
-
-    c("\nreturn " + value + ";")
-
-def splice_rpn_expression(set, counter_name, expression):
-    tokens = expression.split()
-    stack = []
-
-    for token in tokens:
-        stack.append(token)
-        while stack and stack[-1] in exp_ops:
-            op = stack.pop()
-            argc, callback = exp_ops[op]
-            args = []
-            for i in range(0, argc):
-                operand = stack.pop()
-                if operand[0] == "$":
-                    if operand in hw_vars:
-                        operand = hw_vars[operand]['c']
-                    else:
-                        raise Exception("Failed to resolve variable " + operand + " in expression " + expression + " for " + set.name + " :: " + counter_name)
-                args.append(operand)
-
-            subexp = callback(args)
-
-            stack.append(subexp)
-
-    if len(stack) != 1:
-        raise Exception("Spurious empty rpn expression for " + set.name + " :: " +
-                counter_name + ".\nThis is probably due to some unhandled RPN operation, in the expression \"" +
-                expression + "\"")
-
-    return stack[-1]
-
-
-def data_type_to_ctype(ret_type):
-    if ret_type == "uint64":
-        return "uint64_t"
-    elif ret_type == "float":
-        return "double"
-    else:
-        raise Exception("Unhandled case for mapping \"" + ret_type + "\" to a C type")
-
-
-def output_counter_read(gen, set, counter):
-    c("\n")
-    c("/* {0} :: {1} */".format(set.name, counter.get('name')))
-
-    if counter.read_hash in hashed_funcs:
-        c("#define %s \\" % counter.read_sym)
-        c.indent(4)
-        c("%s" % hashed_funcs[counter.read_hash])
-        c.outdent(4)
-    else:
-        ret_type = counter.get('data_type')
-        ret_ctype = data_type_to_ctype(ret_type)
-        read_eq = counter.get('equation')
-
-        c("static " + ret_ctype)
-        c(counter.read_sym + "(const struct intel_perf *perf,\n")
-        c.indent(len(counter.read_sym) + 1)
-        c("const struct intel_perf_metric_set *metric_set,\n")
-        c("uint64_t *accumulator)\n")
-        c.outdent(len(counter.read_sym) + 1)
-
-        c("{")
-        c.indent(4)
-
-        output_rpn_equation_code(set, counter, read_eq)
-
-        c.outdent(4)
-        c("}")
-
-        hashed_funcs[counter.read_hash] = counter.read_sym
-
-
-def output_counter_max(gen, set, counter):
-    max_eq = counter.get('max_equation')
-
-    if not max_eq or max_eq == "100":
-        return
-
-    c("\n")
-    c("/* {0} :: {1} */".format(set.name, counter.get('name')))
-
-    if counter.max_hash in hashed_funcs:
-        c("#define %s \\" % counter.max_sym)
-        c.indent(4)
-        c("%s" % hashed_funcs[counter.max_hash])
-        c.outdent(4)
-    else:
-        ret_type = counter.get('data_type')
-        ret_ctype = data_type_to_ctype(ret_type)
-
-        c("static " + ret_ctype)
-
-        c(counter.max_sym + "(const struct intel_perf *perf,\n")
-        c.indent(len(counter.max_sym) + 1)
-        c("const struct intel_perf_metric_set *metric_set,\n")
-        c("uint64_t *accumulator)\n")
-        c.outdent(len(counter.max_sym) + 1)
-
-        c("{")
-        c.indent(4)
-
-        output_rpn_equation_code(set, counter, max_eq)
-
-        c.outdent(4)
-        c("}")
-
-        hashed_funcs[counter.max_hash] = counter.max_sym
-
-
-semantic_type_map = {
-    "duration": "raw",
-    "ratio": "event"
-    }
-
-def output_availability(set, availability, counter_name):
-    expression = splice_rpn_expression(set, counter_name, availability)
-    lines = expression.split(' && ')
-    n_lines = len(lines)
-    if n_lines == 1:
-        c("if (" + lines[0] + ") {")
-    else:
-        c("if (" + lines[0] + " &&")
-        c.indent(4)
-        for i in range(1, (n_lines - 1)):
-            c(lines[i] + " &&")
-        c(lines[(n_lines - 1)] + ") {")
-        c.outdent(4)
-
-
-def output_units(unit):
-    return unit.replace(' ', '_').upper()
-
-
-def output_counter_report(set, counter):
-    data_type = counter.get('data_type')
-    data_type_uc = data_type.upper()
-    c_type = data_type
-
-    if "uint" in c_type:
-        c_type = c_type + "_t"
-
-    semantic_type = counter.get('semantic_type')
-    if semantic_type in semantic_type_map:
-        semantic_type = semantic_type_map[semantic_type]
-
-    semantic_type_uc = semantic_type.upper()
-
-    c("\n")
-
-    availability = counter.get('availability')
-    if availability:
-        output_availability(set, availability, counter.get('name'))
-        c.indent(4)
-
-    c("counter = &metric_set->counters[metric_set->n_counters++];\n")
-    c("counter->metric_set = metric_set;\n")
-    c("counter->name = \"{0}\";\n".format(counter.get('name')))
-    c("counter->symbol_name = \"{0}\";\n".format(counter.get('symbol_name')));
-    c("counter->desc = \"{0}\";\n".format(counter.get('description')))
-    c("counter->type = INTEL_PERF_LOGICAL_COUNTER_TYPE_{0};\n".format(semantic_type_uc))
-    c("counter->storage = INTEL_PERF_LOGICAL_COUNTER_STORAGE_{0};\n".format(data_type_uc))
-    c("counter->unit = INTEL_PERF_LOGICAL_COUNTER_UNIT_{0};\n".format(output_units(counter.get('units'))))
-    c("counter->read_{0} = {1};\n".format(data_type, set.read_funcs[counter.get('symbol_name')]))
-    c("counter->max_{0} = {1};\n".format(data_type, set.max_funcs[counter.get('symbol_name')]))
-    c("intel_perf_add_logical_counter(perf, counter, \"{0}\");\n".format(counter.get('mdapi_group')))
-
-    if availability:
-        c.outdent(4)
-        c("}\n")
-
-
-def generate_register_configs(set):
-    register_types = {
-        'FLEX': 'flex_regs',
-        'NOA': 'mux_regs',
-        'OA': 'b_counter_regs',
-    }
-
-    # allocate memory
-    total_n_registers = {}
-    register_configs = set.findall('register_config')
-    for register_config in register_configs:
-        t = register_types[register_config.get('type')]
-        if t not in total_n_registers:
-            total_n_registers[t] = len(register_config.findall('register'))
-        else:
-            total_n_registers[t] += len(register_config.findall('register'))
-
-    for reg in total_n_registers:
-        c("metric_set->{0} = calloc({1}, sizeof(struct intel_perf_register_prog));".format(reg, total_n_registers[reg]))
-    c("\n")
-
-    # fill in register/values
-    register_configs = set.findall('register_config')
-    for register_config in register_configs:
-        t = register_types[register_config.get('type')]
-
-        availability = register_config.get('availability')
-        if availability:
-            output_availability(set, availability, register_config.get('type') + ' register config')
-            c.indent(4)
-
-        for register in register_config.findall('register'):
-            c("metric_set->%s[metric_set->n_%s++] = (struct intel_perf_register_prog) { .reg = %s, .val = %s };" %
-              (t, t, register.get('address'), register.get('value')))
-
-        if availability:
-            c.outdent(4)
-            c("}")
-        c("\n")
-
-#
-
-class Counter:
-    def __init__(self, set, xml):
-        self.xml = xml
-        self.set = set
-        self.read_hash = None
-        self.max_hash = None
-
-        self.read_sym = "{0}__{1}__{2}__read".format(self.set.gen.chipset,
-                                                     self.set.underscore_name,
-                                                     self.xml.get('underscore_name'))
-
-        max_eq = self.xml.get('max_equation')
-        if not max_eq:
-            self.max_sym = "NULL /* undefined */"
-        elif max_eq == "100":
-            self.max_sym = "percentage_max_callback_" + self.xml.get('data_type')
-        else:
-            self.max_sym = "{0}__{1}__{2}__max".format(self.set.gen.chipset,
-                                                       self.set.underscore_name,
-                                                       self.xml.get('underscore_name'))
-
-    def get(self, prop):
-        return self.xml.get(prop)
-
-    def compute_hashes(self):
-        if self.read_hash is not None:
-            return
-
-        def replace_func(token):
-            if token[0] != "$":
-                return token
-            if token not in self.set.counter_vars:
-                return token
-            self.set.counter_vars[token].compute_hashes()
-            return self.set.counter_vars[token].read_hash
-
-        read_eq = self.xml.get('equation')
-        self.read_hash = ' '.join(map(replace_func, read_eq.split()))
-
-        max_eq = self.xml.get('max_equation')
-        if max_eq:
-            self.max_hash = ' '.join(map(replace_func, max_eq.split()))
-
-
-class Set:
-    def __init__(self, gen, xml):
-        self.gen = gen
-        self.xml = xml
-
-        self.counter_vars = {}
-        self.max_funcs = {}
-        self.read_funcs = {}
-        self.counter_hashes = {}
-
-        self.counters = []
-        xml_counters = self.xml.findall("counter")
-        for xml_counter in xml_counters:
-            counter = Counter(self, xml_counter)
-            self.counters.append(counter)
-            self.counter_vars["$" + counter.get('symbol_name')] = counter
-            self.max_funcs[counter.get('symbol_name')] = counter.max_sym
-            self.read_funcs[counter.get('symbol_name')] = counter.read_sym
-
-        for counter in self.counters:
-            counter.compute_hashes()
-
-    @property
-    def hw_config_guid(self):
-        return self.xml.get('hw_config_guid')
-
-    @property
-    def name(self):
-        return self.xml.get('name')
-
-    @property
-    def symbol_name(self):
-        return self.xml.get('symbol_name')
-
-    @property
-    def underscore_name(self):
-        return self.xml.get('underscore_name')
-
-    def findall(self, path):
-        return self.xml.findall(path)
-
-    def find(self, path):
-        return self.xml.find(path)
-
-
-class Gen:
-    def __init__(self, filename):
-        self.filename = filename
-        self.xml = et.parse(self.filename)
-        self.chipset = self.xml.find('.//set').get('chipset').lower()
-        self.sets = []
-
-        for xml_set in self.xml.findall(".//set"):
-            self.sets.append(Set(self, xml_set))
-
-
-def main():
-    global c
-    global h
-    global xml_equations
-
-    parser = argparse.ArgumentParser()
-    parser.add_argument("--header", help="Header file to write")
-    parser.add_argument("--code", help="C file to write")
-    parser.add_argument("xml_files", nargs='+', help="List of xml metrics files to process")
-
-    args = parser.parse_args()
-
-    # Note: either arg may == None
-    h = codegen.Codegen(args.header)
-    c = codegen.Codegen(args.code)
-
-    gens = []
-    for xml_file in args.xml_files:
-        gens.append(Gen(xml_file))
-
-    copyright = textwrap.dedent("""\
-        /* Autogenerated file, DO NOT EDIT manually! generated by {}
-         *
-         * Copyright (c) 2018 Intel Corporation
-         *
-         * Permission is hereby granted, free of charge, to any person obtaining a
-         * copy of this software and associated documentation files (the "Software"),
-         * to deal in the Software without restriction, including without limitation
-         * the rights to use, copy, modify, merge, publish, distribute, sublicense,
-         * and/or sell copies of the Software, and to permit persons to whom the
-         * Software is furnished to do so, subject to the following conditions:
-         *
-         * The above copyright notice and this permission notice (including the next
-         * paragraph) shall be included in all copies or substantial portions of the
-         * Software.
-         *
-         * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-         * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-         * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
-         * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-         * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
-         * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
-         * DEALINGS IN THE SOFTWARE.
-         */
-
-        """).format(os.path.basename(__file__))
-
-    h(copyright)
-    c(copyright)
-    c(textwrap.dedent("""\
-        #include <stddef.h>
-        #include <stdint.h>
-        #include <stdbool.h>
-        #include <assert.h>
-
-        """))
-
-    c("#include \"" + os.path.basename(args.header) + "\"")
-
-    c(textwrap.dedent("""\
-        #include <stdlib.h>
-        #include <string.h>
-
-        #include <i915_drm.h>
-
-        #include "i915/perf.h"
-
-        #define MIN(x, y) (((x) < (y)) ? (x) : (y))
-        #define MAX(a, b) (((a) > (b)) ? (a) : (b))
-
-        static double
-        percentage_max_callback_float(const struct intel_perf *perf,
-                                      const struct intel_perf_metric_set *metric_set,
-                                      uint64_t *accumulator)
-        {
-           return 100;
-        }
-
-        static uint64_t
-        percentage_max_callback_uint64(const struct intel_perf *perf,
-                                       const struct intel_perf_metric_set *metric_set,
-                                       uint64_t *accumulator)
-        {
-           return 100;
-        }
-
-        """))
-
-    # Print out all equation functions.
-    for gen in gens:
-        for set in gen.sets:
-            for counter in set.counters:
-                output_counter_read(gen, set, counter)
-                output_counter_max(gen, set, counter)
-
-    # Print out all set registration functions for each set in each
-    # generation.
-    for gen in gens:
-        for set in gen.sets:
-            c("\nstatic void\n")
-            c(gen.chipset + "_add_" + set.underscore_name + "_metric_set(struct intel_perf *perf)")
-            c("{\n")
-            c.indent(4)
-
-            c("struct intel_perf_metric_set *metric_set;\n")
-            c("struct intel_perf_logical_counter *counter;\n\n")
-
-            counters = sorted(set.counters, key=lambda k: k.get('symbol_name'))
-
-            c("metric_set = calloc(1, sizeof(*metric_set));\n")
-            c("metric_set->name = \"" + set.name + "\";\n")
-            c("metric_set->symbol_name = \"" + set.symbol_name + "\";\n")
-            c("metric_set->hw_config_guid = \"" + set.hw_config_guid + "\";\n")
-            c("metric_set->counters = calloc({0}, sizeof(struct intel_perf_logical_counter));\n".format(str(len(counters))))
-            c("metric_set->n_counters = 0;\n")
-            c("metric_set->perf_oa_metrics_set = 0; // determined at runtime\n")
-
-            if gen.chipset == "hsw":
-                c(textwrap.dedent("""\
-                    metric_set->perf_oa_format = I915_OA_FORMAT_A45_B8_C8;
-
-                    metric_set->perf_raw_size = 256;
-                    metric_set->gpu_time_offset = 0;
-                    metric_set->a_offset = 1;
-                    metric_set->b_offset = metric_set->a_offset + 45;
-                    metric_set->c_offset = metric_set->b_offset + 8;
-
-                    """))
-            else:
-                c(textwrap.dedent("""\
-                    metric_set->perf_oa_format = I915_OA_FORMAT_A32u40_A4u32_B8_C8;
-
-                    metric_set->perf_raw_size = 256;
-                    metric_set->gpu_time_offset = 0;
-                    metric_set->gpu_clock_offset = 1;
-                    metric_set->a_offset = 2;
-                    metric_set->b_offset = metric_set->a_offset + 36;
-                    metric_set->c_offset = metric_set->b_offset + 8;
-
-                    """))
-
-            c("intel_perf_add_metric_set(perf, metric_set);");
-            c("\n")
-
-            generate_register_configs(set)
-
-            for counter in counters:
-                output_counter_report(set, counter)
-
-            c("\nassert(metric_set->n_counters <= {0});\n".format(len(counters)));
-
-            c.outdent(4)
-            c("}\n")
-
-    h(textwrap.dedent("""\
-        #pragma once
-
-        #include "i915/perf.h"
-
-        #ifdef __cplusplus
-        extern "C" {
-        #endif
-
-        """))
-
-    # Print out all set registration functions for each generation.
-    for gen in gens:
-        h("void intel_perf_load_metrics_" + gen.chipset + "(struct intel_perf *perf);\n\n")
-
-        c("\nvoid")
-        c("intel_perf_load_metrics_" + gen.chipset + "(struct intel_perf *perf)")
-        c("{")
-        c.indent(4)
-
-        for set in gen.sets:
-            c("{0}_add_{1}_metric_set(perf);".format(gen.chipset, set.underscore_name))
-
-        c.outdent(4)
-        c("}")
-
-    h(textwrap.dedent("""\
-        #ifdef __cplusplus
-        } /* extern C */
-        #endif
-
-        """))
-
-
-if __name__ == '__main__':
-    main()
diff --git a/lib/i915/perf-configs/perf-equations-codegen.py b/lib/i915/perf-configs/perf-equations-codegen.py
new file mode 100644
index 00000000..610205ef
--- /dev/null
+++ b/lib/i915/perf-configs/perf-equations-codegen.py
@@ -0,0 +1,289 @@
+#!/usr/bin/env python3
+#
+# Copyright (c) 2015-2020 Intel Corporation
+#
+# Permission is hereby granted, free of charge, to any person obtaining a
+# copy of this software and associated documentation files (the "Software"),
+# to deal in the Software without restriction, including without limitation
+# the rights to use, copy, modify, merge, publish, distribute, sublicense,
+# and/or sell copies of the Software, and to permit persons to whom the
+# Software is furnished to do so, subject to the following conditions:
+#
+# The above copyright notice and this permission notice (including the next
+# paragraph) shall be included in all copies or substantial portions of the
+# Software.
+#
+# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
+# IN THE SOFTWARE.
+
+import argparse
+import os
+import sys
+import textwrap
+
+import codegen
+
+h = None
+c = None
+
+hashed_funcs = {}
+
+def data_type_to_ctype(ret_type):
+    if ret_type == "uint64":
+        return "uint64_t"
+    elif ret_type == "float":
+        return "double"
+    else:
+        raise Exception("Unhandled case for mapping \"" + ret_type + "\" to a C type")
+
+
+def output_counter_read(gen, set, counter):
+    if counter.read_hash in hashed_funcs:
+        return
+
+    c("\n")
+    c("/* {0} :: {1} */".format(set.name, counter.get('name')))
+
+    ret_type = counter.get('data_type')
+    ret_ctype = data_type_to_ctype(ret_type)
+    read_eq = counter.get('equation')
+
+    c(ret_ctype)
+    c(counter.read_sym + "(const struct intel_perf *perf,\n")
+    c.indent(len(counter.read_sym) + 1)
+    c("const struct intel_perf_metric_set *metric_set,\n")
+    c("uint64_t *accumulator)\n")
+    c.outdent(len(counter.read_sym) + 1)
+
+    c("{")
+    c.indent(4)
+
+    gen.output_rpn_equation_code(set, counter, read_eq)
+
+    c.outdent(4)
+    c("}")
+
+    hashed_funcs[counter.read_hash] = counter.read_sym
+
+
+def output_counter_read_definition(gen, set, counter):
+    if counter.read_hash in hashed_funcs:
+        h("#define %s \\" % counter.read_sym)
+        h.indent(4)
+        h("%s" % hashed_funcs[counter.read_hash])
+        h.outdent(4)
+    else:
+        ret_type = counter.get('data_type')
+        ret_ctype = data_type_to_ctype(ret_type)
+        read_eq = counter.get('equation')
+
+        h(ret_ctype)
+        h(counter.read_sym + "(const struct intel_perf *perf,\n")
+        h.indent(len(counter.read_sym) + 1)
+        h("const struct intel_perf_metric_set *metric_set,\n")
+        h("uint64_t *accumulator);\n")
+        h.outdent(len(counter.read_sym) + 1)
+
+        hashed_funcs[counter.read_hash] = counter.read_sym
+
+
+def output_counter_max(gen, set, counter):
+    max_eq = counter.get('max_equation')
+
+    if not max_eq or max_eq == "100":
+        return
+
+    if counter.max_hash in hashed_funcs:
+        return
+
+    c("\n")
+    c("/* {0} :: {1} */".format(set.name, counter.get('name')))
+
+    ret_type = counter.get('data_type')
+    ret_ctype = data_type_to_ctype(ret_type)
+
+    c(ret_ctype)
+    c(counter.max_sym + "(const struct intel_perf *perf,\n")
+    c.indent(len(counter.max_sym) + 1)
+    c("const struct intel_perf_metric_set *metric_set,\n")
+    c("uint64_t *accumulator)\n")
+    c.outdent(len(counter.max_sym) + 1)
+
+    c("{")
+    c.indent(4)
+
+    gen.output_rpn_equation_code(set, counter, max_eq)
+
+    c.outdent(4)
+    c("}")
+
+    hashed_funcs[counter.max_hash] = counter.max_sym
+
+
+def output_counter_max_definition(gen, set, counter):
+    max_eq = counter.get('max_equation')
+
+    if not max_eq or max_eq == "100":
+        return
+
+    if counter.max_hash in hashed_funcs:
+        h("#define %s \\" % counter.max_sym)
+        h.indent(4)
+        h("%s" % hashed_funcs[counter.max_hash])
+        h.outdent(4)
+        h("\n")
+    else:
+        ret_type = counter.get('data_type')
+        ret_ctype = data_type_to_ctype(ret_type)
+
+        h(ret_ctype)
+
+        h(counter.max_sym + "(const struct intel_perf *perf,")
+        h.indent(len(counter.max_sym) + 1)
+        h("const struct intel_perf_metric_set *metric_set,")
+        h("uint64_t *accumulator);")
+        h.outdent(len(counter.max_sym) + 1)
+        h("\n")
+
+        hashed_funcs[counter.max_hash] = counter.max_sym
+
+
+def generate_equations(args, gens):
+    global hashed_funcs
+
+    header_file = os.path.basename(args.header)
+    header_define = header_file.replace('.', '_').upper()
+
+    hashed_funcs = {}
+    c(textwrap.dedent("""\
+        #include <stdlib.h>
+        #include <string.h>
+
+        #include <i915_drm.h>
+
+        #include "i915/perf.h"
+        #include "%s"
+
+        #define MIN(x, y) (((x) < (y)) ? (x) : (y))
+        #define MAX(a, b) (((a) > (b)) ? (a) : (b))
+
+        double
+        percentage_max_callback_float(const struct intel_perf *perf,
+                                      const struct intel_perf_metric_set *metric_set,
+                                      uint64_t *accumulator)
+        {
+           return 100;
+        }
+
+        uint64_t
+        percentage_max_callback_uint64(const struct intel_perf *perf,
+                                       const struct intel_perf_metric_set *metric_set,
+                                       uint64_t *accumulator)
+        {
+           return 100;
+        }
+
+        """ % os.path.basename(args.header)))
+
+    # Print out all equation functions.
+    for gen in gens:
+        for set in gen.sets:
+            for counter in set.counters:
+                output_counter_read(gen, set, counter)
+                output_counter_max(gen, set, counter)
+
+    hashed_funcs = {}
+    h(textwrap.dedent("""\
+        #ifndef __%s__
+        #define __%s__
+
+        #include <stddef.h>
+        #include <stdint.h>
+        #include <stdbool.h>
+
+        struct intel_perf;
+        struct intel_perf_metric_set;
+
+        double
+        percentage_max_callback_float(const struct intel_perf *perf,
+                                      const struct intel_perf_metric_set *metric_set,
+                                      uint64_t *accumulator);
+        uint64_t
+        percentage_max_callback_uint64(const struct intel_perf *perf,
+                                       const struct intel_perf_metric_set *metric_set,
+                                       uint64_t *accumulator);
+
+        """ % (header_define, header_define)))
+
+    # Print out all equation functions.
+    for gen in gens:
+        for set in gen.sets:
+            for counter in set.counters:
+                output_counter_read_definition(gen, set, counter)
+                output_counter_max_definition(gen, set, counter)
+
+    h(textwrap.dedent("""\
+
+        #endif /* __%s__ */
+        """ % header_define))
+
+
+def main():
+    global c
+    global h
+
+    parser = argparse.ArgumentParser()
+    parser.add_argument("--header", help="Header file to write")
+    parser.add_argument("--code", help="C file to write")
+    parser.add_argument("xml_files", nargs='+', help="List of xml metrics files to process")
+
+    args = parser.parse_args()
+
+    # Note: either arg may == None
+    h = codegen.Codegen(args.header)
+    c = codegen.Codegen(args.code)
+
+    gens = []
+    for xml_file in args.xml_files:
+        gens.append(codegen.Gen(xml_file, c))
+
+    copyright = textwrap.dedent("""\
+        /* Autogenerated file, DO NOT EDIT manually! generated by {}
+         *
+         * Copyright (c) 2018 Intel Corporation
+         *
+         * Permission is hereby granted, free of charge, to any person obtaining a
+         * copy of this software and associated documentation files (the "Software"),
+         * to deal in the Software without restriction, including without limitation
+         * the rights to use, copy, modify, merge, publish, distribute, sublicense,
+         * and/or sell copies of the Software, and to permit persons to whom the
+         * Software is furnished to do so, subject to the following conditions:
+         *
+         * The above copyright notice and this permission notice (including the next
+         * paragraph) shall be included in all copies or substantial portions of the
+         * Software.
+         *
+         * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+         * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+         * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+         * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+         * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+         * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
+         * DEALINGS IN THE SOFTWARE.
+         */
+
+        """).format(os.path.basename(__file__))
+
+    h(copyright)
+    c(copyright)
+
+    generate_equations(args, gens)
+
+
+if __name__ == '__main__':
+    main()
diff --git a/lib/i915/perf-configs/perf-metricset-codegen.py b/lib/i915/perf-configs/perf-metricset-codegen.py
new file mode 100644
index 00000000..d11546b8
--- /dev/null
+++ b/lib/i915/perf-configs/perf-metricset-codegen.py
@@ -0,0 +1,238 @@
+#!/usr/bin/env python3
+#
+# Copyright (c) 2015-2020 Intel Corporation
+#
+# Permission is hereby granted, free of charge, to any person obtaining a
+# copy of this software and associated documentation files (the "Software"),
+# to deal in the Software without restriction, including without limitation
+# the rights to use, copy, modify, merge, publish, distribute, sublicense,
+# and/or sell copies of the Software, and to permit persons to whom the
+# Software is furnished to do so, subject to the following conditions:
+#
+# The above copyright notice and this permission notice (including the next
+# paragraph) shall be included in all copies or substantial portions of the
+# Software.
+#
+# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
+# IN THE SOFTWARE.
+
+import argparse
+import os
+import sys
+import textwrap
+
+import codegen
+
+h = None
+c = None
+
+semantic_type_map = {
+    "duration": "raw",
+    "ratio": "event"
+    }
+
+def output_units(unit):
+    return unit.replace(' ', '_').upper()
+
+
+def output_counter_report(set, counter):
+    data_type = counter.get('data_type')
+    data_type_uc = data_type.upper()
+    c_type = data_type
+
+    if "uint" in c_type:
+        c_type = c_type + "_t"
+
+    semantic_type = counter.get('semantic_type')
+    if semantic_type in semantic_type_map:
+        semantic_type = semantic_type_map[semantic_type]
+
+    semantic_type_uc = semantic_type.upper()
+
+    c("\n")
+
+    availability = counter.get('availability')
+    if availability:
+        set.gen.output_availability(set, availability, counter.get('name'))
+        c.indent(4)
+
+    c("counter = &metric_set->counters[metric_set->n_counters++];\n")
+    c("counter->metric_set = metric_set;\n")
+    c("counter->name = \"{0}\";\n".format(counter.get('name')))
+    c("counter->symbol_name = \"{0}\";\n".format(counter.get('symbol_name')));
+    c("counter->desc = \"{0}\";\n".format(counter.get('description')))
+    c("counter->type = INTEL_PERF_LOGICAL_COUNTER_TYPE_{0};\n".format(semantic_type_uc))
+    c("counter->storage = INTEL_PERF_LOGICAL_COUNTER_STORAGE_{0};\n".format(data_type_uc))
+    c("counter->unit = INTEL_PERF_LOGICAL_COUNTER_UNIT_{0};\n".format(output_units(counter.get('units'))))
+    c("counter->read_{0} = {1};\n".format(data_type, set.read_funcs[counter.get('symbol_name')]))
+    c("counter->max_{0} = {1};\n".format(data_type, set.max_funcs[counter.get('symbol_name')]))
+    c("intel_perf_add_logical_counter(perf, counter, \"{0}\");\n".format(counter.get('mdapi_group')))
+
+    if availability:
+        c.outdent(4)
+        c("}\n")
+
+
+def generate_metric_sets(args, gen):
+    c(textwrap.dedent("""\
+        #include <stddef.h>
+        #include <stdint.h>
+        #include <stdlib.h>
+        #include <stdbool.h>
+        #include <assert.h>
+
+        #include "i915_drm.h"
+
+        """))
+
+    c("#include \"{0}\"".format(os.path.basename(args.header)))
+    c("#include \"{0}\"".format(os.path.basename(args.equations_include)))
+    c("#include \"{0}\"".format(os.path.basename(args.registers_include)))
+
+    # Print out all set registration functions for each set in each
+    # generation.
+    for set in gen.sets:
+        c("\nstatic void\n")
+        c(gen.chipset + "_add_" + set.underscore_name + "_metric_set(struct intel_perf *perf)")
+        c("{\n")
+        c.indent(4)
+
+        c("struct intel_perf_metric_set *metric_set;\n")
+        c("struct intel_perf_logical_counter *counter;\n\n")
+
+        counters = sorted(set.counters, key=lambda k: k.get('symbol_name'))
+
+        c("metric_set = calloc(1, sizeof(*metric_set));\n")
+        c("metric_set->name = \"" + set.name + "\";\n")
+        c("metric_set->symbol_name = \"" + set.symbol_name + "\";\n")
+        c("metric_set->hw_config_guid = \"" + set.hw_config_guid + "\";\n")
+        c("metric_set->counters = calloc({0}, sizeof(struct intel_perf_logical_counter));\n".format(str(len(counters))))
+        c("metric_set->n_counters = 0;\n")
+        c("metric_set->perf_oa_metrics_set = 0; // determined at runtime\n")
+
+        if gen.chipset == "hsw":
+            c(textwrap.dedent("""\
+                metric_set->perf_oa_format = I915_OA_FORMAT_A45_B8_C8;
+
+                metric_set->perf_raw_size = 256;
+                metric_set->gpu_time_offset = 0;
+                metric_set->a_offset = 1;
+                metric_set->b_offset = metric_set->a_offset + 45;
+                metric_set->c_offset = metric_set->b_offset + 8;
+
+            """))
+        else:
+            c(textwrap.dedent("""\
+                metric_set->perf_oa_format = I915_OA_FORMAT_A32u40_A4u32_B8_C8;
+
+                metric_set->perf_raw_size = 256;
+                metric_set->gpu_time_offset = 0;
+                metric_set->gpu_clock_offset = 1;
+                metric_set->a_offset = 2;
+                metric_set->b_offset = metric_set->a_offset + 36;
+                metric_set->c_offset = metric_set->b_offset + 8;
+
+            """))
+
+        c("%s_%s_add_registers(perf, metric_set);" % (gen.chipset, set.underscore_name))
+
+        c("intel_perf_add_metric_set(perf, metric_set);");
+        c("\n")
+
+        for counter in counters:
+            output_counter_report(set, counter)
+
+        c("\nassert(metric_set->n_counters <= {0});\n".format(len(counters)));
+
+        c.outdent(4)
+        c("}\n")
+
+    c("\nvoid")
+    c("intel_perf_load_metrics_" + gen.chipset + "(struct intel_perf *perf)")
+    c("{")
+    c.indent(4)
+
+    for set in gen.sets:
+        c("{0}_add_{1}_metric_set(perf);".format(gen.chipset, set.underscore_name))
+
+    c.outdent(4)
+    c("}")
+
+
+
+def main():
+    global c
+    global h
+
+    parser = argparse.ArgumentParser()
+    parser.add_argument("--header", help="Header file to write")
+    parser.add_argument("--code", help="C file to write")
+    parser.add_argument("--equations-include", help="Equations header file")
+    parser.add_argument("--registers-include", help="Registers header file")
+    parser.add_argument("--xml-file", help="Xml file to generate metric sets from")
+
+    args = parser.parse_args()
+
+    # Note: either arg may == None
+    h = codegen.Codegen(args.header)
+    c = codegen.Codegen(args.code)
+
+    gen = codegen.Gen(args.xml_file, c)
+
+    copyright = textwrap.dedent("""\
+        /* Autogenerated file, DO NOT EDIT manually! generated by {}
+         *
+         * Copyright (c) 2018 Intel Corporation
+         *
+         * Permission is hereby granted, free of charge, to any person obtaining a
+         * copy of this software and associated documentation files (the "Software"),
+         * to deal in the Software without restriction, including without limitation
+         * the rights to use, copy, modify, merge, publish, distribute, sublicense,
+         * and/or sell copies of the Software, and to permit persons to whom the
+         * Software is furnished to do so, subject to the following conditions:
+         *
+         * The above copyright notice and this permission notice (including the next
+         * paragraph) shall be included in all copies or substantial portions of the
+         * Software.
+         *
+         * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+         * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+         * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+         * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+         * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+         * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
+         * DEALINGS IN THE SOFTWARE.
+         */
+
+        """).format(os.path.basename(__file__))
+
+    header_file = os.path.basename(args.header)
+    header_define = header_file.replace('.', '_').upper()
+
+    h(copyright)
+    h(textwrap.dedent("""\
+        #ifndef %s
+        #define %s
+
+        #include "i915/perf.h"
+
+        """ % (header_define, header_define)))
+
+    # Print out all set registration functions for each generation.
+    h("void intel_perf_load_metrics_" + gen.chipset + "(struct intel_perf *perf);\n\n")
+
+    h(textwrap.dedent("""\
+        #endif /* %s */
+        """ % header_define))
+
+    c(copyright)
+    generate_metric_sets(args, gen)
+
+
+if __name__ == '__main__':
+    main()
diff --git a/lib/i915/perf-configs/perf-registers-codegen.py b/lib/i915/perf-configs/perf-registers-codegen.py
new file mode 100644
index 00000000..19f09d7a
--- /dev/null
+++ b/lib/i915/perf-configs/perf-registers-codegen.py
@@ -0,0 +1,159 @@
+#!/usr/bin/env python3
+#
+# Copyright (c) 2015-2020 Intel Corporation
+#
+# Permission is hereby granted, free of charge, to any person obtaining a
+# copy of this software and associated documentation files (the "Software"),
+# to deal in the Software without restriction, including without limitation
+# the rights to use, copy, modify, merge, publish, distribute, sublicense,
+# and/or sell copies of the Software, and to permit persons to whom the
+# Software is furnished to do so, subject to the following conditions:
+#
+# The above copyright notice and this permission notice (including the next
+# paragraph) shall be included in all copies or substantial portions of the
+# Software.
+#
+# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
+# IN THE SOFTWARE.
+
+import argparse
+import os
+import sys
+import textwrap
+
+import codegen
+
+h = None
+c = None
+
+
+def generate_register_configs(set):
+    register_types = {
+        'FLEX': 'flex_regs',
+        'NOA': 'mux_regs',
+        'OA': 'b_counter_regs',
+    }
+
+    c("void %s_%s_add_registers(struct intel_perf *perf, struct intel_perf_metric_set *metric_set)" %
+      (set.gen.chipset, set.underscore_name))
+    c("{")
+    c.indent(4)
+
+    # allocate memory
+    total_n_registers = {}
+    register_configs = set.findall('register_config')
+    for register_config in register_configs:
+        t = register_types[register_config.get('type')]
+        if t not in total_n_registers:
+            total_n_registers[t] = len(register_config.findall('register'))
+        else:
+            total_n_registers[t] += len(register_config.findall('register'))
+
+    for reg in total_n_registers:
+        c("metric_set->{0} = calloc({1}, sizeof(struct intel_perf_register_prog));".format(reg, total_n_registers[reg]))
+    c("\n")
+
+    # fill in register/values
+    register_configs = set.findall('register_config')
+    for register_config in register_configs:
+        t = register_types[register_config.get('type')]
+
+        availability = register_config.get('availability')
+        if availability:
+            set.gen.output_availability(set, availability, register_config.get('type') + ' register config')
+            c.indent(4)
+
+        for register in register_config.findall('register'):
+            c("metric_set->%s[metric_set->n_%s++] = (struct intel_perf_register_prog) { .reg = %s, .val = %s };" %
+              (t, t, register.get('address'), register.get('value')))
+
+        if availability:
+            c.outdent(4)
+            c("}")
+        c("\n")
+
+    c.outdent(4)
+    c("}")
+
+
+def main():
+    global c
+    global h
+    global xml_equations
+
+    parser = argparse.ArgumentParser()
+    parser.add_argument("--header", help="Header file to write")
+    parser.add_argument("--code", help="C file to write")
+    parser.add_argument("--xml-file", help="Xml file to generate register configurations from")
+
+    args = parser.parse_args()
+
+    # Note: either arg may == None
+    h = codegen.Codegen(args.header)
+    c = codegen.Codegen(args.code)
+
+    gen = codegen.Gen(args.xml_file, c)
+
+    copyright = textwrap.dedent("""\
+        /* Autogenerated file, DO NOT EDIT manually! generated by {}
+         *
+         * Copyright (c) 2020 Intel Corporation
+         *
+         * Permission is hereby granted, free of charge, to any person obtaining a
+         * copy of this software and associated documentation files (the "Software"),
+         * to deal in the Software without restriction, including without limitation
+         * the rights to use, copy, modify, merge, publish, distribute, sublicense,
+         * and/or sell copies of the Software, and to permit persons to whom the
+         * Software is furnished to do so, subject to the following conditions:
+         *
+         * The above copyright notice and this permission notice (including the next
+         * paragraph) shall be included in all copies or substantial portions of the
+         * Software.
+         *
+         * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+         * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+         * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+         * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+         * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+         * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
+         * DEALINGS IN THE SOFTWARE.
+         */
+
+        """).format(os.path.basename(__file__))
+
+
+    header_file = os.path.basename(args.header)
+    header_define = "__%s__" % header_file.replace('.', '_').upper()
+
+    h(copyright)
+    h("#ifndef %s" % header_define)
+    h("#define %s" % header_define)
+    h("\n")
+    h("struct intel_perf;")
+    h("struct intel_perf_metric_set;")
+    h("\n")
+    for set in gen.sets:
+        h("void %s_%s_add_registers(struct intel_perf *perf, struct intel_perf_metric_set *metric_set);" %
+          (gen.chipset, set.underscore_name))
+    h("\n")
+    h("#endif /* %s */" % header_define)
+
+    c(copyright)
+    c("\n")
+    c("#include <stdlib.h>")
+    c("\n")
+    c("#include \"%s\"" % header_file)
+    c("#include \"i915/perf.h\"")
+
+    for set in gen.sets:
+        c("\n")
+        generate_register_configs(set)
+
+
+if __name__ == '__main__':
+    main()
diff --git a/lib/i915/perf.c b/lib/i915/perf.c
index babfe633..8d3e188a 100644
--- a/lib/i915/perf.c
+++ b/lib/i915/perf.c
@@ -37,7 +37,23 @@
 
 #include "intel_chipset.h"
 #include "perf.h"
-#include "i915_perf_metrics.h"
+
+#include "i915_perf_metrics_hsw.h"
+#include "i915_perf_metrics_bdw.h"
+#include "i915_perf_metrics_chv.h"
+#include "i915_perf_metrics_sklgt2.h"
+#include "i915_perf_metrics_sklgt3.h"
+#include "i915_perf_metrics_sklgt4.h"
+#include "i915_perf_metrics_kblgt2.h"
+#include "i915_perf_metrics_kblgt3.h"
+#include "i915_perf_metrics_cflgt2.h"
+#include "i915_perf_metrics_cflgt3.h"
+#include "i915_perf_metrics_bxt.h"
+#include "i915_perf_metrics_glk.h"
+#include "i915_perf_metrics_cnl.h"
+#include "i915_perf_metrics_icl.h"
+#include "i915_perf_metrics_ehl.h"
+#include "i915_perf_metrics_tgl.h"
 
 static int
 perf_ioctl(int fd, unsigned long request, void *arg)
diff --git a/lib/meson.build b/lib/meson.build
index 8112bec4..6cc11530 100644
--- a/lib/meson.build
+++ b/lib/meson.build
@@ -195,16 +195,43 @@ foreach hw : i915_perf_hardware
 endforeach
 
 i915_perf_files += custom_target(
-  'i915-perf-metrics',
+  'i915-perf-equations',
   input : i915_xml_files,
-  output : [ 'i915_perf_metrics.c', 'i915_perf_metrics.h' ],
+  output : [ 'i915_perf_equations.c', 'i915_perf_equations.h' ],
   command : [
-    find_program('i915/perf-configs/perf-codegen.py'),
+    find_program('i915/perf-configs/perf-equations-codegen.py'),
     '--code', '@OUTPUT0@',
     '--header', '@OUTPUT1@',
     '@INPUT@',
   ])
 
+foreach hw : i915_perf_hardware
+  i915_perf_files += custom_target(
+    'i915-perf-registers-@0@'.format(hw),
+    input : 'i915/perf-configs/oa-@0@.xml'.format(hw),
+    output : [ 'i915_perf_registers_@0@.c'.format(hw),
+               'i915_perf_registers_@0@.h'.format(hw), ],
+    command : [
+      find_program('i915/perf-configs/perf-registers-codegen.py'),
+      '--code', '@OUTPUT0@',
+      '--header', '@OUTPUT1@',
+      '--xml-file', '@INPUT@'
+    ])
+  i915_perf_files += custom_target(
+    'i915-perf-metrics-@0@'.format(hw),
+    input : 'i915/perf-configs/oa-@0@.xml'.format(hw),
+    output : [ 'i915_perf_metrics_@0@.c'.format(hw),
+               'i915_perf_metrics_@0@.h'.format(hw), ],
+    command : [
+      find_program('i915/perf-configs/perf-metricset-codegen.py'),
+      '--code', '@OUTPUT0@',
+      '--header', '@OUTPUT1@',
+      '--equations-include', 'i915_perf_equations.h',
+      '--registers-include', 'i915_perf_registers_@0@.h'.format(hw),
+      '--xml-file', '@INPUT@',
+    ])
+endforeach
+
 lib_igt_i915_perf_build = shared_library(
   'i915_perf',
   i915_perf_files,
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
