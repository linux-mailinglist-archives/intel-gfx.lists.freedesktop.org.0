Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1813CBD34
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 22:00:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E9D26EA2E;
	Fri, 16 Jul 2021 19:59:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 773F46E9F0;
 Fri, 16 Jul 2021 19:59:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="210596755"
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="210596755"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:59:44 -0700
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="507239032"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:59:43 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Fri, 16 Jul 2021 13:17:14 -0700
Message-Id: <20210716201724.54804-42-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210716201724.54804-1-matthew.brost@intel.com>
References: <20210716201724.54804-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 41/51] drm/i915/guc: Add golden context to GuC
 ADS
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

The media watchdog mechanism involves GuC doing a silent reset and
continue of the hung context. This requires the i915 driver provide a
golden context to GuC in the ADS.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c         |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.c     |   5 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.h     |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 213 ++++++++++++++++++---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_uc.c      |   5 +
 drivers/gpu/drm/i915/gt/uc/intel_uc.h      |   1 +
 7 files changed, 199 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index acfdd53b2678..ceeb517ba259 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -654,6 +654,8 @@ int intel_gt_init(struct intel_gt *gt)
 	if (err)
 		goto err_gt;
 
+	intel_uc_init_late(&gt->uc);
+
 	err = i915_inject_probe_error(gt->i915, -EIO);
 	if (err)
 		goto err_gt;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 68266cbffd1f..979128e28372 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -180,6 +180,11 @@ void intel_guc_init_early(struct intel_guc *guc)
 	}
 }
 
