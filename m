Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B01A182EC2
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 12:15:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A56356E145;
	Thu, 12 Mar 2020 11:15:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12D076E145
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 11:15:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 04:15:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,544,1574150400"; d="scan'208";a="289685658"
Received: from unknown (HELO delly.ger.corp.intel.com) ([10.252.53.213])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Mar 2020 04:15:47 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Mar 2020 13:15:40 +0200
Message-Id: <20200312111542.2418545-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 1/3] lib/i915/perf: remove generation
 code for mathml render
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

Gputop had support for generating mathml figures of the post
processing equations. It's not useful here.

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 lib/i915/perf-configs/perf-codegen.py | 168 +++-----------------------
 1 file changed, 17 insertions(+), 151 deletions(-)

diff --git a/lib/i915/perf-configs/perf-codegen.py b/lib/i915/perf-configs/perf-codegen.py
index 24c5514d..ac3ad683 100755
--- a/lib/i915/perf-configs/perf-codegen.py
+++ b/lib/i915/perf-configs/perf-codegen.py
@@ -36,109 +36,6 @@ c = None
 hashed_funcs = {}
 xml_equations = None
 
-def check_operand_type(set, arg):
-    if arg.isdigit():
-        return "\n<mn>" + arg + "</mn>"
-    elif arg[0] == "$":
-        if arg in set.counter_vars:
-            description = set.counter_vars[arg].get('description')
-        elif arg in hw_vars and 'desc' in hw_vars[arg]:
-            description = hw_vars[arg]['desc'];
-        else:
-            description = None
-
-        if description != None:
-            return "\n<maction actiontype='tooltip'>\n<mi>" + arg + "</mi>\n<mtext>" + description + "</mtext>\n</maction>"
-        else:
-            return "<mi>" + arg + "</mi>"
-    return arg
-
-# http://en.cppreference.com/w/c/language/operator_precedence
-and_precedence = 8
-shft_precedence = 5
-mul_precedence = 3
-add_precedence = 2
-sub_precedence = 2
-default_precedence = 16 #a high value which denotes no brackets needed
-
-def put_brackets(arg):
-    return "\n<mtext>(</mtext>" + arg + "\n<mtext>)</mtext>"
-
-def mathml_splice_add(set, args):
-    operand_0 = check_operand_type(set, args[0][0])
-    operand_1 = check_operand_type(set, args[1][0])
-    if args[0][1] < add_precedence:
-        operand_0 = put_brackets(args[0][0])
-    if args[1][1] < add_precedence:
-        operand_1 = put_brackets(args[1][0])
-    return [operand_1 + "\n<mo>+</mo>" + operand_0, add_precedence]
-
-def mathml_splice_div(set, args):
-    operand_0 = check_operand_type(set, args[0][0])
-    operand_1 = check_operand_type(set, args[1][0])
-    return ["\n<mfrac>\n<mrow>" + operand_1 + "\n</mrow>\n<mrow>" + operand_0 + "</mrow>\n</mfrac>", default_precedence]
-
-def mathml_splice_max(set, args):
-    operand_0 = check_operand_type(set, args[0][0])
-    operand_1 = check_operand_type(set, args[1][0])
-    return ["\n<mtext>max ( </mtext>" + operand_1 + "\n<mtext> , </mtext>" + operand_0 + "\n<mtext> ) </mtext>", default_precedence]
-
-def mathml_splice_mul(set, args):
-    operand_0 = check_operand_type(set, args[0][0])
-    operand_1 = check_operand_type(set, args[1][0])
-    if args[0][1] < mul_precedence:
-        operand_0 = put_brackets(args[0][0])
-    if args[1][1] < mul_precedence:
-        operand_1 = put_brackets(args[1][0])
-    return [operand_1 + "\n<mo>*</mo>" + operand_0, mul_precedence]
-
-def mathml_splice_sub(set, args):
-    operand_0 = check_operand_type(set, args[0][0])
-    operand_1 = check_operand_type(set, args[1][0])
-    if args[0][1] < sub_precedence:
-        operand_0 = put_brackets(args[0][0])
-    if args[1][1] < sub_precedence:
-        operand_1 = put_brackets(args[1][0])
-    return [operand_1 + "\n<mo>-</mo>" + operand_0, sub_precedence]
-
-def mathml_splice_read(set, args):
-    return ["\n<maction actiontype='tooltip'>\n<mi>" + args[1][0] + args[0][0] + "</mi>\n<mtext>placeholder</mtext>\n</maction>", default_precedence]
-
-def mathml_splice_read_reg(set, args):
-    return ["\n<maction actiontype='tooltip'>\n<mi>" + args[0][0] + "</mi>\n<mtext>placeholder</mtext>\n</maction>", default_precedence]
-
-def mathml_splice_min(set, args):
-    operand_0 = check_operand_type(set, args[0][0])
-    operand_1 = check_operand_type(set, args[1][0])
-    return ["\n<mtext>min ( </mtext>" + operand_1 + "\n<mtext> , </mtext>" + operand_0 + "\n<mtext> ) </mtext>", default_precedence]
-
-def mathml_splice_lshft(set, args):
-    operand_0 = check_operand_type(set, args[0][0])
-    operand_1 = check_operand_type(set, args[1][0])
-    if args[0][1] < shft_precedence:
-        operand_0 = put_brackets(args[0][0])
-    if args[1][1] < shft_precedence:
-        operand_1 = put_brackets(args[1][0])
-    return [operand_1 + "\n<mo>&lt;&lt;</mo>" + operand_0, shft_precedence]
-
-def mathml_splice_rshft(set, args):
-    operand_0 = check_operand_type(set, args[0][0])
-    operand_1 = check_operand_type(set, args[1][0])
-    if args[0][1] < mul_precedence:
-        operand_0 = put_brackets(args[0][0])
-    if args[1][1] < mul_precedence:
-        operand_1 = put_brackets(args[1][0])
-    return [operand_1 + "\n<mo>&gt;&gt;</mo>" + operand_0, mul_precedence]
-
-def mathml_splice_and(set, args):
-    operand_0 = check_operand_type(set, args[0][0])
-    operand_1 = check_operand_type(set, args[1][0])
-    if args[0][1] < and_precedence:
-        operand_0 = put_brackets(args[0][0])
-    if args[1][1] < and_precedence:
-        operand_1 = put_brackets(args[1][0])
-    return [operand_1 + "\n<mo>&amp;</mo>" + operand_0, and_precedence]
-
 def emit_fadd(tmp_id, args):
     c("double tmp{0} = {1} + {2};".format(tmp_id, args[1], args[0]))
     return tmp_id + 1
