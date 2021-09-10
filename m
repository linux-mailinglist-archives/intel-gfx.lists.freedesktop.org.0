Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 967904066EC
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 07:53:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5169D6E970;
	Fri, 10 Sep 2021 05:53:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F38D76E96D;
 Fri, 10 Sep 2021 05:53:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E1250A73C9;
 Fri, 10 Sep 2021 05:53:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Sep 2021 05:53:47 -0000
Message-ID: <163125322789.14827.2864268274946@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210910053317.3379249-1-matthew.d.roper@intel.com>
In-Reply-To: <20210910053317.3379249-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Simplify_mmio_handling_=26_add_new_DG2_shadow_table?=
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

Series: i915: Simplify mmio handling & add new DG2 shadow table
URL   : https://patchwork.freedesktop.org/series/94534/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9184ecd8873a drm/i915/uncore: Convert gen6/gen7 read operations to fwtable
2d9ea1a952fa drm/i915/uncore: Associate shadow table with uncore
-:42: CHECK:LINE_SPACING: Please don't use multiple blank lines
#42: FILE: drivers/gpu/drm/i915/intel_uncore.c:1051:
 
+

-:86: CHECK:LINE_SPACING: Please don't use multiple blank lines
#86: FILE: drivers/gpu/drm/i915/intel_uncore.c:1720:
 
+

-:94: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'uncore' - possible side-effects?
#94: FILE: drivers/gpu/drm/i915/intel_uncore.c:1985:
+#define ASSIGN_SHADOW_TABLE(uncore, d) \
+{ \
+	(uncore)->shadowed_reg_table = d; \
+	(uncore)->shadowed_reg_table_entries = ARRAY_SIZE((d)); \
+}

-:94: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'd' - possible side-effects?
#94: FILE: drivers/gpu/drm/i915/intel_uncore.c:1985:
+#define ASSIGN_SHADOW_TABLE(uncore, d) \
+{ \
+	(uncore)->shadowed_reg_table = d; \
+	(uncore)->shadowed_reg_table_entries = ARRAY_SIZE((d)); \
+}

total: 0 errors, 0 warnings, 4 checks, 128 lines checked
2a61c25b475a drm/i915/uncore: Replace gen8 write functions with general fwtable
60268645b0c1 drm/i915/uncore: Drop gen11/gen12 mmio write handlers
bc9eef9ef981 drm/i915/uncore: Drop gen11 mmio read handlers
-:39: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#39: FILE: drivers/gpu/drm/i915/intel_uncore.c:1572:
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

-:64: ERROR:OPEN_BRACE: open brace '{' following function definitions go on the next line
#64: FILE: drivers/gpu/drm/i915/intel_uncore.c:1585:
+static enum forcewake_domains
+fwtable_reg_read_fw_domains(struct intel_uncore *uncore, i915_reg_t reg) {

total: 2 errors, 0 warnings, 0 checks, 86 lines checked
2c15e729f1d8 drm/i915/dg2: Add DG2-specific shadow register table


