Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E044EE260
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 22:10:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8757F10E1A6;
	Thu, 31 Mar 2022 20:10:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E0EF510E1A6;
 Thu, 31 Mar 2022 20:10:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E027AA47EB;
 Thu, 31 Mar 2022 20:10:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 31 Mar 2022 20:10:33 -0000
Message-ID: <164875743391.14474.18024655430807024522@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220330232858.3204283-1-matthew.d.roper@intel.com>
In-Reply-To: <20220330232858.3204283-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Explicit_handling_of_multicast_registers_=28rev2=29?=
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

Series: i915: Explicit handling of multicast registers (rev2)
URL   : https://patchwork.freedesktop.org/series/101992/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4e9aab13ef6f drm/i915/gen8: Create separate reg definitions for new MCR registers
-:263: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#263: FILE: drivers/gpu/drm/i915/intel_pm.c:7420:
+	intel_uncore_write(&dev_priv->uncore, GEN8_MISCCPCTL, misccpctl & ~GEN8_DOP_CLOCK_GATE_ENABLE);

-:282: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#282: FILE: drivers/gpu/drm/i915/intel_pm.c:7582:
+	intel_uncore_write(&dev_priv->uncore, GEN8_MISCCPCTL, intel_uncore_read(&dev_priv->uncore, GEN8_MISCCPCTL) &

total: 0 errors, 2 warnings, 0 checks, 209 lines checked
960e8b069a70 drm/i915/xehp: Create separate reg definitions for new MCR registers
1f402e414e12 drm/i915/gt: Drop a few unused register definitions
e01b2ee254ba drm/i915/gt: Correct prefix on a few registers
6513044bf45f drm/i915/xehp: Check for faults on all mslices
b49713c5b6f0 drm/i915: Drop duplicated definition of XEHPSDV_FLAT_CCS_BASE_ADDR
8761ebb0b0f7 drm/i915: Move XEHPSDV_TILE0_ADDR_RANGE to GT register header
4a259d727d7c drm/i915: Define MCR registers explicitly
-:149: WARNING:LONG_LINE_COMMENT: line length of 102 exceeds 100 columns
#149: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:896:
+#define XEHP_LNCFCMOCS(i)			MCR_REG(0xb020 + (i) * 4)	/* L3 Cache Control */

total: 0 errors, 1 warnings, 0 checks, 327 lines checked
b86b7d1f9eed drm/i915/gt: Move multicast register handling to a dedicated file
-:386: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#386: 
new file mode 100644

-:541: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#541: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.c:151:
+	old_mcr = mcr = intel_uncore_read_fw(uncore, GEN8_MCR_SELECTOR);

-:608: CHECK:LINE_SPACING: Please don't use multiple blank lines
#608: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.c:218:
+
+

total: 0 errors, 1 warnings, 2 checks, 937 lines checked
f210d9f6bb0d drm/i915/gt: Cleanup interface for MCR operations
-:294: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#294: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.c:241:
+void intel_gt_mcr_multicast_write(struct intel_gt *gt,
+				i915_reg_t reg, u32 value)

-:313: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#313: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.c:256:
+void intel_gt_mcr_multicast_write_fw(struct intel_gt *gt,
+				i915_reg_t reg, u32 value)

total: 0 errors, 0 warnings, 2 checks, 585 lines checked
f6a046f25e7a drm/i915/gt: Always use MCR functions on multicast registers
8b11a87b6b95 drm/i915/guc: Handle save/restore of MCR registers explicitly
5ddc6625b12c drm/i915/gt: Add MCR-specific workaround initializers
-:104: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#104: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:289:
+	wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
 		     PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);

-:519: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#519: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:2110:
+		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4,
 			     GEN12_DISABLE_HDR_PAST_PAYLOAD_HOLD_FIX);

-:553: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#553: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:2143:
+		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
 			     GEN12_DISABLE_READ_SUPPRESSION);

-:572: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#572: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:2159:
+		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
 			     MDQ_ARBITRATION_MODE | UGM_BACKUP_MODE);

total: 0 errors, 0 warnings, 4 checks, 745 lines checked
6c89ba18065f drm/i915: Define multicast registers as a new type
-:605: WARNING:NEW_TYPEDEFS: do not add new typedefs
#605: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:107:
+typedef struct {

total: 0 errors, 1 warnings, 0 checks, 506 lines checked
49afc6dca4e4 drm/i915/xehp: Eliminate shared/implicit steering


