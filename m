Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B67563CBE
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Jul 2022 01:20:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB83E112DC7;
	Fri,  1 Jul 2022 23:20:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C27CE112DA5;
 Fri,  1 Jul 2022 23:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656717612; x=1688253612;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kCaVOgxjFfkGAU4f3osoxX8/4O/Vo193fY3HML59lVc=;
 b=C9DXsFYki2zDqwlTm6Dnk1emr/MXiGjsRqtSloLSP+kvvy9tu98BaDnB
 4cElXR+8b77zogkoVJSXUJkWOlbqkIAeCcja1O2QPJIvaIhmPisssK1WV
 OZtF4XXQUBtC5GpVALBfB5XkRAkwQ6R/8oaU5LZDSLBiTM8U9DzzQ7Wry
 L2wrxYoQt/x+lnAJoeFtmeZfV4WhCkpaf3tprofVQeBRK3yD1VvSE/GYL
 OfDOdRlPEBKy6YMHsPhtwivnwRUkqfEHxgH6yPNk8+nHeSjEADRVBc6UL
 8gfVIcpD+qZOtJW5zjBl+sAYLezbhq4qyGRRE7cV+6KAcSTIC+FJiCLA2 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10395"; a="283873353"
X-IronPort-AV: E=Sophos;i="5.92,238,1650956400"; d="scan'208";a="283873353"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 16:20:12 -0700
X-IronPort-AV: E=Sophos;i="5.92,238,1650956400"; d="scan'208";a="838216529"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 16:20:11 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Jul 2022 16:20:06 -0700
Message-Id: <20220701232006.1016135-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Add general DSS steering iterator
 to intel_gt_mcr
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

