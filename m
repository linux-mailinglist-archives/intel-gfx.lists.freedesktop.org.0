Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2D8939FAC
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 13:21:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F63510E56C;
	Tue, 23 Jul 2024 11:21:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WJ/rdiiN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5122110E56C
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 11:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721733695; x=1753269695;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fnHe+2JHW6mThCaVcoUDw7wPIZk+Sw4J/pmFZ5+90Uw=;
 b=WJ/rdiiNxTYAXeWtr4JWarMgczz+ePOBXac+SrdQtdJ3RTlh6Fl4L0g9
 xS0t+Ds5XlgFlbyZPSWY84Y4U8gaHjiFALoEOendvbdkKTyq2tvR3A6f/
 tdD+VftTMiKOVxuo1IeNny7zCEs2H4/SE55TjZZRnlgfFvQ23bg/KU9yg
 IgxhemjJ3oNPCfQGVxLa1YiXJBr7Sx+swcCO93UqEdN7tByxwADWlNRkW
 5n0//Fy0lqrXHoPNUD1zwJRne+I6TAIhzERDSeLJGX/t3x/VD+b/2qdyf
 EbPbAsSNGEbHw5bt/KxfxxG5bzrOsasZwnYm9JmqXl4tOCAyxZYngeQxS w==;
X-CSE-ConnectionGUID: /QVHKN52RiO6PxGROMVGBg==
X-CSE-MsgGUID: gTFCxsllS9mchsf8XDbIfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19225388"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="19225388"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:21:35 -0700
X-CSE-ConnectionGUID: BLwFTl+nRQSzW4b0y1MiNg==
X-CSE-MsgGUID: q7NfEsb5RcOKXy4/gTdA4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52267439"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.52])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:21:34 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: [RFC PATCH 3/9] drm/i915/gt: Move CCS mode mask creation to
 intel_ccs_mode.c
Date: Tue, 23 Jul 2024 13:20:40 +0200
Message-ID: <20240723112046.123938-4-andi.shyti@linux.intel.com>
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

In anticipation of upcoming patches, it is more convenient to
move the CCS mode mask creation to the intel_ccs_mode.c file,
which serves as a placeholder for all CCS engine settings.

No functional changes intended.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c   | 50 ---------------------
 drivers/gpu/drm/i915/gt/intel_gt.c          |  3 ++
 drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c | 46 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h |  1 +
 4 files changed, 50 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index ea908dbec2ab..8011df30023e 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -812,32 +812,6 @@ static void engine_mask_apply_media_fuses(struct intel_gt *gt)
 	GEM_BUG_ON(vebox_mask != VEBOX_MASK(gt));
 }
 
-static void engine_mask_apply_compute_fuses(struct intel_gt *gt)
-{
-	struct drm_i915_private *i915 = gt->i915;
-	struct intel_gt_info *info = &gt->info;
-	int ss_per_ccs = info->sseu.max_subslices / I915_MAX_CCS;
-	unsigned long ccs_mask;
-	unsigned int i;
-
-	if (GRAPHICS_VER(i915) < 11)
-		return;
-
-	if (hweight32(CCS_MASK(gt)) <= 1)
-		return;
-
-	ccs_mask = intel_slicemask_from_xehp_dssmask(info->sseu.compute_subslice_mask,
-						     ss_per_ccs);
-	/*
-	 * If all DSS in a quadrant are fused off, the corresponding CCS
-	 * engine is not available for use.
-	 */
-	for_each_clear_bit(i, &ccs_mask, I915_MAX_CCS) {
-		info->engine_mask &= ~BIT(_CCS(i));
-		gt_dbg(gt, "ccs%u fused off\n", i);
-	}
-}
-
 /*
  * Determine which engines are fused off in our particular hardware.
  * Note that we have a catch-22 situation where we need to be able to access
@@ -855,7 +829,6 @@ static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
 	GEM_BUG_ON(!info->engine_mask);
 
 	engine_mask_apply_media_fuses(gt);
-	engine_mask_apply_compute_fuses(gt);
 
 	/*
 	 * The only use of the GSC CS is to load and communicate with the GSC
@@ -874,29 +847,6 @@ static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
 		info->engine_mask &= ~BIT(GSC0);
 	}
 
-	/*
-	 * Do not create the command streamer for CCS slices beyond the first.
-	 * All the workload submitted to the first engine will be shared among
-	 * all the slices.
-	 *
-	 * Once the user will be allowed to customize the CCS mode, then this
-	 * check needs to be removed.
-	 */
-	if (IS_DG2(gt->i915)) {
-		u8 first_ccs = __ffs(CCS_MASK(gt));
-
-		/*
-		 * Store the number of active cslices before
-		 * changing the CCS engine configuration
-		 */
-		gt->ccs.cslice_mask = CCS_MASK(gt);
-
-		/* Mask off all the CCS engine */
-		info->engine_mask &= ~GENMASK(CCS3, CCS0);
-		/* Put back in the first CCS engine */
-		info->engine_mask |= BIT(_CCS(first_ccs));
-	}
-
 	return info->engine_mask;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index a6c69a706fd7..55546482355b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -17,6 +17,7 @@
 #include "intel_engine_regs.h"
 #include "intel_ggtt_gmch.h"
 #include "intel_gt.h"
