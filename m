Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8425F1A03
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Oct 2022 07:35:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B534A10EE46;
	Sat,  1 Oct 2022 05:35:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E2DBE10EE41;
 Sat,  1 Oct 2022 05:35:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A83FEA7DFC;
 Sat,  1 Oct 2022 05:35:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sat, 01 Oct 2022 05:35:39 -0000
Message-ID: <166460253966.32393.1919495796878943573@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221001004550.3031431-1-matthew.d.roper@intel.com>
In-Reply-To: <20221001004550.3031431-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Explicit_MCR_handling_and_MTL_steering_=28rev3=29?=
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

Series: Explicit MCR handling and MTL steering (rev3)
URL   : https://patchwork.freedesktop.org/series/108755/
State : warning

== Summary ==

Error: dim checkpatch failed
98e3505e9ca1 drm/i915/gen8: Create separate reg definitions for new MCR registers
-:292: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#292: FILE: drivers/gpu/drm/i915/intel_pm.c:4343:
+	intel_uncore_write(&dev_priv->uncore, GEN8_MISCCPCTL, misccpctl & ~GEN8_DOP_CLOCK_GATE_ENABLE);

-:311: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#311: FILE: drivers/gpu/drm/i915/intel_pm.c:4517:
+	intel_uncore_write(&dev_priv->uncore, GEN8_MISCCPCTL, intel_uncore_read(&dev_priv->uncore, GEN8_MISCCPCTL) &

total: 0 errors, 2 warnings, 0 checks, 223 lines checked
b00aea4326d3 drm/i915/xehp: Create separate reg definitions for new MCR registers
010e40263fbf drm/i915/gt: Drop a few unused register definitions
059a86ae20fc drm/i915/gt: Correct prefix on a few registers
7b8d6d5b1a51 drm/i915/gt: Add intel_gt_mcr_multicast_rmw() operation
035142257827 drm/i915/xehp: Check for faults on primary GAM
2e41a4442059 drm/i915/gt: Add intel_gt_mcr_wait_for_reg_fw()
ccf70c008b7c drm/i915: Define MCR registers explicitly
-:149: WARNING:LONG_LINE_COMMENT: line length of 102 exceeds 100 columns
#149: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:948:
+#define XEHP_LNCFCMOCS(i)			MCR_REG(0xb020 + (i) * 4)	/* L3 Cache Control */

total: 0 errors, 1 warnings, 0 checks, 351 lines checked
d3286964cb22 drm/i915/gt: Always use MCR functions on multicast registers
a00c2e3cdbd1 drm/i915/guc: Handle save/restore of MCR registers explicitly
5454314ef6c3 drm/i915/gt: Add MCR-specific workaround initializers
-:119: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#119: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:297:
+	wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
 		     PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);

-:631: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#631: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:2255:
+		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
 			     GEN12_DISABLE_READ_SUPPRESSION);

-:650: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#650: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:2271:
+		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
 			     MDQ_ARBITRATION_MODE | UGM_BACKUP_MODE);

-:714: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#714: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:2323:
+			   0 /* Wa_14012342262 :write-only reg, so skip
+				verification */,

total: 0 errors, 1 warnings, 3 checks, 899 lines checked
48ce34e8c471 drm/i915: Define multicast registers as a new type
-:704: WARNING:NEW_TYPEDEFS: do not add new typedefs
#704: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:107:
+typedef struct {

total: 0 errors, 1 warnings, 0 checks, 636 lines checked
628485d2e33d drm/i915/mtl: Add multicast steering for render GT
-:99: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#99: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.c:164:
+			gt->info.l3bank_mask |= (0x3 << 2*i);
 			                                 ^

-:127: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#127: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.c:258:
+		old_mcr = mcr = intel_uncore_read_fw(uncore, GEN8_MCR_SELECTOR);

-:138: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#138: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.c:267:
+		old_mcr = mcr = intel_uncore_read_fw(uncore, GEN8_MCR_SELECTOR);

total: 0 errors, 0 warnings, 3 checks, 226 lines checked
ac8a45eb9091 drm/i915/mtl: Add multicast steering for media GT
-:35: CHECK:LINE_SPACING: Please don't use multiple blank lines
#35: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.c:138:
+
+

total: 0 errors, 0 warnings, 1 checks, 79 lines checked


