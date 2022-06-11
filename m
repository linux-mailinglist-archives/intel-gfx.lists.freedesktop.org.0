Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E13745470B5
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jun 2022 02:57:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1B0510E9A4;
	Sat, 11 Jun 2022 00:57:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E96C10E9A4;
 Sat, 11 Jun 2022 00:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654909037; x=1686445037;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VHVMY3bWaDIAo+e0AvqwY2ZPzSwUV/rvX9O2e0FLbG0=;
 b=gg5iuNNGy1gCku/y0MfdHBq9B9fLOvN3LrKZOz0SZnkHj2wddFb0rDSY
 6KwEWutWXMFjhWvZniwrZgxYmcgSLSf8FVqVFPueTqgvKsa6e2ZJBvxOu
 X4MmxRDJFZeAmC96Dg9yfi2GASLcbjVjdnlcRxiFpxVAWyNijGM+KhHVB
 h/+gBT5C4s0MFWNwrBf9Gwo3qEXCrpPwK+AgfbboLd4wrJI/1K+nNJgoV
 2T7wlBWO4ej2W9HnDL+T9kf+XBZ3r31YBXQD1vPPpkofltOwQp4/0ebBG
 cfP98Y0gXsPziiBPVwXEwr2LE1VwZJq+1RhEOrXxsHUY+RC/ILMZwuhan g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10374"; a="257628003"
X-IronPort-AV: E=Sophos;i="5.91,292,1647327600"; d="scan'208";a="257628003"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 17:57:17 -0700
X-IronPort-AV: E=Sophos;i="5.91,292,1647327600"; d="scan'208";a="650121339"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 17:57:16 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jun 2022 17:57:10 -0700
Message-Id: <20220611005711.596098-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220611005711.596098-1-matthew.d.roper@intel.com>
References: <20220611005711.596098-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Move multicast register
 handling to a dedicated file
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Handling of multicast/replicated registers is spread across intel_gt.c
and intel_uncore.c today.  As multicast handling and the related
steering logic gets more complicated with the addition of new platforms
and new rules it makes sense to centralize it all in one place.

For now the existing functions have been moved to the new .c/.h as-is.
Function renames and updates to operate in a more consistent manner will
be done in subsequent patches.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/Makefile               |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c  |   1 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c   |   3 +-
 drivers/gpu/drm/i915/gt/intel_gt.c          | 297 +------------
 drivers/gpu/drm/i915/gt/intel_gt.h          |  15 -
 drivers/gpu/drm/i915/gt/intel_gt_debugfs.c  |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c      | 448 ++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_mcr.h      |  37 ++
 drivers/gpu/drm/i915/gt/intel_region_lmem.c |   1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c  |   1 +
 drivers/gpu/drm/i915/i915_drv.h             |   2 -
 drivers/gpu/drm/i915/intel_uncore.c         | 112 -----
 drivers/gpu/drm/i915/intel_uncore.h         |   8 -
 14 files changed, 495 insertions(+), 433 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_mcr.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_mcr.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index d2b18f03a33c..08f5d0d6e83a 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -103,6 +103,7 @@ gt-y += \
 	gt/intel_gt_debugfs.o \
 	gt/intel_gt_engines_debugfs.o \
 	gt/intel_gt_irq.o \
+	gt/intel_gt_mcr.o \
 	gt/intel_gt_pm.o \
 	gt/intel_gt_pm_debugfs.o \
 	gt/intel_gt_pm_irq.o \
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 47b5e0e342ab..da30503d3ca2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -13,6 +13,7 @@
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
 #include "gt/intel_gt.h"
+#include "gt/intel_gt_mcr.h"
 #include "gt/intel_region_lmem.h"
 #include "i915_drv.h"
 #include "i915_gem_stolen.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index f0acf8518a51..244af1bdb7db 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -21,8 +21,9 @@
 #include "intel_engine_user.h"
 #include "intel_execlists_submission.h"
 #include "intel_gt.h"
-#include "intel_gt_requests.h"
+#include "intel_gt_mcr.h"
 #include "intel_gt_pm.h"
+#include "intel_gt_requests.h"
 #include "intel_lrc.h"
 #include "intel_lrc_reg.h"
 #include "intel_reset.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index f33290358c51..be9877c4b496 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -17,6 +17,7 @@
 #include "intel_gt_clock_utils.h"
 #include "intel_gt_debugfs.h"
 #include "intel_gt_gmch.h"
+#include "intel_gt_mcr.h"
 #include "intel_gt_pm.h"
 #include "intel_gt_regs.h"
 #include "intel_gt_requests.h"
@@ -102,107 +103,13 @@ int intel_gt_assign_ggtt(struct intel_gt *gt)
 	return gt->ggtt ? 0 : -ENOMEM;
 }
 
