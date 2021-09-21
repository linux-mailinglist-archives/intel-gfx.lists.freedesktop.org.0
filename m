Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DF54137E5
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 18:57:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE76589A0F;
	Tue, 21 Sep 2021 16:57:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A3ED489A0E;
 Tue, 21 Sep 2021 16:57:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9B5FFA47E2;
 Tue, 21 Sep 2021 16:57:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 16:57:41 -0000
Message-ID: <163224346160.15888.17227004571087624202@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210910201030.3436066-1-matthew.d.roper@intel.com>
In-Reply-To: <20210910201030.3436066-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Simplify_mmio_handling_=26_add_new_DG2_shadow_table?=
 =?utf-8?q?_=28rev3=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: i915: Simplify mmio handling & add new DG2 shadow table (rev3)
URL   : https://patchwork.freedesktop.org/series/94534/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
20b20ad7947c drm/i915/uncore: Convert gen6/gen7 read operations to fwtable
e6b2795f4353 drm/i915/uncore: Associate shadow table with uncore
-:43: CHECK:LINE_SPACING: Please don't use multiple blank lines
#43: FILE: drivers/gpu/drm/i915/intel_uncore.c:1041:
 
+

-:87: CHECK:LINE_SPACING: Please don't use multiple blank lines
#87: FILE: drivers/gpu/drm/i915/intel_uncore.c:1710:
 
+

-:95: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'uncore' - possible side-effects?
#95: FILE: drivers/gpu/drm/i915/intel_uncore.c:1975:
+#define ASSIGN_SHADOW_TABLE(uncore, d) \
+{ \
+	(uncore)->shadowed_reg_table = d; \
+	(uncore)->shadowed_reg_table_entries = ARRAY_SIZE((d)); \
+}

-:95: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'd' - possible side-effects?
#95: FILE: drivers/gpu/drm/i915/intel_uncore.c:1975:
+#define ASSIGN_SHADOW_TABLE(uncore, d) \
+{ \
+	(uncore)->shadowed_reg_table = d; \
+	(uncore)->shadowed_reg_table_entries = ARRAY_SIZE((d)); \
+}

total: 0 errors, 0 warnings, 4 checks, 128 lines checked
a8dd5ae3188f drm/i915/uncore: Replace gen8 write functions with general fwtable
3554b1cc5b33 drm/i915/uncore: Drop gen11/gen12 mmio write handlers
31b02534892f drm/i915/uncore: Drop gen11 mmio read handlers
-:40: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#40: FILE: drivers/gpu/drm/i915/intel_uncore.c:1570:
+#define __gen_fwtable_read(x) \
 static u##x \
+fwtable_read##x(struct intel_uncore *uncore, i915_reg_t reg, bool trace) \
+{ \
 	enum forcewake_domains fw_engine; \
 	GEN6_READ_HEADER(x); \
+	fw_engine = __fwtable_reg_read_fw_domains(uncore, offset); \
 	if (fw_engine) \
 		__force_wake_auto(uncore, fw_engine); \
 	val = __raw_uncore_read##x(uncore, reg); \
 	GEN6_READ_FOOTER; \
 }

-:65: ERROR:OPEN_BRACE: open brace '{' following function definitions go on the next line
#65: FILE: drivers/gpu/drm/i915/intel_uncore.c:1583:
+static enum forcewake_domains
+fwtable_reg_read_fw_domains(struct intel_uncore *uncore, i915_reg_t reg) {

total: 2 errors, 0 warnings, 0 checks, 81 lines checked
6d85e55215cb drm/i915/dg2: Add DG2-specific shadow register table