+#include "intel_gt_ccs_mode.h"
 #include "intel_gt_buffer_pool.h"
 #include "intel_gt_clock_utils.h"
 #include "intel_gt_debugfs.h"
@@ -136,6 +137,8 @@ int intel_gt_init_mmio(struct intel_gt *gt)
 	intel_sseu_info_init(gt);
 	intel_gt_mcr_init(gt);
 
+	intel_gt_ccs_mode_init(gt);
+
 	return intel_engines_init_mmio(gt);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
index 109b13b4017d..06d9d1a94317 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
@@ -6,8 +6,54 @@
 #include "i915_drv.h"
 #include "intel_gt.h"
 #include "intel_gt_ccs_mode.h"
+#include "intel_gt_print.h"
 #include "intel_gt_regs.h"
 
+void intel_gt_ccs_mode_init(struct intel_gt *gt)
+{
+	struct intel_gt_info *info = &gt->info;
+	unsigned long fused_mask;
+	int ss_per_ccs;
+	unsigned int i;
+	u8 first_ccs;
+
+	/* Calculate the slices considering the fused engines */
+	ss_per_ccs = info->sseu.max_subslices / I915_MAX_CCS;
+	fused_mask = intel_slicemask_from_xehp_dssmask(info->sseu.compute_subslice_mask,
+						       ss_per_ccs);
+
+	/* Remove the fused engines from the engine_mask */
+	for_each_clear_bit(i, &fused_mask, I915_MAX_CCS) {
+                info->engine_mask &= ~BIT(_CCS(i));
+                gt_dbg(gt, "ccs%u fused off\n", i);
+        }
+
+	/*
+	 * Store the number of active cslices before
+	 * changing the CCS engine configuration
+	 */
+	gt->ccs.cslice_mask = CCS_MASK(gt);
+
+	/*
+	 * Normally only DG2 platforms have more than one CCS,
+	 * no need to change the ccs balance settings all the GPU's.
+	 */
+	if (!IS_DG2(gt->i915))
+		return;
+
+	/*
+	 * As a default behavior, do not create the command streamer for CCS
+	 * slices beyond the first. All the workload submitted to the first
+	 * engine will be shared among all the slices.
+	 */
+	first_ccs = __ffs(CCS_MASK(gt));
+
+	/* Mask off all the CCS engine */
+	info->engine_mask &= ~GENMASK(CCS3, CCS0);
+	/* Put back in the first CCS engine */
+	info->engine_mask |= BIT(_CCS(first_ccs));
+}
+
 unsigned int intel_gt_apply_ccs_mode(struct intel_gt *gt)
 {
 	int cslice;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h
index 55547f2ff426..a8b513c43a4f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h
@@ -9,5 +9,6 @@
 struct intel_gt;
 
 unsigned int intel_gt_apply_ccs_mode(struct intel_gt *gt);
+void intel_gt_ccs_mode_init(struct intel_gt *gt);
 
 #endif /* __INTEL_GT_CCS_MODE_H__ */
-- 
2.45.2