-static const char * const intel_steering_types[] = {
-	"L3BANK",
-	"MSLICE",
-	"LNCF",
-	"INSTANCE 0",
-};
-
-static const struct intel_mmio_range icl_l3bank_steering_table[] = {
-	{ 0x00B100, 0x00B3FF },
-	{},
-};
-
-static const struct intel_mmio_range xehpsdv_mslice_steering_table[] = {
-	{ 0x004000, 0x004AFF },
-	{ 0x00C800, 0x00CFFF },
-	{ 0x00DD00, 0x00DDFF },
-	{ 0x00E900, 0x00FFFF }, /* 0xEA00 - OxEFFF is unused */
-	{},
-};
-
-static const struct intel_mmio_range xehpsdv_lncf_steering_table[] = {
-	{ 0x00B000, 0x00B0FF },
-	{ 0x00D800, 0x00D8FF },
-	{},
-};
-
-static const struct intel_mmio_range dg2_lncf_steering_table[] = {
-	{ 0x00B000, 0x00B0FF },
-	{ 0x00D880, 0x00D8FF },
-	{},
-};
-
-/*
- * We have several types of MCR registers on PVC where steering to (0,0)
- * will always provide us with a non-terminated value.  We'll stick them
- * all in the same table for simplicity.
- */
-static const struct intel_mmio_range pvc_instance0_steering_table[] = {
-	{ 0x004000, 0x004AFF },		/* HALF-BSLICE */
-	{ 0x008800, 0x00887F },		/* CC */
-	{ 0x008A80, 0x008AFF },		/* TILEPSMI */
-	{ 0x00B000, 0x00B0FF },		/* HALF-BSLICE */
-	{ 0x00B100, 0x00B3FF },		/* L3BANK */
-	{ 0x00C800, 0x00CFFF },		/* HALF-BSLICE */
-	{ 0x00D800, 0x00D8FF },		/* HALF-BSLICE */
-	{ 0x00DD00, 0x00DDFF },		/* BSLICE */
-	{ 0x00E900, 0x00E9FF },		/* HALF-BSLICE */
-	{ 0x00EC00, 0x00EEFF },		/* HALF-BSLICE */
-	{ 0x00F000, 0x00FFFF },		/* HALF-BSLICE */
-	{ 0x024180, 0x0241FF },		/* HALF-BSLICE */
-	{},
-};
-
 int intel_gt_init_mmio(struct intel_gt *gt)
 {
-	struct drm_i915_private *i915 = gt->i915;
-
 	intel_gt_init_clock_frequency(gt);
 
 	intel_uc_init_mmio(&gt->uc);
 	intel_sseu_info_init(gt);
-
-	/*
-	 * An mslice is unavailable only if both the meml3 for the slice is
-	 * disabled *and* all of the DSS in the slice (quadrant) are disabled.
-	 */
-	if (HAS_MSLICE_STEERING(i915)) {
-		gt->info.mslice_mask =
-			intel_slicemask_from_xehp_dssmask(gt->info.sseu.subslice_mask,
-							  GEN_DSS_PER_MSLICE);
-		gt->info.mslice_mask |=
-			(intel_uncore_read(gt->uncore, GEN10_MIRROR_FUSE3) &
-			 GEN12_MEML3_EN_MASK);
-
-		if (!gt->info.mslice_mask) /* should be impossible! */
-			drm_warn(&i915->drm, "mslice mask all zero!\n");
-	}
-
-	if (IS_PONTEVECCHIO(i915)) {
-		gt->steering_table[INSTANCE0] = pvc_instance0_steering_table;
-	} else if (IS_DG2(i915)) {
-		gt->steering_table[MSLICE] = xehpsdv_mslice_steering_table;
-		gt->steering_table[LNCF] = dg2_lncf_steering_table;
-	} else if (IS_XEHPSDV(i915)) {
-		gt->steering_table[MSLICE] = xehpsdv_mslice_steering_table;
-		gt->steering_table[LNCF] = xehpsdv_lncf_steering_table;
-	} else if (GRAPHICS_VER(i915) >= 11 &&
-		   GRAPHICS_VER_FULL(i915) < IP_VER(12, 50)) {
-		gt->steering_table[L3BANK] = icl_l3bank_steering_table;
-		gt->info.l3bank_mask =
-			~intel_uncore_read(gt->uncore, GEN10_MIRROR_FUSE3) &
-			GEN10_L3BANK_MASK;
-		if (!gt->info.l3bank_mask) /* should be impossible! */
-			drm_warn(&i915->drm, "L3 bank mask is all zero!\n");
-	} else if (GRAPHICS_VER(i915) >= 11) {
-		/*
-		 * We expect all modern platforms to have at least some
-		 * type of steering that needs to be initialized.
-		 */
-		MISSING_CASE(INTEL_INFO(i915)->platform);
-	}
+	intel_gt_mcr_init(gt);
 
 	return intel_engines_init_mmio(gt);
 }
@@ -864,206 +771,6 @@ void intel_gt_driver_late_release_all(struct drm_i915_private *i915)
 	}
 }
 