Although all DSS belong to a single pool on Xe_HP platforms (i.e.,
they're not organized into slices from a topology point of view), we do
still need to pass 'group' and 'instance' targets when steering register
accesses to a specific instance of a per-DSS multicast register.  The
rules for how to determine group and instance IDs (which previously used
legacy terms "slice" and "subslice") varies by platform.  Some platforms
determine steering by gslice membership, some platforms by cslice
membership, and future platforms may have other rules.

Since looping over each DSS and performing steered unicast register
accesses is a relatively common pattern, let's add a dedicated iteration
macro to handle this (and replace the platform-specific "instdone" loop
we were using previously.  This will avoid the calling code needing to
figure out the details about how to obtain steering IDs for a specific
DSS.

Most of the places where we use this new loop are in the GPU errorstate
code at the moment, but we do have some additional features coming in
the future that will also need to loop over each DSS and steer some
register accesses accordingly.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 34 ++++++-------------
 drivers/gpu/drm/i915/gt/intel_engine_types.h  | 22 ------------
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        | 25 ++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_mcr.h        | 24 +++++++++++++
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 13 ++++---
 drivers/gpu/drm/i915/i915_gpu_error.c         | 32 ++++++-----------
 6 files changed, 75 insertions(+), 75 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 283870c65991..37fa813af766 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1517,7 +1517,6 @@ void intel_engine_get_instdone(const struct intel_engine_cs *engine,
 			       struct intel_instdone *instdone)
 {
 	struct drm_i915_private *i915 = engine->i915;
-	const struct sseu_dev_info *sseu = &engine->gt->info.sseu;
 	struct intel_uncore *uncore = engine->uncore;
 	u32 mmio_base = engine->mmio_base;
 	int slice;
@@ -1542,32 +1541,19 @@ void intel_engine_get_instdone(const struct intel_engine_cs *engine,
 				intel_uncore_read(uncore, GEN12_SC_INSTDONE_EXTRA2);
 		}
 
-		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
-			for_each_instdone_gslice_dss_xehp(i915, sseu, iter, slice, subslice) {
-				instdone->sampler[slice][subslice] =
-					intel_gt_mcr_read(engine->gt,
-							  GEN7_SAMPLER_INSTDONE,
-							  slice, subslice);
-				instdone->row[slice][subslice] =
-					intel_gt_mcr_read(engine->gt,
-							  GEN7_ROW_INSTDONE,
-							  slice, subslice);
-			}
-		} else {
-			for_each_instdone_slice_subslice(i915, sseu, slice, subslice) {
-				instdone->sampler[slice][subslice] =
-					intel_gt_mcr_read(engine->gt,
-							  GEN7_SAMPLER_INSTDONE,
-							  slice, subslice);
-				instdone->row[slice][subslice] =
-					intel_gt_mcr_read(engine->gt,
-							  GEN7_ROW_INSTDONE,
-							  slice, subslice);
-			}
+		for_each_ss_steering(iter, engine->gt, slice, subslice) {
+			instdone->sampler[slice][subslice] =
+				intel_gt_mcr_read(engine->gt,
+						  GEN7_SAMPLER_INSTDONE,
+						  slice, subslice);
+			instdone->row[slice][subslice] =
+				intel_gt_mcr_read(engine->gt,
+						  GEN7_ROW_INSTDONE,
+						  slice, subslice);
 		}
 
 		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55)) {
-			for_each_instdone_gslice_dss_xehp(i915, sseu, iter, slice, subslice)
+			for_each_ss_steering(iter, engine->gt, slice, subslice)
 				instdone->geom_svg[slice][subslice] =
 					intel_gt_mcr_read(engine->gt,
 							  XEHPG_INSTDONE_GEOM_SVG,
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 2286f96f5f87..633a7e5dba3b 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -647,26 +647,4 @@ intel_engine_uses_wa_hold_ccs_switchout(struct intel_engine_cs *engine)
 	return engine->flags & I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
 }
 
-#define instdone_has_slice(dev_priv___, sseu___, slice___) \
-	((GRAPHICS_VER(dev_priv___) == 7 ? 1 : ((sseu___)->slice_mask)) & BIT(slice___))
-
-#define instdone_has_subslice(dev_priv__, sseu__, slice__, subslice__) \
-	(GRAPHICS_VER(dev_priv__) == 7 ? (1 & BIT(subslice__)) : \
-	 intel_sseu_has_subslice(sseu__, 0, subslice__))
-
-#define for_each_instdone_slice_subslice(dev_priv_, sseu_, slice_, subslice_) \
-	for ((slice_) = 0, (subslice_) = 0; (slice_) < I915_MAX_SLICES; \
-	     (subslice_) = ((subslice_) + 1) % I915_MAX_SUBSLICES, \
-	     (slice_) += ((subslice_) == 0)) \
-		for_each_if((instdone_has_slice(dev_priv_, sseu_, slice_)) && \
-			    (instdone_has_subslice(dev_priv_, sseu_, slice_, \
-						    subslice_)))
-
-#define for_each_instdone_gslice_dss_xehp(dev_priv_, sseu_, iter_, gslice_, dss_) \
-	for ((iter_) = 0, (gslice_) = 0, (dss_) = 0; \
-	     (iter_) < GEN_SS_MASK_SIZE; \
-	     (iter_)++, (gslice_) = (iter_) / GEN_DSS_PER_GSLICE, \
-	     (dss_) = (iter_) % GEN_DSS_PER_GSLICE) \
-		for_each_if(intel_sseu_has_subslice((sseu_), 0, (iter_)))
-
 #endif /* __INTEL_ENGINE_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index 777025d5bd66..f8c64ab9d3ca 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -495,3 +495,28 @@ void intel_gt_mcr_report_steering(struct drm_printer *p, struct intel_gt *gt,
 	}
 }
 
