Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BECA05BD8E2
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 02:46:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F18FF10E1BA;
	Tue, 20 Sep 2022 00:46:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2014110E0DF;
 Tue, 20 Sep 2022 00:46:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18065AADD2;
 Tue, 20 Sep 2022 00:46:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 20 Sep 2022 00:46:23 -0000
Message-ID: <166363478306.2841.15916405216161430162@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220919223259.263525-1-matthew.d.roper@intel.com>
In-Reply-To: <20220919223259.263525-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Explicit_MCR_handling_and_MTL_steering?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Explicit MCR handling and MTL steering
URL   : https://patchwork.freedesktop.org/series/108755/
State : warning

== Summary ==

Error: dim checkpatch failed
b8fad010a955 drm/i915/gen8: Create separate reg definitions for new MCR registers
-:266: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#266: FILE: drivers/gpu/drm/i915/intel_pm.c:4329:
+	intel_uncore_write(&dev_priv->uncore, GEN8_MISCCPCTL, misccpctl & ~GEN8_DOP_CLOCK_GATE_ENABLE);

-:285: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#285: FILE: drivers/gpu/drm/i915/intel_pm.c:4503:
+	intel_uncore_write(&dev_priv->uncore, GEN8_MISCCPCTL, intel_uncore_read(&dev_priv->uncore, GEN8_MISCCPCTL) &

total: 0 errors, 2 warnings, 0 checks, 207 lines checked
f2021d24f2ef drm/i915/xehp: Create separate reg definitions for new MCR registers
eadc4174dc1e drm/i915/gt: Drop a few unused register definitions
fa7d3af0dfed drm/i915/gt: Correct prefix on a few registers
8cad69165b35 drm/i915/xehp: Check for faults on primary GAM
268e98c61eca drm/i915: Define MCR registers explicitly
-:149: WARNING:LONG_LINE_COMMENT: line length of 102 exceeds 100 columns
#149: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:944:
+#define XEHP_LNCFCMOCS(i)			MCR_REG(0xb020 + (i) * 4)	/* L3 Cache Control */

total: 0 errors, 1 warnings, 0 checks, 336 lines checked
ca16a86aaa43 drm/i915/gt: Always use MCR functions on multicast registers
512f53fa7952 drm/i915/guc: Handle save/restore of MCR registers explicitly
a503a645efa4 drm/i915/gt: Add MCR-specific workaround initializers
-:119: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#119: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:297:
+	wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
 		     PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);

-:622: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#622: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:2248:
+		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
 			     GEN12_DISABLE_READ_SUPPRESSION);

-:641: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#641: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:2264:
+		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
 			     MDQ_ARBITRATION_MODE | UGM_BACKUP_MODE);

-:705: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#705: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:2316:
+			   0 /* Wa_14012342262 :write-only reg, so skip
+				verification */,

total: 0 errors, 1 warnings, 3 checks, 883 lines checked
b70ee2ae2afa drm/i915: Define multicast registers as a new type
-:590: WARNING:NEW_TYPEDEFS: do not add new typedefs
#590: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:107:
+typedef struct {

total: 0 errors, 1 warnings, 0 checks, 538 lines checked
b2d91bc03cfd drm/i915/mtl: Add multicast steering for render GT
-:99: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#99: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.c:154:
+			gt->info.l3bank_mask |= (0x3 << 2*i);
 			                                 ^

-:127: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#127: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.c:242:
+		old_mcr = mcr = intel_uncore_read_fw(uncore, GEN8_MCR_SELECTOR);

-:138: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#138: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.c:251:
+		old_mcr = mcr = intel_uncore_read_fw(uncore, GEN8_MCR_SELECTOR);

total: 0 errors, 0 warnings, 3 checks, 226 lines checked
6fff7a4c5772 drm/i915/mtl: Add multicast steering for media GT
-:35: CHECK:LINE_SPACING: Please don't use multiple blank lines
#35: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.c:128:
+
+

total: 0 errors, 0 warnings, 1 checks, 79 lines checked