@@ -212,22 +109,22 @@ def emit_and(tmp_id, args):
     return tmp_id + 1
 
 ops = {}
-#                     (n operands, emitter1, emitter2)
-ops["FADD"]     = (2, emit_fadd, mathml_splice_add)
-ops["FDIV"]     = (2, emit_fdiv, mathml_splice_div)
-ops["FMAX"]     = (2, emit_fmax, mathml_splice_max)
-ops["FMUL"]     = (2, emit_fmul, mathml_splice_mul)
-ops["FSUB"]     = (2, emit_fsub, mathml_splice_sub)
-ops["READ"]     = (2, emit_read, mathml_splice_read)
-ops["READ_REG"] = (1, emit_read_reg, mathml_splice_read_reg)
-ops["UADD"]     = (2, emit_uadd, mathml_splice_add)
-ops["UDIV"]     = (2, emit_udiv, mathml_splice_div)
-ops["UMUL"]     = (2, emit_umul, mathml_splice_mul)
-ops["USUB"]     = (2, emit_usub, mathml_splice_sub)
-ops["UMIN"]     = (2, emit_umin, mathml_splice_min)
-ops["<<"]       = (2, emit_lshft, mathml_splice_lshft)
-ops[">>"]       = (2, emit_rshft, mathml_splice_rshft)
-ops["AND"]      = (2, emit_and, mathml_splice_and)
+#                     (n operands, emitter)
+ops["FADD"]     = (2, emit_fadd)
+ops["FDIV"]     = (2, emit_fdiv)
+ops["FMAX"]     = (2, emit_fmax)
+ops["FMUL"]     = (2, emit_fmul)
+ops["FSUB"]     = (2, emit_fsub)
+ops["READ"]     = (2, emit_read)
+ops["READ_REG"] = (1, emit_read_reg)
+ops["UADD"]     = (2, emit_uadd)
+ops["UDIV"]     = (2, emit_udiv)
+ops["UMUL"]     = (2, emit_umul)
+ops["USUB"]     = (2, emit_usub)
+ops["UMIN"]     = (2, emit_umin)
+ops["<<"]       = (2, emit_lshft)
+ops[">>"]       = (2, emit_rshft)
+ops["AND"]      = (2, emit_and)
 
 def brkt(subexp):
     if " " in subexp:
@@ -270,27 +167,6 @@ hw_vars = {
         "$QueryMode": { 'c': "perf->devinfo.query_mode" },
 }
 
-def splice_mathml_expression(set, equation, tag):
-    tokens = equation.split()
-    mathml_stack = []
-    tmp_xml_operand = ""
-    for token in tokens:
-        if not mathml_stack:
-            token = check_operand_type(set, token)
-        mathml_stack.append([token, default_precedence])
-        while mathml_stack and mathml_stack[-1][0] in ops:
-            op = mathml_stack.pop()[0]
-            argc, callback, mathml_callback = ops[op]
-            xml_args = []
-            for i in range(0, argc):
-                xml_operand = mathml_stack.pop()
-                xml_args.append(xml_operand)
-            tmp_xml_operand = mathml_callback(set, xml_args)
-            mathml_stack.append(tmp_xml_operand)
-    xml_string = mathml_stack.pop()[0]
-    equation_descr = "<mi>" + tag + "</mi><mo> = </mo>"
-    return "<mathml_" + tag + ">" + equation_descr + xml_string + "</mathml_" + tag + ">"
-
 def output_rpn_equation_code(set, counter, equation):
     c("/* RPN equation: " + equation + " */")
     tokens = equation.split()
@@ -302,7 +178,7 @@ def output_rpn_equation_code(set, counter, equation):
         stack.append(token)
         while stack and stack[-1] in ops:
             op = stack.pop()
-            argc, callback, mathml_callback = ops[op]
+            argc, callback = ops[op]
             args = []
             for i in range(0, argc):
                 operand = stack.pop()
@@ -656,7 +532,6 @@ def main():
     parser = argparse.ArgumentParser()
     parser.add_argument("--header", help="Header file to write")
     parser.add_argument("--code", help="C file to write")
-    parser.add_argument("--xml-out", help="Output XML files (adding mathml equations)")
     parser.add_argument("xml_files", nargs='+', help="List of xml metrics files to process")
 
     args = parser.parse_args()
@@ -669,15 +544,6 @@ def main():
     for xml_file in args.xml_files:
         gens.append(Gen(xml_file))
 
-    if args.xml_out:
-        for gen in gens:
-            for set in gen.sets:
-                for counter in set.counters:
-                    xml_equation = splice_mathml_expression(set, counter.get('equation'), "EQ")
-                    counter.append(et.fromstring(xml_equation))
-            gen.xml.write(gen.filename)
-
-
     copyright = textwrap.dedent("""\
         /* Autogenerated file, DO NOT EDIT manually! generated by {}
          *
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