+/**
+ * intel_gt_mcr_get_ss_steering - returns the group/instance steering for a SS
+ * @gt: GT structure
+ * @dss: DSS ID to obtain steering for
+ * @group: pointer to storage for steering group ID
+ * @instance: pointer to storage for steering instance ID
+ *
+ * Returns the steering IDs (via the @group and @instance parameters) that
+ * correspond to a specific subslice/DSS ID.
+ */
+void intel_gt_mcr_get_ss_steering(struct intel_gt *gt, unsigned int dss,
+				   unsigned int *group, unsigned int *instance)
+{
+	if (IS_PONTEVECCHIO(gt->i915)) {
+		*group = dss / GEN_DSS_PER_CSLICE;
+		*instance = dss % GEN_DSS_PER_CSLICE;
+	} else if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 50)) {
+		*group = dss / GEN_DSS_PER_GSLICE;
+		*instance = dss % GEN_DSS_PER_GSLICE;
+	} else {
+		*group = dss / GEN_MAX_HSW_SLICES;
+		*instance = dss % GEN_MAX_SS_PER_HSW_SLICE;
+		return;
+	}
+}
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.h b/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
index 506b0cbc8db3..77a8b11c287d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
@@ -31,4 +31,28 @@ void intel_gt_mcr_get_nonterminated_steering(struct intel_gt *gt,
 void intel_gt_mcr_report_steering(struct drm_printer *p, struct intel_gt *gt,
 				  bool dump_table);
 
+void intel_gt_mcr_get_ss_steering(struct intel_gt *gt, unsigned int dss,
+				  unsigned int *group, unsigned int *instance);
+
+/*
+ * Helper for for_each_ss_steering loop.  On pre-Xe_HP platforms, subslice
+ * presence is determined by using the group/instance as direct lookups in the
+ * slice/subslice topology.  On Xe_HP and beyond, the steering is unrelated to
+ * the topology, so we lookup the DSS ID directly in "slice 0."
+ */
+#define _HAS_SS(ss_, gt_, group_, instance_) ( \
+	GRAPHICS_VER_FULL(gt_->i915) >= IP_VER(12, 50) ? \
+		intel_sseu_has_subslice(&(gt_)->info.sseu, 0, ss_) : \
+		intel_sseu_has_subslice(&(gt_)->info.sseu, group_, instance_))
+
+/*
+ * Loop over each subslice/DSS and determine the group and instance IDs that
+ * should be used to steer MCR accesses toward this DSS.
+ */
+#define for_each_ss_steering(ss_, gt_, group_, instance_) \
+	for (ss_ = 0, intel_gt_mcr_get_ss_steering(gt_, 0, &group_, &instance_); \
+	     ss_ < I915_MAX_SS_FUSE_BITS; \
+	     ss_++, intel_gt_mcr_get_ss_steering(gt_, ss_, &group_, &instance_)) \
+		for_each_if(_HAS_SS(ss_, gt_, group_, instance_))
+
 #endif /* __INTEL_GT_MCR__ */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 97a32e610c30..4e47d0a308f1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -9,6 +9,7 @@
 
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gt.h"
+#include "gt/intel_gt_mcr.h"
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_lrc.h"
 #include "guc_capture_fwif.h"
@@ -281,8 +282,7 @@ guc_capture_alloc_steered_lists_xe_lpd(struct intel_guc *guc,
 				       const struct __guc_mmio_reg_descr_group *lists)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
-	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
-	int slice, subslice, i, num_steer_regs, num_tot_regs = 0;
+	int slice, subslice, iter, i, num_steer_regs, num_tot_regs = 0;
 	const struct __guc_mmio_reg_descr_group *list;
 	struct __guc_mmio_reg_descr_group *extlists;
 	struct __guc_mmio_reg_descr *extarray;