+void intel_guc_init_late(struct intel_guc *guc)
+{
+	intel_guc_ads_init_late(guc);
+}
+
 static u32 guc_ctl_debug_flags(struct intel_guc *guc)
 {
 	u32 level = intel_guc_log_get_level(&guc->log);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index bc71635c70b9..dc18ac510ac8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -60,6 +60,7 @@ struct intel_guc {
 	struct i915_vma *ads_vma;
 	struct __guc_ads_blob *ads_blob;
 	u32 ads_regset_size;
+	u32 ads_golden_ctxt_size;
 
 	struct i915_vma *lrc_desc_pool;
 	void *lrc_desc_pool_vaddr;
@@ -176,6 +177,7 @@ static inline u32 intel_guc_ggtt_offset(struct intel_guc *guc,
 }
 
 void intel_guc_init_early(struct intel_guc *guc);
+void intel_guc_init_late(struct intel_guc *guc);
 void intel_guc_init_send_regs(struct intel_guc *guc);
 void intel_guc_write_params(struct intel_guc *guc);
 int intel_guc_init(struct intel_guc *guc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 93b0ac35a508..241b3089b658 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -7,6 +7,7 @@
 
 #include "gt/intel_gt.h"
 #include "gt/intel_lrc.h"
+#include "gt/shmem_utils.h"
 #include "intel_guc_ads.h"
 #include "intel_guc_fwif.h"
 #include "intel_uc.h"
@@ -33,6 +34,10 @@
  *      +---------------------------------------+ <== dynamic
  *      | padding                               |
  *      +---------------------------------------+ <== 4K aligned
+ *      | golden contexts                       |
+ *      +---------------------------------------+
+ *      | padding                               |
+ *      +---------------------------------------+ <== 4K aligned
  *      | private data                          |
  *      +---------------------------------------+
  *      | padding                               |
@@ -52,6 +57,11 @@ static u32 guc_ads_regset_size(struct intel_guc *guc)
 	return guc->ads_regset_size;
 }
 
+static u32 guc_ads_golden_ctxt_size(struct intel_guc *guc)
+{
+	return PAGE_ALIGN(guc->ads_golden_ctxt_size);
+}
+
 static u32 guc_ads_private_data_size(struct intel_guc *guc)
 {
 	return PAGE_ALIGN(guc->fw.private_data_size);
@@ -62,12 +72,23 @@ static u32 guc_ads_regset_offset(struct intel_guc *guc)
 	return offsetof(struct __guc_ads_blob, regset);
 }
 
-static u32 guc_ads_private_data_offset(struct intel_guc *guc)
+static u32 guc_ads_golden_ctxt_offset(struct intel_guc *guc)
 {
 	u32 offset;
 
 	offset = guc_ads_regset_offset(guc) +
 		 guc_ads_regset_size(guc);
+
+	return PAGE_ALIGN(offset);
+}
+
+static u32 guc_ads_private_data_offset(struct intel_guc *guc)
+{
+	u32 offset;
+
+	offset = guc_ads_golden_ctxt_offset(guc) +
+		 guc_ads_golden_ctxt_size(guc);
+
 	return PAGE_ALIGN(offset);
 }
 
@@ -319,53 +340,163 @@ static void guc_mmio_reg_state_init(struct intel_guc *guc,
 	GEM_BUG_ON(temp_set.size);
 }
 
-/*
- * The first 80 dwords of the register state context, containing the
- * execlists and ppgtt registers.
- */
-#define LR_HW_CONTEXT_SIZE	(80 * sizeof(u32))
+static void fill_engine_enable_masks(struct intel_gt *gt,
+				     struct guc_gt_system_info *info)
+{
+	info->engine_enabled_masks[GUC_RENDER_CLASS] = 1;
+	info->engine_enabled_masks[GUC_BLITTER_CLASS] = 1;
+	info->engine_enabled_masks[GUC_VIDEO_CLASS] = VDBOX_MASK(gt);
+	info->engine_enabled_masks[GUC_VIDEOENHANCE_CLASS] = VEBOX_MASK(gt);
+}
 
-static void __guc_ads_init(struct intel_guc *guc)
+/* Skip execlist and PPGTT registers */
+#define LR_HW_CONTEXT_SIZE      (80 * sizeof(u32))
+#define SKIP_SIZE               (LRC_PPHWSP_SZ * PAGE_SIZE + LR_HW_CONTEXT_SIZE)
+
+static int guc_prep_golden_context(struct intel_guc *guc,
+				   struct __guc_ads_blob *blob)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
-	struct drm_i915_private *i915 = gt->i915;
+	u32 addr_ggtt, offset;
+	u32 total_size = 0, alloc_size, real_size;
+	u8 engine_class, guc_class;
+	struct guc_gt_system_info *info, local_info;
+
+	/*
+	 * Reserve the memory for the golden contexts and point GuC at it but
+	 * leave it empty for now. The context data will be filled in later
+	 * once there is something available to put there.
+	 *
+	 * Note that the HWSP and ring context are not included.
+	 *
+	 * Note also that the storage must be pinned in the GGTT, so that the
+	 * address won't change after GuC has been told where to find it. The
+	 * GuC will also validate that the LRC base + size fall within the
+	 * allowed GGTT range.
+	 */
+	if (blob) {
+		offset = guc_ads_golden_ctxt_offset(guc);
+		addr_ggtt = intel_guc_ggtt_offset(guc, guc->ads_vma) + offset;
+		info = &blob->system_info;
+	} else {
+		memset(&local_info, 0, sizeof(local_info));
+		info = &local_info;
+		fill_engine_enable_masks(gt, info);
+	}
+
+	for (engine_class = 0; engine_class <= MAX_ENGINE_CLASS; ++engine_class) {
+		if (engine_class == OTHER_CLASS)
+			continue;
+
+		guc_class = engine_class_to_guc_class(engine_class);
+
+		if (!info->engine_enabled_masks[guc_class])
+			continue;
+
+		real_size = intel_engine_context_size(gt, engine_class);
+		alloc_size = PAGE_ALIGN(real_size);
+		total_size += alloc_size;
+
+		if (!blob)
+			continue;
+
+		blob->ads.eng_state_size[guc_class] = real_size;
+		blob->ads.golden_context_lrca[guc_class] = addr_ggtt;
+		addr_ggtt += alloc_size;
+	}
+
+	if (!blob)
+		return total_size;
+
+	GEM_BUG_ON(guc->ads_golden_ctxt_size != total_size);
+	return total_size;
+}
+
+static struct intel_engine_cs *find_engine_state(struct intel_gt *gt, u8 engine_class)
+{
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+
+	for_each_engine(engine, gt, id) {
+		if (engine->class != engine_class)
+			continue;
+
+		if (!engine->default_state)
+			continue;
+
+		return engine;
+	}
+
+	return NULL;
+}
+
+static void guc_init_golden_context(struct intel_guc *guc)
+{
 	struct __guc_ads_blob *blob = guc->ads_blob;
-	const u32 skipped_size = LRC_PPHWSP_SZ * PAGE_SIZE + LR_HW_CONTEXT_SIZE;
-	u32 base;
+	struct intel_engine_cs *engine;
+	struct intel_gt *gt = guc_to_gt(guc);
+	u32 addr_ggtt, offset;
+	u32 total_size = 0, alloc_size, real_size;
 	u8 engine_class, guc_class;
+	u8 *ptr;
 
-	/* GuC scheduling policies */
-	guc_policies_init(guc, &blob->policies);
+	if (!intel_uc_uses_guc_submission(&gt->uc))
+		return;
+
+	GEM_BUG_ON(!blob);
 
 	/*
-	 * GuC expects a per-engine-class context image and size
-	 * (minus hwsp and ring context). The context image will be
-	 * used to reinitialize engines after a reset. It must exist
-	 * and be pinned in the GGTT, so that the address won't change after
-	 * we have told GuC where to find it. The context size will be used
-	 * to validate that the LRC base + size fall within allowed GGTT.
+	 * Go back and fill in the golden context data now that it is
+	 * available.
 	 */
+	offset = guc_ads_golden_ctxt_offset(guc);
+	addr_ggtt = intel_guc_ggtt_offset(guc, guc->ads_vma) + offset;
+	ptr = ((u8 *) blob) + offset;
+
 	for (engine_class = 0; engine_class <= MAX_ENGINE_CLASS; ++engine_class) {
 		if (engine_class == OTHER_CLASS)
 			continue;
 
 		guc_class = engine_class_to_guc_class(engine_class);
 
-		/*
-		 * TODO: Set context pointer to default state to allow
-		 * GuC to re-init guilty contexts after internal reset.
-		 */
-		blob->ads.golden_context_lrca[guc_class] = 0;
-		blob->ads.eng_state_size[guc_class] =
-			intel_engine_context_size(gt, engine_class) -
-			skipped_size;
+		if (!blob->system_info.engine_enabled_masks[guc_class])
+			continue;
+
+		real_size = intel_engine_context_size(gt, engine_class);
+		alloc_size = PAGE_ALIGN(real_size);
+		total_size += alloc_size;
+
+		engine = find_engine_state(gt, engine_class);
+		if (!engine) {
+			drm_err(&gt->i915->drm, "No engine state recorded for class %d!\n", engine_class);
+			blob->ads.eng_state_size[guc_class] = 0;
+			blob->ads.golden_context_lrca[guc_class] = 0;
+			continue;
+		}
+
+		GEM_BUG_ON(blob->ads.eng_state_size[guc_class] != real_size);
+		GEM_BUG_ON(blob->ads.golden_context_lrca[guc_class] != addr_ggtt);
+		addr_ggtt += alloc_size;
+
+		shmem_read(engine->default_state, SKIP_SIZE, ptr + SKIP_SIZE, real_size);
+		ptr += alloc_size;
 	}
 
+	GEM_BUG_ON(guc->ads_golden_ctxt_size != total_size);
+}
+
+static void __guc_ads_init(struct intel_guc *guc)
+{
+	struct intel_gt *gt = guc_to_gt(guc);
+	struct drm_i915_private *i915 = gt->i915;
+	struct __guc_ads_blob *blob = guc->ads_blob;
+	u32 base;
+
+	/* GuC scheduling policies */
+	guc_policies_init(guc, &blob->policies);
+
 	/* System info */
-	blob->system_info.engine_enabled_masks[GUC_RENDER_CLASS] = 1;
-	blob->system_info.engine_enabled_masks[GUC_BLITTER_CLASS] = 1;
-	blob->system_info.engine_enabled_masks[GUC_VIDEO_CLASS] = VDBOX_MASK(gt);
-	blob->system_info.engine_enabled_masks[GUC_VIDEOENHANCE_CLASS] = VEBOX_MASK(gt);
+	fill_engine_enable_masks(gt, &blob->system_info);
 
 	blob->system_info.generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_SLICE_ENABLED] =
 		hweight8(gt->info.sseu.slice_mask);
@@ -380,6 +511,9 @@ static void __guc_ads_init(struct intel_guc *guc)
 			 GEN12_DOORBELLS_PER_SQIDI) + 1;
 	}
 