-/**
- * intel_gt_reg_needs_read_steering - determine whether a register read
- *     requires explicit steering
- * @gt: GT structure
- * @reg: the register to check steering requirements for
- * @type: type of multicast steering to check
- *
- * Determines whether @reg needs explicit steering of a specific type for
- * reads.
- *
- * Returns false if @reg does not belong to a register range of the given
- * steering type, or if the default (subslice-based) steering IDs are suitable
- * for @type steering too.
- */
-static bool intel_gt_reg_needs_read_steering(struct intel_gt *gt,
-					     i915_reg_t reg,
-					     enum intel_steering_type type)
-{
-	const u32 offset = i915_mmio_reg_offset(reg);
-	const struct intel_mmio_range *entry;
-
-	if (likely(!intel_gt_needs_read_steering(gt, type)))
-		return false;
-
-	for (entry = gt->steering_table[type]; entry->end; entry++) {
-		if (offset >= entry->start && offset <= entry->end)
-			return true;
-	}
-
-	return false;
-}
-
-/**
- * intel_gt_get_valid_steering - determines valid IDs for a class of MCR steering
- * @gt: GT structure
- * @type: multicast register type
- * @sliceid: Slice ID returned
- * @subsliceid: Subslice ID returned
- *
- * Determines sliceid and subsliceid values that will steer reads
- * of a specific multicast register class to a valid value.
- */
-static void intel_gt_get_valid_steering(struct intel_gt *gt,
-					enum intel_steering_type type,
-					u8 *sliceid, u8 *subsliceid)
-{
-	switch (type) {
-	case L3BANK:
-		*sliceid = 0;		/* unused */
-		*subsliceid = __ffs(gt->info.l3bank_mask);
-		break;
-	case MSLICE:
-		GEM_WARN_ON(!HAS_MSLICE_STEERING(gt->i915));
-		*sliceid = __ffs(gt->info.mslice_mask);
-		*subsliceid = 0;	/* unused */
-		break;
-	case LNCF:
-		/*
-		 * An LNCF is always present if its mslice is present, so we
-		 * can safely just steer to LNCF 0 in all cases.
-		 */
-		GEM_WARN_ON(!HAS_MSLICE_STEERING(gt->i915));
-		*sliceid = __ffs(gt->info.mslice_mask) << 1;
-		*subsliceid = 0;	/* unused */
-		break;
-	case INSTANCE0:
-		/*
-		 * There are a lot of MCR types for which instance (0, 0)
-		 * will always provide a non-terminated value.
-		 */
-		*sliceid = 0;
-		*subsliceid = 0;
-		break;
-	default:
-		MISSING_CASE(type);
-		*sliceid = 0;
-		*subsliceid = 0;
-	}
-}
-
-/**
- * intel_gt_read_register_fw - reads a GT register with support for multicast
- * @gt: GT structure
- * @reg: register to read
- *
- * This function will read a GT register.  If the register is a multicast
- * register, the read will be steered to a valid instance (i.e., one that
- * isn't fused off or powered down by power gating).
- *
- * Returns the value from a valid instance of @reg.
- */
-u32 intel_gt_read_register_fw(struct intel_gt *gt, i915_reg_t reg)
-{
-	int type;
-	u8 sliceid, subsliceid;
-
-	for (type = 0; type < NUM_STEERING_TYPES; type++) {
-		if (intel_gt_reg_needs_read_steering(gt, reg, type)) {
-			intel_gt_get_valid_steering(gt, type, &sliceid,
-						    &subsliceid);
-			return intel_uncore_read_with_mcr_steering_fw(gt->uncore,
-								      reg,
-								      sliceid,
-								      subsliceid);
-		}
-	}
-
-	return intel_uncore_read_fw(gt->uncore, reg);
-}
-
-/**
- * intel_gt_get_valid_steering_for_reg - get a valid steering for a register
- * @gt: GT structure
- * @reg: register for which the steering is required
- * @sliceid: return variable for slice steering
- * @subsliceid: return variable for subslice steering
- *
- * This function returns a slice/subslice pair that is guaranteed to work for
- * read steering of the given register. Note that a value will be returned even
- * if the register is not replicated and therefore does not actually require
- * steering.
- */
-void intel_gt_get_valid_steering_for_reg(struct intel_gt *gt, i915_reg_t reg,
-					 u8 *sliceid, u8 *subsliceid)
-{
-	int type;
-
-	for (type = 0; type < NUM_STEERING_TYPES; type++) {
-		if (intel_gt_reg_needs_read_steering(gt, reg, type)) {
-			intel_gt_get_valid_steering(gt, type, sliceid,
-						    subsliceid);
-			return;
-		}
-	}
-
-	*sliceid = gt->default_steering.groupid;
-	*subsliceid = gt->default_steering.instanceid;
-}
-
-u32 intel_gt_read_register(struct intel_gt *gt, i915_reg_t reg)
-{
-	int type;
-	u8 sliceid, subsliceid;
-
-	for (type = 0; type < NUM_STEERING_TYPES; type++) {
-		if (intel_gt_reg_needs_read_steering(gt, reg, type)) {
-			intel_gt_get_valid_steering(gt, type, &sliceid,
-						    &subsliceid);
-			return intel_uncore_read_with_mcr_steering(gt->uncore,
-								   reg,
-								   sliceid,
-								   subsliceid);
-		}
-	}
-
-	return intel_uncore_read(gt->uncore, reg);
-}
-
-static void report_steering_type(struct drm_printer *p,
-				 struct intel_gt *gt,
-				 enum intel_steering_type type,
-				 bool dump_table)
-{
-	const struct intel_mmio_range *entry;
-	u8 slice, subslice;
-
-	BUILD_BUG_ON(ARRAY_SIZE(intel_steering_types) != NUM_STEERING_TYPES);
-
-	if (!gt->steering_table[type]) {
-		drm_printf(p, "%s steering: uses default steering\n",
-			   intel_steering_types[type]);
-		return;
-	}
-
-	intel_gt_get_valid_steering(gt, type, &slice, &subslice);
-	drm_printf(p, "%s steering: sliceid=0x%x, subsliceid=0x%x\n",
-		   intel_steering_types[type], slice, subslice);
-
-	if (!dump_table)
-		return;
-
-	for (entry = gt->steering_table[type]; entry->end; entry++)
-		drm_printf(p, "\t0x%06x - 0x%06x\n", entry->start, entry->end);
-}
-
-void intel_gt_report_steering(struct drm_printer *p, struct intel_gt *gt,
-			      bool dump_table)
-{
-	drm_printf(p, "Default steering: sliceid=0x%x, subsliceid=0x%x\n",
-		   gt->default_steering.groupid,
-		   gt->default_steering.instanceid);
-
-	if (IS_PONTEVECCHIO(gt->i915)) {
-		report_steering_type(p, gt, INSTANCE0, dump_table);
-	} else if (HAS_MSLICE_STEERING(gt->i915)) {
-		report_steering_type(p, gt, MSLICE, dump_table);
-		report_steering_type(p, gt, LNCF, dump_table);
-	}
-}
-
 static int intel_gt_tile_setup(struct intel_gt *gt, phys_addr_t phys_addr)
 {
 	int ret;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 44c6cb63ccbc..61d30d5c7e90 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -93,21 +93,6 @@ static inline bool intel_gt_is_wedged(const struct intel_gt *gt)
 	return unlikely(test_bit(I915_WEDGED, &gt->reset.flags));
 }
 