@@ -298,7 +298,7 @@ guc_capture_alloc_steered_lists_xe_lpd(struct intel_guc *guc,
 	num_steer_regs = ARRAY_SIZE(xe_extregs);
 
 	sseu = &gt->info.sseu;
-	for_each_instdone_slice_subslice(i915, sseu, slice, subslice)
+	for_each_ss_steering(iter, gt, slice, subslice)
 		num_tot_regs += num_steer_regs;
 
 	if (!num_tot_regs)
@@ -315,7 +315,7 @@ guc_capture_alloc_steered_lists_xe_lpd(struct intel_guc *guc,
 	}
 
 	extarray = extlists[0].extlist;
-	for_each_instdone_slice_subslice(i915, sseu, slice, subslice) {
+	for_each_ss_steering(iter, gt, slice, subslice) {
 		for (i = 0; i < num_steer_regs; ++i) {
 			__fill_ext_reg(extarray, &xe_extregs[i], slice, subslice);
 			++extarray;
@@ -359,9 +359,8 @@ guc_capture_alloc_steered_lists_xe_hpg(struct intel_guc *guc,
 		num_steer_regs += ARRAY_SIZE(xehpg_extregs);
 
 	sseu = &gt->info.sseu;
-	for_each_instdone_gslice_dss_xehp(i915, sseu, iter, slice, subslice) {
+	for_each_ss_steering(iter, gt, slice, subslice)
 		num_tot_regs += num_steer_regs;
-	}
 
 	if (!num_tot_regs)
 		return;
@@ -377,7 +376,7 @@ guc_capture_alloc_steered_lists_xe_hpg(struct intel_guc *guc,
 	}
 
 	extarray = extlists[0].extlist;
-	for_each_instdone_gslice_dss_xehp(i915, sseu, iter, slice, subslice) {
+	for_each_ss_steering(iter, gt, slice, subslice) {
 		for (i = 0; i < ARRAY_SIZE(xe_extregs); ++i) {
 			__fill_ext_reg(extarray, &xe_extregs[i], slice, subslice);
 			++extarray;
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 52ea13fee015..32e92651ef7c 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -46,6 +46,7 @@
 #include "gem/i915_gem_lmem.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gt.h"
+#include "gt/intel_gt_mcr.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_gt_regs.h"
 #include "gt/uc/intel_guc_capture.h"
@@ -436,7 +437,6 @@ static void err_compression_marker(struct drm_i915_error_state_buf *m)
 static void error_print_instdone(struct drm_i915_error_state_buf *m,
 				 const struct intel_engine_coredump *ee)
 {
-	const struct sseu_dev_info *sseu = &ee->engine->gt->info.sseu;
 	int slice;
 	int subslice;
 	int iter;
@@ -453,33 +453,21 @@ static void error_print_instdone(struct drm_i915_error_state_buf *m,
 	if (GRAPHICS_VER(m->i915) <= 6)
 		return;
 
-	if (GRAPHICS_VER_FULL(m->i915) >= IP_VER(12, 50)) {
-		for_each_instdone_gslice_dss_xehp(m->i915, sseu, iter, slice, subslice)
-			err_printf(m, "  SAMPLER_INSTDONE[%d][%d]: 0x%08x\n",
-				   slice, subslice,
-				   ee->instdone.sampler[slice][subslice]);
+	for_each_ss_steering(iter, ee->engine->gt, slice, subslice)
+		err_printf(m, "  SAMPLER_INSTDONE[%d][%d]: 0x%08x\n",
+			   slice, subslice,
+			   ee->instdone.sampler[slice][subslice]);
 
-		for_each_instdone_gslice_dss_xehp(m->i915, sseu, iter, slice, subslice)
-			err_printf(m, "  ROW_INSTDONE[%d][%d]: 0x%08x\n",
-				   slice, subslice,
-				   ee->instdone.row[slice][subslice]);
-	} else {
-		for_each_instdone_slice_subslice(m->i915, sseu, slice, subslice)
-			err_printf(m, "  SAMPLER_INSTDONE[%d][%d]: 0x%08x\n",
-				   slice, subslice,
-				   ee->instdone.sampler[slice][subslice]);
-
-		for_each_instdone_slice_subslice(m->i915, sseu, slice, subslice)
-			err_printf(m, "  ROW_INSTDONE[%d][%d]: 0x%08x\n",
-				   slice, subslice,
-				   ee->instdone.row[slice][subslice]);
-	}
+	for_each_ss_steering(iter, ee->engine->gt, slice, subslice)
+		err_printf(m, "  ROW_INSTDONE[%d][%d]: 0x%08x\n",
+			   slice, subslice,
+			   ee->instdone.row[slice][subslice]);
 
 	if (GRAPHICS_VER(m->i915) < 12)
 		return;
 
 	if (GRAPHICS_VER_FULL(m->i915) >= IP_VER(12, 55)) {
-		for_each_instdone_gslice_dss_xehp(m->i915, sseu, iter, slice, subslice)
+		for_each_ss_steering(iter, ee->engine->gt, slice, subslice)
 			err_printf(m, "  GEOM_SVGUNIT_INSTDONE[%d][%d]: 0x%08x\n",
 				   slice, subslice,
 				   ee->instdone.geom_svg[slice][subslice]);
-- 
2.36.1

