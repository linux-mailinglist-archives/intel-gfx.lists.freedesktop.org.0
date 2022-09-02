Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A747A5AA4DF
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 03:13:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DA6E10E3E8;
	Fri,  2 Sep 2022 01:13:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8785B10E3CB;
 Fri,  2 Sep 2022 01:13:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 718F8AADD6;
 Fri,  2 Sep 2022 01:13:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 02 Sep 2022 01:13:08 -0000
Message-ID: <166208118843.22602.16196206813494956260@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220902004740.2849371-1-matthew.d.roper@intel.com>
In-Reply-To: <20220902004740.2849371-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Prep_work_for_explicit_MCR_handling?=
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

Series: i915: Prep work for explicit MCR handling
URL   : https://patchwork.freedesktop.org/series/108054/
State : warning

== Summary ==

Error: dim checkpatch failed
3ce98ef46d9b drm/i915/gen8: Create separate reg definitions for new MCR registers
-:266: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#266: FILE: drivers/gpu/drm/i915/intel_pm.c:7587:
+	intel_uncore_write(&dev_priv->uncore, GEN8_MISCCPCTL, misccpctl & ~GEN8_DOP_CLOCK_GATE_ENABLE);

-:285: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#285: FILE: drivers/gpu/drm/i915/intel_pm.c:7762:
+	intel_uncore_write(&dev_priv->uncore, GEN8_MISCCPCTL, intel_uncore_read(&dev_priv->uncore, GEN8_MISCCPCTL) &

total: 0 errors, 2 warnings, 0 checks, 207 lines checked
37c91523ab34 drm/i915/xehp: Create separate reg definitions for new MCR registers
03431b9ab31b drm/i915/gt: Drop a few unused register definitions
1fa3f100ad25 drm/i915/gt: Correct prefix on a few registers
8a526d045626 drm/i915: Define MCR registers explicitly
-:149: WARNING:LONG_LINE_COMMENT: line length of 102 exceeds 100 columns
#149: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:939:
+#define XEHP_LNCFCMOCS(i)			MCR_REG(0xb020 + (i) * 4)	/* L3 Cache Control */

total: 0 errors, 1 warnings, 0 checks, 319 lines checked
a502994b0a3d drm/i915/gt: Always use MCR functions on multicast registers
a2a8cd084fa6 drm/i915/gt: Add MCR-specific workaround initializers
-:121: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#121: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:297:
+	wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
 		     PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);

-:613: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#613: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:2244:
+		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
 			     GEN12_DISABLE_READ_SUPPRESSION);

-:632: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#632: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:2260:
+		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
 			     MDQ_ARBITRATION_MODE | UGM_BACKUP_MODE);

-:696: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#696: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:2312:
+			   0 /* Wa_14012342262 :write-only reg, so skip
+				verification */,

total: 0 errors, 1 warnings, 3 checks, 872 lines checked


