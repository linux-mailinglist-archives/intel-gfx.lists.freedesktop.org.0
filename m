Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D6C939FB3
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 13:22:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1630210E57A;
	Tue, 23 Jul 2024 11:22:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hQC7VA8H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C44010E576
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 11:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721733712; x=1753269712;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=92VWHF3jjQ0LOFu8mc0SRcS87YTw7CHWrn3kZhJ5/FA=;
 b=hQC7VA8HfiWreV/TvPcwikFQ7yLI0YVsWomWLlefzCfYclyhd/MMrKBw
 gML8FjhDlItJybosLJLc1AMkFTaVHAMqMmsNIOHxvuEJ1DM8Ty1Quy+dM
 Y8VPdzGUy8KSAePgq9U5uZ5aIyIMo/g1kDASZOiy/5fDMwnQterz/D1tt
 F2PoYwPgEjTR9v34ePoM7/4wljh/J9JuwIYYj7hivz8HQQTf8pnD0eeRv
 MKoB92tgYhvn7oYe+AW59YMlBj0hYqTvkKtk2ywAJ7PfZpkBnM0xDqV2Z
 ZiRuKGftC5KhUVaf6cmGOCuX73kMFjQr4w9aQG4klTIz257WrMOq+CDEp Q==;
X-CSE-ConnectionGUID: SddrJFpvSP6OxOv9CTTw+A==
X-CSE-MsgGUID: cenneS2wTMutJGG0ew06/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19225439"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="19225439"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:21:52 -0700
X-CSE-ConnectionGUID: o7tpuAKQReeoH0HN0VtTGw==
X-CSE-MsgGUID: j2SHw3xlQyeswae4iyyyUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52267486"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.52])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:21:51 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: [RFC PATCH 7/9] drm/i915/gt: Allow the creation of multi-mode CCS
 masks
Date: Tue, 23 Jul 2024 13:20:44 +0200
Message-ID: <20240723112046.123938-8-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240723112046.123938-1-andi.shyti@linux.intel.com>
References: <20240723112046.123938-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Until now, we have only set CCS mode balancing to 1, which means
that only one compute engine is exposed to the user. The stream
of compute commands submitted to that engine is then shared among
all the dedicated execution units.

This is done by calling the 'intel_gt_apply_ccs_mode(); function.

With this change, the aforementioned function takes an additional
parameter called 'mode' that specifies the desired mode to be set
for the CCS engines balancing. The mode parameter can have the
following values:

 - mode = 0: CCS load balancing mode 1 (1 CCS engine exposed)
 - mode = 1: CCS load balancing mode 2 (2 CCS engines exposed)
 - mode = 3: CCS load balancing mode 4 (4 CCS engines exposed)

This allows us to generate the appropriate register value to be
written to CCS_MODE, configuring how the exposed engine streams
will be submitted to the execution units.

No functional changes are intended yet, as no mode higher than
'0' is currently being set.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c | 78 ++++++++++++++++-----
 drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h |  4 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c |  2 +-
 3 files changed, 65 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
index 8acb9ee5b511..0d733b3e8df3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
@@ -4,7 +4,6 @@
  */
 
 #include "i915_drv.h"
-#include "intel_gt.h"
 #include "intel_gt_ccs_mode.h"
 #include "intel_gt_print.h"
 #include "intel_gt_regs.h"
@@ -57,33 +56,80 @@ void intel_gt_ccs_mode_init(struct intel_gt *gt)
 	info->engine_mask |= BIT(_CCS(first_ccs));
 }
 