-static inline bool intel_gt_needs_read_steering(struct intel_gt *gt,
-						enum intel_steering_type type)
-{
-	return gt->steering_table[type];
-}
-
-void intel_gt_get_valid_steering_for_reg(struct intel_gt *gt, i915_reg_t reg,
-					 u8 *sliceid, u8 *subsliceid);
-
-u32 intel_gt_read_register_fw(struct intel_gt *gt, i915_reg_t reg);
-u32 intel_gt_read_register(struct intel_gt *gt, i915_reg_t reg);
-
-void intel_gt_report_steering(struct drm_printer *p, struct intel_gt *gt,
-			      bool dump_table);
-
 int intel_gt_probe_all(struct drm_i915_private *i915);
 int intel_gt_tiles_init(struct drm_i915_private *i915);
 void intel_gt_release_all(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
index d886fdc2c694..ea07f2bb846f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
@@ -9,6 +9,7 @@
 #include "intel_gt.h"
 #include "intel_gt_debugfs.h"
 #include "intel_gt_engines_debugfs.h"
+#include "intel_gt_mcr.h"
 #include "intel_gt_pm_debugfs.h"
 #include "intel_sseu_debugfs.h"
 #include "pxp/intel_pxp_debugfs.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
new file mode 100644
index 000000000000..1279a1fe1001
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -0,0 +1,448 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include "i915_drv.h"
+
+#include "intel_gt_mcr.h"
+#include "intel_gt_regs.h"
+
+/**
+ * DOC: GT Multicast/Replicated (MCR) Register Support
+ *
+ * Some GT registers are designed as "multicast" or "replicated" registers:
+ * multiple instances of the same register share a single MMIO offset.  MCR
+ * registers are generally used when the hardware needs to potentially track
+ * independent values of a register per hardware unit (e.g., per-subslice,
+ * per-L3bank, etc.).  The specific types of replication that exist vary
+ * per-platform.
+ *
+ * MMIO accesses to MCR registers are controlled according to the settings
+ * programmed in the platform's MCR_SELECTOR register(s).  MMIO writes to MCR
+ * registers can be done in either a (i.e., a single write updates all
+ * instances of the register to the same value) or unicast (a write updates only
+ * one specific instance).  Reads of MCR registers always operate in a unicast
+ * manner regardless of how the multicast/unicast bit is set in MCR_SELECTOR.
+ * Selection of a specific MCR instance for unicast operations is referred to
+ * as "steering."
+ *
+ * If MCR register operations are steered toward a hardware unit that is
+ * fused off or currently powered down due to power gating, the MMIO operation
+ * is "terminated" by the hardware.  Terminated read operations will return a
+ * value of zero and terminated unicast write operations will be silently
+ * ignored.
+ */
+
+#define HAS_MSLICE_STEERING(dev_priv)	(INTEL_INFO(dev_priv)->has_mslice_steering)
+
+static const char * const intel_steering_types[] = {
+	"L3BANK",
+	"MSLICE",
+	"LNCF",
+	"INSTANCE 0",
+};
+
+static const struct intel_mmio_range icl_l3bank_steering_table[] = {
+	{ 0x00B100, 0x00B3FF },
+	{},
+};
+
+static const struct intel_mmio_range xehpsdv_mslice_steering_table[] = {
+	{ 0x004000, 0x004AFF },
+	{ 0x00C800, 0x00CFFF },
+	{ 0x00DD00, 0x00DDFF },
+	{ 0x00E900, 0x00FFFF }, /* 0xEA00 - OxEFFF is unused */
+	{},
+};
+
+static const struct intel_mmio_range xehpsdv_lncf_steering_table[] = {
+	{ 0x00B000, 0x00B0FF },
+	{ 0x00D800, 0x00D8FF },
+	{},
+};
+
+static const struct intel_mmio_range dg2_lncf_steering_table[] = {
+	{ 0x00B000, 0x00B0FF },
+	{ 0x00D880, 0x00D8FF },
+	{},
+};
+
+/*
+ * We have several types of MCR registers on PVC where steering to (0,0)
+ * will always provide us with a non-terminated value.  We'll stick them
+ * all in the same table for simplicity.
+ */
+static const struct intel_mmio_range pvc_instance0_steering_table[] = {
+	{ 0x004000, 0x004AFF },		/* HALF-BSLICE */
+	{ 0x008800, 0x00887F },		/* CC */
+	{ 0x008A80, 0x008AFF },		/* TILEPSMI */
+	{ 0x00B000, 0x00B0FF },		/* HALF-BSLICE */
+	{ 0x00B100, 0x00B3FF },		/* L3BANK */
+	{ 0x00C800, 0x00CFFF },		/* HALF-BSLICE */
+	{ 0x00D800, 0x00D8FF },		/* HALF-BSLICE */
+	{ 0x00DD00, 0x00DDFF },		/* BSLICE */
+	{ 0x00E900, 0x00E9FF },		/* HALF-BSLICE */
+	{ 0x00EC00, 0x00EEFF },		/* HALF-BSLICE */
+	{ 0x00F000, 0x00FFFF },		/* HALF-BSLICE */
+	{ 0x024180, 0x0241FF },		/* HALF-BSLICE */
+	{},
+};
+
+void intel_gt_mcr_init(struct intel_gt *gt)
+{
+	struct drm_i915_private *i915 = gt->i915;
+
+	/*
+	 * An mslice is unavailable only if both the meml3 for the slice is
+	 * disabled *and* all of the DSS in the slice (quadrant) are disabled.
+	 */
+	if (HAS_MSLICE_STEERING(i915)) {
+		gt->info.mslice_mask =
+			intel_slicemask_from_xehp_dssmask(gt->info.sseu.subslice_mask,
+							  GEN_DSS_PER_MSLICE);
+		gt->info.mslice_mask |=
+			(intel_uncore_read(gt->uncore, GEN10_MIRROR_FUSE3) &
+			 GEN12_MEML3_EN_MASK);
+
+		if (!gt->info.mslice_mask) /* should be impossible! */
+			drm_warn(&i915->drm, "mslice mask all zero!\n");
+	}
+
+	if (IS_PONTEVECCHIO(i915)) {
+		gt->steering_table[INSTANCE0] = pvc_instance0_steering_table;
+	} else if (IS_DG2(i915)) {
+		gt->steering_table[MSLICE] = xehpsdv_mslice_steering_table;
+		gt->steering_table[LNCF] = dg2_lncf_steering_table;
+	} else if (IS_XEHPSDV(i915)) {
+		gt->steering_table[MSLICE] = xehpsdv_mslice_steering_table;
+		gt->steering_table[LNCF] = xehpsdv_lncf_steering_table;
+	} else if (GRAPHICS_VER(i915) >= 11 &&
+		   GRAPHICS_VER_FULL(i915) < IP_VER(12, 50)) {
+		gt->steering_table[L3BANK] = icl_l3bank_steering_table;
+		gt->info.l3bank_mask =
+			~intel_uncore_read(gt->uncore, GEN10_MIRROR_FUSE3) &
+			GEN10_L3BANK_MASK;
+		if (!gt->info.l3bank_mask) /* should be impossible! */
+			drm_warn(&i915->drm, "L3 bank mask is all zero!\n");
+	} else if (GRAPHICS_VER(i915) >= 11) {
+		/*
+		 * We expect all modern platforms to have at least some
+		 * type of steering that needs to be initialized.
+		 */
+		MISSING_CASE(INTEL_INFO(i915)->platform);
+	}
+}
+
+/**
+ * uncore_rw_with_mcr_steering_fw - Access a register after programming
+ *				    the MCR selector register.
+ * @uncore: pointer to struct intel_uncore
+ * @reg: register being accessed
+ * @rw_flag: FW_REG_READ for read access or FW_REG_WRITE for write access
+ * @slice: slice number (ignored for multi-cast write)
+ * @subslice: sub-slice number (ignored for multi-cast write)
+ * @value: register value to be written (ignored for read)
+ *
+ * Return: 0 for write access. register value for read access.
+ *
+ * Caller needs to make sure the relevant forcewake wells are up.
+ */
+static u32 uncore_rw_with_mcr_steering_fw(struct intel_uncore *uncore,
+					  i915_reg_t reg, u8 rw_flag,
+					  int slice, int subslice, u32 value)
+{
+	u32 mcr_mask, mcr_ss, mcr, old_mcr, val = 0;
+
+	lockdep_assert_held(&uncore->lock);
+
+	if (GRAPHICS_VER(uncore->i915) >= 11) {
+		mcr_mask = GEN11_MCR_SLICE_MASK | GEN11_MCR_SUBSLICE_MASK;
+		mcr_ss = GEN11_MCR_SLICE(slice) | GEN11_MCR_SUBSLICE(subslice);
+
+		/*
+		 * Wa_22013088509
+		 *
+		 * The setting of the multicast/unicast bit usually wouldn't
+		 * matter for read operations (which always return the value
+		 * from a single register instance regardless of how that bit
+		 * is set), but some platforms have a workaround requiring us
+		 * to remain in multicast mode for reads.  There's no real
+		 * downside to this, so we'll just go ahead and do so on all
+		 * platforms; we'll only clear the multicast bit from the mask
+		 * when exlicitly doing a write operation.
+		 */
+		if (rw_flag == FW_REG_WRITE)
+			mcr_mask |= GEN11_MCR_MULTICAST;
+	} else {
+		mcr_mask = GEN8_MCR_SLICE_MASK | GEN8_MCR_SUBSLICE_MASK;
+		mcr_ss = GEN8_MCR_SLICE(slice) | GEN8_MCR_SUBSLICE(subslice);
+	}
+
+	old_mcr = mcr = intel_uncore_read_fw(uncore, GEN8_MCR_SELECTOR);
+
+	mcr &= ~mcr_mask;
+	mcr |= mcr_ss;
+	intel_uncore_write_fw(uncore, GEN8_MCR_SELECTOR, mcr);
+
+	if (rw_flag == FW_REG_READ)
+		val = intel_uncore_read_fw(uncore, reg);
+	else
+		intel_uncore_write_fw(uncore, reg, value);
+
+	mcr &= ~mcr_mask;
+	mcr |= old_mcr & mcr_mask;
+
+	intel_uncore_write_fw(uncore, GEN8_MCR_SELECTOR, mcr);
+
+	return val;
+}
+
+static u32 uncore_rw_with_mcr_steering(struct intel_uncore *uncore,
+				       i915_reg_t reg, u8 rw_flag,
+				       int slice, int subslice,
+				       u32 value)
+{
+	enum forcewake_domains fw_domains;
+	u32 val;
+
+	fw_domains = intel_uncore_forcewake_for_reg(uncore, reg,
+						    rw_flag);
+	fw_domains |= intel_uncore_forcewake_for_reg(uncore,
+						     GEN8_MCR_SELECTOR,
+						     FW_REG_READ | FW_REG_WRITE);
+
+	spin_lock_irq(&uncore->lock);
+	intel_uncore_forcewake_get__locked(uncore, fw_domains);
+
+	val = uncore_rw_with_mcr_steering_fw(uncore, reg, rw_flag,
+					     slice, subslice, value);
+
+	intel_uncore_forcewake_put__locked(uncore, fw_domains);
+	spin_unlock_irq(&uncore->lock);
+
+	return val;
+}
+
+u32 intel_uncore_read_with_mcr_steering_fw(struct intel_uncore *uncore,
+					   i915_reg_t reg, int slice, int subslice)
+{
+	return uncore_rw_with_mcr_steering_fw(uncore, reg, FW_REG_READ,
+					      slice, subslice, 0);
+}
+
+u32 intel_uncore_read_with_mcr_steering(struct intel_uncore *uncore,
+					i915_reg_t reg, int slice, int subslice)
+{
+	return uncore_rw_with_mcr_steering(uncore, reg, FW_REG_READ,
+					   slice, subslice, 0);
+}
+
+void intel_uncore_write_with_mcr_steering(struct intel_uncore *uncore,
+					  i915_reg_t reg, u32 value,
+					  int slice, int subslice)
+{
+	uncore_rw_with_mcr_steering(uncore, reg, FW_REG_WRITE,
+				    slice, subslice, value);
+}
+
+/**
+ * intel_gt_reg_needs_read_steering - determine whether a register read
+ *     requires explicit steering
+ * @gt: GT structure
+ * @reg: the register to check steering requirements for
+ * @type: type of multicast steering to check
+ *
+ * Determines whether @reg needs explicit steering of a specific type for
+ * reads.
+ *
+ * Returns false if @reg does not belong to a register range of the given
+ * steering type, or if the default (subslice-based) steering IDs are suitable
+ * for @type steering too.
+ */
+static bool intel_gt_reg_needs_read_steering(struct intel_gt *gt,
+					     i915_reg_t reg,
+					     enum intel_steering_type type)
+{
+	const u32 offset = i915_mmio_reg_offset(reg);
+	const struct intel_mmio_range *entry;
+
+	if (likely(!intel_gt_needs_read_steering(gt, type)))
+		return false;
+
+	for (entry = gt->steering_table[type]; entry->end; entry++) {
+		if (offset >= entry->start && offset <= entry->end)
+			return true;
+	}
+
+	return false;
+}
+
+/**
+ * intel_gt_get_valid_steering - determines valid IDs for a class of MCR steering
+ * @gt: GT structure
+ * @type: multicast register type
+ * @sliceid: Slice ID returned
+ * @subsliceid: Subslice ID returned
+ *
+ * Determines sliceid and subsliceid values that will steer reads
+ * of a specific multicast register class to a valid value.
+ */
+static void intel_gt_get_valid_steering(struct intel_gt *gt,
+					enum intel_steering_type type,
+					u8 *sliceid, u8 *subsliceid)
+{
+	switch (type) {
+	case L3BANK:
+		*sliceid = 0;		/* unused */
+		*subsliceid = __ffs(gt->info.l3bank_mask);
+		break;
+	case MSLICE:
+		GEM_WARN_ON(!HAS_MSLICE_STEERING(gt->i915));
+		*sliceid = __ffs(gt->info.mslice_mask);
+		*subsliceid = 0;	/* unused */
+		break;
+	case LNCF:
+		/*
+		 * An LNCF is always present if its mslice is present, so we
+		 * can safely just steer to LNCF 0 in all cases.
+		 */
+		GEM_WARN_ON(!HAS_MSLICE_STEERING(gt->i915));
+		*sliceid = __ffs(gt->info.mslice_mask) << 1;
+		*subsliceid = 0;	/* unused */
+		break;
+	case INSTANCE0:
+		/*
+		 * There are a lot of MCR types for which instance (0, 0)
+		 * will always provide a non-terminated value.
+		 */
+		*sliceid = 0;
+		*subsliceid = 0;
+		break;
+	default:
+		MISSING_CASE(type);
+		*sliceid = 0;
+		*subsliceid = 0;
+	}
+}
+
+/**
+ * intel_gt_get_valid_steering_for_reg - get a valid steering for a register
+ * @gt: GT structure
+ * @reg: register for which the steering is required
+ * @sliceid: return variable for slice steering
+ * @subsliceid: return variable for subslice steering
+ *
+ * This function returns a slice/subslice pair that is guaranteed to work for
+ * read steering of the given register. Note that a value will be returned even
+ * if the register is not replicated and therefore does not actually require
+ * steering.
+ */
+void intel_gt_get_valid_steering_for_reg(struct intel_gt *gt, i915_reg_t reg,
+					 u8 *sliceid, u8 *subsliceid)
+{
+	int type;
+
+	for (type = 0; type < NUM_STEERING_TYPES; type++) {
+		if (intel_gt_reg_needs_read_steering(gt, reg, type)) {
+			intel_gt_get_valid_steering(gt, type, sliceid,
+						    subsliceid);
+			return;
+		}
+	}
+
+	*sliceid = gt->default_steering.groupid;
+	*subsliceid = gt->default_steering.instanceid;
+}
+
+/**
+ * intel_gt_read_register_fw - reads a GT register with support for multicast
+ * @gt: GT structure
+ * @reg: register to read
+ *
+ * This function will read a GT register.  If the register is a multicast
+ * register, the read will be steered to a valid instance (i.e., one that
+ * isn't fused off or powered down by power gating).
+ *
+ * Returns the value from a valid instance of @reg.
+ */
+u32 intel_gt_read_register_fw(struct intel_gt *gt, i915_reg_t reg)
+{
+	int type;
+	u8 sliceid, subsliceid;
+
+	for (type = 0; type < NUM_STEERING_TYPES; type++) {
+		if (intel_gt_reg_needs_read_steering(gt, reg, type)) {
+			intel_gt_get_valid_steering(gt, type, &sliceid,
+						    &subsliceid);
+			return intel_uncore_read_with_mcr_steering_fw(gt->uncore,
+								      reg,
+								      sliceid,
+								      subsliceid);
+		}
+	}
+
+	return intel_uncore_read_fw(gt->uncore, reg);
+}
+
+u32 intel_gt_read_register(struct intel_gt *gt, i915_reg_t reg)
+{
+	int type;
+	u8 sliceid, subsliceid;
+
+	for (type = 0; type < NUM_STEERING_TYPES; type++) {
+		if (intel_gt_reg_needs_read_steering(gt, reg, type)) {
+			intel_gt_get_valid_steering(gt, type, &sliceid,
+						    &subsliceid);
+			return intel_uncore_read_with_mcr_steering(gt->uncore,
+								   reg,
+								   sliceid,
+								   subsliceid);
+		}
+	}
+
+	return intel_uncore_read(gt->uncore, reg);
+}
+
+static void report_steering_type(struct drm_printer *p,
+				 struct intel_gt *gt,
+				 enum intel_steering_type type,
+				 bool dump_table)
+{
+	const struct intel_mmio_range *entry;
+	u8 slice, subslice;
+
+	BUILD_BUG_ON(ARRAY_SIZE(intel_steering_types) != NUM_STEERING_TYPES);
+
+	if (!gt->steering_table[type]) {
+		drm_printf(p, "%s steering: uses default steering\n",
+			   intel_steering_types[type]);
+		return;
+	}
+
+	intel_gt_get_valid_steering(gt, type, &slice, &subslice);
+	drm_printf(p, "%s steering: sliceid=0x%x, subsliceid=0x%x\n",
+		   intel_steering_types[type], slice, subslice);
+
+	if (!dump_table)
+		return;
+
+	for (entry = gt->steering_table[type]; entry->end; entry++)
+		drm_printf(p, "\t0x%06x - 0x%06x\n", entry->start, entry->end);
+}
+
+void intel_gt_report_steering(struct drm_printer *p, struct intel_gt *gt,
+			      bool dump_table)
+{
+	drm_printf(p, "Default steering: sliceid=0x%x, subsliceid=0x%x\n",
+		   gt->default_steering.groupid,
+		   gt->default_steering.instanceid);
+
+	if (IS_PONTEVECCHIO(gt->i915)) {
+		report_steering_type(p, gt, INSTANCE0, dump_table);
+	} else if (HAS_MSLICE_STEERING(gt->i915)) {
+		report_steering_type(p, gt, MSLICE, dump_table);
+		report_steering_type(p, gt, LNCF, dump_table);
+	}
+}
+
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.h b/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
new file mode 100644
index 000000000000..b570c1571243
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_GT_MCR__
+#define __INTEL_GT_MCR__
+
+#include "intel_gt_types.h"
+
+void intel_gt_mcr_init(struct intel_gt *gt);
+
+u32 intel_uncore_read_with_mcr_steering_fw(struct intel_uncore *uncore,
+					   i915_reg_t reg,
+					   int slice, int subslice);
+u32 intel_uncore_read_with_mcr_steering(struct intel_uncore *uncore,
+					i915_reg_t reg,	int slice, int subslice);
+void intel_uncore_write_with_mcr_steering(struct intel_uncore *uncore,
+					  i915_reg_t reg, u32 value,
+					  int slice, int subslice);
+
+u32 intel_gt_read_register_fw(struct intel_gt *gt, i915_reg_t reg);
+u32 intel_gt_read_register(struct intel_gt *gt, i915_reg_t reg);
+
+static inline bool intel_gt_needs_read_steering(struct intel_gt *gt,
+						enum intel_steering_type type)
+{
+	return gt->steering_table[type];
+}
+
+void intel_gt_get_valid_steering_for_reg(struct intel_gt *gt, i915_reg_t reg,
+					 u8 *sliceid, u8 *subsliceid);
+
+void intel_gt_report_steering(struct drm_printer *p, struct intel_gt *gt,
+			      bool dump_table);
+
+#endif /* __INTEL_GT_MCR__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index e9c12e0d6f59..1f4e7237a924 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -12,6 +12,7 @@
 #include "gem/i915_gem_region.h"
 #include "gem/i915_gem_ttm.h"
 #include "gt/intel_gt.h"
+#include "gt/intel_gt_mcr.h"
 #include "gt/intel_gt_regs.h"
 
 static int
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 1e982ac931dc..97d7f30b1229 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -9,6 +9,7 @@
 #include "intel_engine_regs.h"
 #include "intel_gpu_commands.h"
 #include "intel_gt.h"
+#include "intel_gt_mcr.h"
 #include "intel_gt_regs.h"
 #include "intel_ring.h"
 #include "intel_workarounds.h"
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index bb197610fd5b..dea138d78111 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -7,6 +7,7 @@
 
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gt.h"
+#include "gt/intel_gt_mcr.h"
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_lrc.h"
 #include "gt/shmem_utils.h"
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9805c6e6d4da..5cf80fae8baa 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1282,8 +1282,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)->has_runtime_pm)
 #define HAS_64BIT_RELOC(dev_priv) (INTEL_INFO(dev_priv)->has_64bit_reloc)
 