+	/* Golden contexts for re-initialising after a watchdog reset */
+	guc_prep_golden_context(guc, blob);
+
 	guc_mapping_table_init(guc_to_gt(guc), &blob->system_info);
 
 	base = intel_guc_ggtt_offset(guc, guc->ads_vma);
@@ -417,6 +551,13 @@ int intel_guc_ads_create(struct intel_guc *guc)
 		return ret;
 	guc->ads_regset_size = ret;
 
+	/* Likewise the golden contexts: */
+	ret = guc_prep_golden_context(guc, NULL);
+	if (ret < 0)
+		return ret;
+	guc->ads_golden_ctxt_size = ret;
+
+	/* Now the total size can be determined: */
 	size = guc_ads_blob_size(guc);
 
 	ret = intel_guc_allocate_and_map_vma(guc, size, &guc->ads_vma,
@@ -429,6 +570,18 @@ int intel_guc_ads_create(struct intel_guc *guc)
 	return 0;
 }
 
+void intel_guc_ads_init_late(struct intel_guc *guc)
+{
+	/*
+	 * The golden context setup requires the saved engine state from
+	 * __engines_record_defaults(). However, that requires engines to be
+	 * operational which means the ADS must already have been configured.
+	 * Fortunately, the golden context state is not needed until a hang
+	 * occurs, so it can be filled in during this late init phase.
+	 */
+	guc_init_golden_context(guc);
+}
+
 void intel_guc_ads_destroy(struct intel_guc *guc)
 {
 	i915_vma_unpin_and_release(&guc->ads_vma, I915_VMA_RELEASE_MAP);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h
index bdcb339a5321..3d85051d57e4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h
@@ -11,6 +11,7 @@ struct drm_printer;
 
 int intel_guc_ads_create(struct intel_guc *guc);
 void intel_guc_ads_destroy(struct intel_guc *guc);
+void intel_guc_ads_init_late(struct intel_guc *guc);
 void intel_guc_ads_reset(struct intel_guc *guc);
 void intel_guc_ads_print_policy_info(struct intel_guc *guc,
 				     struct drm_printer *p);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 77c1fe2ed883..7a69c3c027e9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -120,6 +120,11 @@ void intel_uc_init_early(struct intel_uc *uc)
 		uc->ops = &uc_ops_off;
 }
 
+void intel_uc_init_late(struct intel_uc *uc)
+{
+	intel_guc_init_late(&uc->guc);
+}
+
 void intel_uc_driver_late_release(struct intel_uc *uc)
 {
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
index 91315e3f1c58..e2da2b6e76e1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
@@ -35,6 +35,7 @@ struct intel_uc {
 };
 
 void intel_uc_init_early(struct intel_uc *uc);
+void intel_uc_init_late(struct intel_uc *uc);
 void intel_uc_driver_late_release(struct intel_uc *uc);
 void intel_uc_driver_remove(struct intel_uc *uc);
 void intel_uc_init_mmio(struct intel_uc *uc);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