-void intel_gt_apply_ccs_mode(struct intel_gt *gt)
+void intel_gt_apply_ccs_mode(struct intel_gt *gt, u32 mode)
 {
+	unsigned long cslices_mask = gt->ccs.cslice_mask;
+	u32 mode_val = 0;
+	int ccs_id;
 	int cslice;
-	u32 mode = 0;
-	int first_ccs = __ffs(CCS_MASK(gt));
+	u32 m = mode;
 
 	lockdep_assert_held(&gt->ccs.mutex);
 
 	if (!IS_DG2(gt->i915))
 		return;
 
-	/* Build the value for the fixed CCS load balancing */
-	for (cslice = 0; cslice < I915_MAX_CCS; cslice++) {
-		if (gt->ccs.cslice_mask & BIT(cslice))
-			/*
-			 * If available, assign the cslice
-			 * to the first available engine...
-			 */
-			mode |= XEHP_CCS_MODE_CSLICE(cslice, first_ccs);
+	/*
+	 * The mode has two bit dedicated for each engine
+	 * that will be used for the CCS balancing algorithm:
+	 *
+	 *    BIT | CCS slice
+	 *   ------------------
+	 *     0  | CCS slice
+	 *     1  |     0
+	 *   ------------------
+	 *     2  | CCS slice
+	 *     3  |     1
+	 *   ------------------
+	 *     4  | CCS slice
+	 *     5  |     2
+	 *   ------------------
+	 *     6  | CCS slice
+	 *     7  |     3
+	 *   ------------------
+	 *
+	 * When a CCS slice is not available, then we will write 0x7,
+	 * oterwise we will write the user engine id which load will
+	 * be forwarded to that slice.
+	 *
+	 * The possible configurations are:
+	 *
+	 * 1 engine (ccs0):
+	 *   slice 0, 1, 2, 3: ccs0
+	 *
+	 * 2 engines (ccs0, ccs1):
+	 *   slice 0, 2: ccs0
+	 *   slice 1, 3: ccs1
+	 *
+	 * 4 engines (ccs0, ccs1, ccs2, ccs3):
+	 *   slice 0: ccs0
+	 *   slice 1: ccs1
+	 *   slice 2: ccs2
+	 *   slice 3: ccs3
+	 */
+	ccs_id = __ffs(cslices_mask);
 
-		else
+	for (cslice = 0; cslice < I915_MAX_CCS; cslice++) {
+		if (!(cslices_mask & BIT(cslice))) {
 			/*
-			 * ... otherwise, mark the cslice as
-			 * unavailable if no CCS dispatches here
+			 * If not available, mark the slice as unavailable
+			 * and no task will be dispatched here.
 			 */
-			mode |= XEHP_CCS_MODE_CSLICE(cslice,
+			mode_val |= XEHP_CCS_MODE_CSLICE(cslice,
 						     XEHP_CCS_MODE_CSLICE_MASK);
+			continue;
+		}
+
+		mode_val |= XEHP_CCS_MODE_CSLICE(cslice, ccs_id);
+
+		if (!m) {
+			m = mode;
+			ccs_id = __ffs(cslices_mask);
+			continue;
+		}
+
+		m--;
+		ccs_id = find_next_bit(&cslices_mask, I915_MAX_CCS, ccs_id + 1);
 	}
 
 	gt->ccs.mode_reg_val = mode;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h
index 5793c4178bd9..c60bfdb54e37 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h
@@ -6,9 +6,9 @@
 #ifndef __INTEL_GT_CCS_MODE_H__
 #define __INTEL_GT_CCS_MODE_H__
 
-struct intel_gt;
+#include "intel_gt.h"
 
-void intel_gt_apply_ccs_mode(struct intel_gt *gt);
+void intel_gt_apply_ccs_mode(struct intel_gt *gt, u32 mode);
 void intel_gt_sysfs_ccs_init(struct intel_gt *gt);
 void intel_gt_ccs_mode_init(struct intel_gt *gt);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 379b3dde3bbd..8770bde646eb 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2730,7 +2730,7 @@ static void ccs_engine_wa_mode(struct intel_engine_cs *engine, struct i915_wa_li
 	 * assign all slices to a single CCS. We will call it CCS mode 1
 	 */
 	mutex_lock(&gt->ccs.mutex);
-	intel_gt_apply_ccs_mode(gt);
+	intel_gt_apply_ccs_mode(gt, 0);
 	wa_masked_en(wal, XEHP_CCS_MODE, gt->ccs.mode_reg_val);
 	mutex_unlock(&gt->ccs.mutex);
 }
-- 
2.45.2