-#define HAS_MSLICE_STEERING(dev_priv)	(INTEL_INFO(dev_priv)->has_mslice_steering)
-
 /*
  * Set this flag, when platform requires 64K GTT page sizes or larger for
  * device local memory access.
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 33304eb987e4..a852c471d1b3 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2644,118 +2644,6 @@ intel_uncore_forcewake_for_reg(struct intel_uncore *uncore,
 	return fw_domains;
 }
 
-/**
- * uncore_rw_with_mcr_steering_fw - Access a register after programming
- *				    the MCR selector register.
- * @uncore: pointer to struct intel_uncore
- * @reg: register being accessed
- * @rw_flag: FW_REG_READ for read access or FW_REG_WRITE for write access
- * @slice: slice number (ignored for multi-cast write)
- * @subslice: sub-slice number (ignored for multi-cast write)
- * @value: register value to be written (ignored for read)
- *
- * Return: 0 for write access. register value for read access.
- *
- * Caller needs to make sure the relevant forcewake wells are up.
- */
-static u32 uncore_rw_with_mcr_steering_fw(struct intel_uncore *uncore,
-					  i915_reg_t reg, u8 rw_flag,
-					  int slice, int subslice, u32 value)
-{
-	u32 mcr_mask, mcr_ss, mcr, old_mcr, val = 0;
-
-	lockdep_assert_held(&uncore->lock);
-
-	if (GRAPHICS_VER(uncore->i915) >= 11) {
-		mcr_mask = GEN11_MCR_SLICE_MASK | GEN11_MCR_SUBSLICE_MASK;
-		mcr_ss = GEN11_MCR_SLICE(slice) | GEN11_MCR_SUBSLICE(subslice);
-
-		/*
-		 * Wa_22013088509
-		 *
-		 * The setting of the multicast/unicast bit usually wouldn't
-		 * matter for read operations (which always return the value
-		 * from a single register instance regardless of how that bit
-		 * is set), but some platforms have a workaround requiring us
-		 * to remain in multicast mode for reads.  There's no real
-		 * downside to this, so we'll just go ahead and do so on all
-		 * platforms; we'll only clear the multicast bit from the mask
-		 * when exlicitly doing a write operation.
-		 */
-		if (rw_flag == FW_REG_WRITE)
-			mcr_mask |= GEN11_MCR_MULTICAST;
-	} else {
-		mcr_mask = GEN8_MCR_SLICE_MASK | GEN8_MCR_SUBSLICE_MASK;
-		mcr_ss = GEN8_MCR_SLICE(slice) | GEN8_MCR_SUBSLICE(subslice);
-	}
-
-	old_mcr = mcr = intel_uncore_read_fw(uncore, GEN8_MCR_SELECTOR);
-
-	mcr &= ~mcr_mask;
-	mcr |= mcr_ss;
-	intel_uncore_write_fw(uncore, GEN8_MCR_SELECTOR, mcr);
-
-	if (rw_flag == FW_REG_READ)
-		val = intel_uncore_read_fw(uncore, reg);
-	else
-		intel_uncore_write_fw(uncore, reg, value);
-
-	mcr &= ~mcr_mask;
-	mcr |= old_mcr & mcr_mask;
-
-	intel_uncore_write_fw(uncore, GEN8_MCR_SELECTOR, mcr);
-
-	return val;
-}
-
-static u32 uncore_rw_with_mcr_steering(struct intel_uncore *uncore,
-				       i915_reg_t reg, u8 rw_flag,
-				       int slice, int subslice,
-				       u32 value)
-{
-	enum forcewake_domains fw_domains;
-	u32 val;
-
-	fw_domains = intel_uncore_forcewake_for_reg(uncore, reg,
-						    rw_flag);
-	fw_domains |= intel_uncore_forcewake_for_reg(uncore,
-						     GEN8_MCR_SELECTOR,
-						     FW_REG_READ | FW_REG_WRITE);
-
-	spin_lock_irq(&uncore->lock);
-	intel_uncore_forcewake_get__locked(uncore, fw_domains);
-
-	val = uncore_rw_with_mcr_steering_fw(uncore, reg, rw_flag,
-					     slice, subslice, value);
-
-	intel_uncore_forcewake_put__locked(uncore, fw_domains);
-	spin_unlock_irq(&uncore->lock);
-
-	return val;
-}
-
-u32 intel_uncore_read_with_mcr_steering_fw(struct intel_uncore *uncore,
-					   i915_reg_t reg, int slice, int subslice)
-{
-	return uncore_rw_with_mcr_steering_fw(uncore, reg, FW_REG_READ,
-					      slice, subslice, 0);
-}
-
-u32 intel_uncore_read_with_mcr_steering(struct intel_uncore *uncore,
-					i915_reg_t reg, int slice, int subslice)
-{
-	return uncore_rw_with_mcr_steering(uncore, reg, FW_REG_READ,
-					   slice, subslice, 0);
-}
-
-void intel_uncore_write_with_mcr_steering(struct intel_uncore *uncore,
-					  i915_reg_t reg, u32 value,
-					  int slice, int subslice)
-{
-	uncore_rw_with_mcr_steering(uncore, reg, FW_REG_WRITE,
-				    slice, subslice, value);
-}
-
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftests/mock_uncore.c"
 #include "selftests/intel_uncore.c"
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 52fe3d89dd2b..b1fa912a65e7 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -210,14 +210,6 @@ intel_uncore_has_fifo(const struct intel_uncore *uncore)
 	return uncore->flags & UNCORE_HAS_FIFO;
 }
 
-u32 intel_uncore_read_with_mcr_steering_fw(struct intel_uncore *uncore,
-					   i915_reg_t reg,
-					   int slice, int subslice);
-u32 intel_uncore_read_with_mcr_steering(struct intel_uncore *uncore,
-					i915_reg_t reg,	int slice, int subslice);
-void intel_uncore_write_with_mcr_steering(struct intel_uncore *uncore,
-					  i915_reg_t reg, u32 value,
-					  int slice, int subslice);
 void
 intel_uncore_mmio_debug_init_early(struct intel_uncore_mmio_debug *mmio_debug);
 void intel_uncore_init_early(struct intel_uncore *uncore,
-- 
2.35.3

