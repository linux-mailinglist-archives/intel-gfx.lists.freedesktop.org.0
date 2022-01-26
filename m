Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC6D49C7DD
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 11:46:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D53A10E8D7;
	Wed, 26 Jan 2022 10:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD6CE10E834
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 10:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643193983; x=1674729983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pr6hbdSwzMLYhpSeEg+hnwgYxhvvhPpGZZqW7NOJCAY=;
 b=DZSDKytFr4OIEsa7Ofo7HfiRF0UMd2s3Lyuo8FCSm908Uao7FxafLJjC
 +kJPe78cbQfd0Tt9HZU1w+FhiNygOyyHpDRJM1S4+HL3x3Z8mHQXYNujl
 YvpxC7BYfQkq3P7gvIpfy0+ZtROuirW4R9ju6GD8DjgILkOCZCl+S7A+N
 zH5SmYGoIotFQ+jI20nZqw0CurvtSpAobIfhACEbkokopdcluivFsS50T
 f+5BQkwESqP118NFvecqLEDmCOwzSeqBBqTy1DW7dnyFv5bQ23uwADC2P
 W1+KGgyr3s+/er2ez4HpFyajHd21gqL4s9B/wwefbh1J/w3GcaQ1azKML w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="246301885"
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="246301885"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 02:46:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="477445988"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga003.jf.intel.com with ESMTP; 26 Jan 2022 02:46:22 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jan 2022 02:48:20 -0800
Message-Id: <20220126104822.3653079-9-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 08/10] drm/i915/guc: Plumb GuC-capture into
 gpu_coredump
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a flags parameter through all of the coredump creation
functions. Add a bitmask flag to indicate if the top
level gpu_coredump event is triggered in response to
a GuC context reset notification.

Using that flag, ensure all coredump functions that
read or print mmio-register values related to work submission
or command-streamer engines are skipped and replaced with
a calls guc-capture module equivalent functions to retrieve
or print the register dump.

While here, split out display related register reading
and printing into its own function that is called agnostic
to whether GuC had triggered the reset.

For now, introduce an empty printing function that can
filled in on a subsequent patch just to handle formatting.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  |   4 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |   2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    |  78 ++++++
 .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |  11 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   2 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |   2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         | 263 ++++++++++++------
 drivers/gpu/drm/i915/i915_gpu_error.h         |  31 ++-
 8 files changed, 295 insertions(+), 98 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 960a9aaf4f3a..c8bb43863461 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2230,11 +2230,11 @@ static struct execlists_capture *capture_regs(struct intel_engine_cs *engine)
 	if (!cap->error)
 		goto err_cap;
 
-	cap->error->gt = intel_gt_coredump_alloc(engine->gt, gfp);
+	cap->error->gt = intel_gt_coredump_alloc(engine->gt, gfp, CORE_DUMP_FLAG_NONE);
 	if (!cap->error->gt)
 		goto err_gpu;
 
-	cap->error->gt->engine = intel_engine_coredump_alloc(engine, gfp);
+	cap->error->gt->engine = intel_engine_coredump_alloc(engine, gfp, CORE_DUMP_FLAG_NONE);
 	if (!cap->error->gt->engine)
 		goto err_gt;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 6f2821cca409..c1dc3f8b1108 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1305,7 +1305,7 @@ void intel_gt_handle_error(struct intel_gt *gt,
 	engine_mask &= gt->info.engine_mask;
 
 	if (flags & I915_ERROR_CAPTURE) {
-		i915_capture_error_state(gt, engine_mask);
+		i915_capture_error_state(gt, engine_mask, CORE_DUMP_FLAG_NONE);
 		intel_gt_clear_error_registers(gt, engine_mask);
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 0b6d743712a6..2f5dc413dddc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -728,6 +728,17 @@ int intel_guc_capture_output_min_size_est(struct intel_guc *guc)
  *                   instance). This node id added to a linked list stored in
  *                   guc->capture->priv for matchup and printout when triggered by
  *                   i915_gpu_coredump and err_print_gt (via error capture sysfs) later.
+ *
+ * GUC --> notify context reset:
+ * -----------------------------
+ *     --> G2H CONTEXT RESET
+ *                   L--> guc_handle_context_reset --> i915_capture_error_state
+ *                          L--> i915_gpu_coredump(..IS_GUC_CAPTURE) --> gt_record_engines
+ *                               --> capture_engine(..IS_GUC_CAPTURE)
+ *                                  L--> detach C from internal linked list and add into
+ *                                       intel_engine_coredump struct (if the context and
+ *                                       engine of the event notification matches a node
+ *                                       in the link list)
  */
 
 static int guc_capture_buf_cnt(struct __guc_capture_bufstate *buf)
@@ -1203,6 +1214,73 @@ static void __guc_capture_store_snapshot_work(struct intel_guc *guc)
 	mutex_unlock(&guc->log_state[GUC_CAPTURE_LOG_BUFFER].lock);
 }
 
+#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
+
+int intel_guc_capture_print_engine_node(struct drm_i915_error_state_buf *ebuf,
+					const struct intel_engine_coredump *ee)
+{
+	return 0;
+}
+
+#endif //CONFIG_DRM_I915_DEBUG_GUC
+
+void intel_guc_capture_free_node(struct intel_engine_coredump *ee)
+{
+	int i;
+
+	if (!ee)
+		return;
+	if (!ee->guc_capture_node)
+		return;
+	for (i = GUC_CAPTURE_LIST_TYPE_GLOBAL; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
+		if (ee->guc_capture_node->reginfo[i].regs)
+			kfree(ee->guc_capture_node->reginfo[i].regs);
+	}
+	kfree(ee->guc_capture_node);
+	ee->guc_capture_node = NULL;
+}
+
+void intel_guc_capture_get_matching_node(struct intel_gt *gt,
+					 struct intel_engine_coredump *ee,
+					 struct intel_context *ce)
+{
+	struct intel_guc *guc;
+	struct drm_i915_private *i915;
+
+	if (!gt || !ee || !ce)
+		return;
+
+	i915 = gt->i915;
+	guc = &gt->uc.guc;
+	if (!guc->capture.priv)
+		return;
+
+	GEM_BUG_ON(ee->guc_capture_node);
+	/*
+	 * Look for a matching GuC reported error capture node from
+	 * the internal output link-list based on lrca, guc-id and engine
+	 * identification.
+	 */
+	if (!list_empty(&guc->capture.priv->outlist)) {
+		struct __guc_capture_parsed_output *n, *ntmp;
+
+		list_for_each_entry_safe(n, ntmp, &guc->capture.priv->outlist, link) {
+			if (n->eng_inst == GUC_ID_TO_ENGINE_INSTANCE(ee->engine->guc_id) &&
+			    n->eng_class == GUC_ID_TO_ENGINE_CLASS(ee->engine->guc_id) &&
+			    n->guc_id == ce->guc_id.id &&
+			    (n->lrca & CTX_GTT_ADDRESS_MASK) ==
+			    (ce->lrc.lrca & CTX_GTT_ADDRESS_MASK)) {
+				list_del(&n->link);
+				--guc->capture.priv->listcount;
+				ee->guc_capture_node = n;
+				ee->capture = &guc->capture;
+				return;
+			}
+		}
+	}
+	drm_warn(&i915->drm, "GuC capture can't match ee to node\n");
+}
+
 void intel_guc_capture_store_snapshot(struct intel_guc *guc)
 {
 	if (guc->capture.priv)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
index c240a4cc046b..9a2037638e64 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
@@ -8,12 +8,21 @@
 
 #include <linux/types.h>
 
-struct intel_guc;
+struct drm_i915_error_state_buf;
 struct guc_ads;
 struct guc_gt_system_info;
+struct intel_context;
+struct intel_engine_coredump;
+struct intel_gt;
+struct intel_guc;
 
 int intel_guc_capture_prep_lists(struct intel_guc *guc, struct guc_ads *blob, u32 blob_ggtt,
 				 u32 capture_offset, struct guc_gt_system_info *sysinfo);
+int intel_guc_capture_print_engine_node(struct drm_i915_error_state_buf *m,
+					const struct intel_engine_coredump *ee);
+void intel_guc_capture_get_matching_node(struct intel_gt *gt, struct intel_engine_coredump *ee,
+					 struct intel_context *ce);
+void intel_guc_capture_free_node(struct intel_engine_coredump *ee);
 void intel_guc_capture_store_snapshot(struct intel_guc *guc);
 int intel_guc_capture_output_min_size_est(struct intel_guc *guc);
 void intel_guc_capture_destroy(struct intel_guc *guc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index c19d6d682394..45ec7db3a85f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -3953,7 +3953,7 @@ static void capture_error_state(struct intel_guc *guc,
 
 	intel_engine_set_hung_context(engine, ce);
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-		i915_capture_error_state(gt, engine->mask);
+		i915_capture_error_state(gt, engine->mask, CORE_DUMP_FLAG_IS_GUC_CAPTURE);
 	atomic_inc(&i915->gpu_error.reset_engine_count[engine->uabi_class]);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index f3141b58d912..d2af0d1f3a3e 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -294,7 +294,7 @@ static int i915_gpu_info_open(struct inode *inode, struct file *file)
 
 	gpu = NULL;
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-		gpu = i915_gpu_coredump(to_gt(i915), ALL_ENGINES);
+		gpu = i915_gpu_coredump(to_gt(i915), ALL_ENGINES, CORE_DUMP_FLAG_NONE);
 	if (IS_ERR(gpu))
 		return PTR_ERR(gpu);
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index aee42eae4729..d8c82589d86e 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -590,15 +590,11 @@ static void error_print_engine(struct drm_i915_error_state_buf *m,
 				   ee->vm_info.pp_dir_base);
 		}
 	}
-	err_printf(m, "  hung: %u\n", ee->hung);
-	err_printf(m, "  engine reset count: %u\n", ee->reset_count);
 
 	for (n = 0; n < ee->num_ports; n++) {
 		err_printf(m, "  ELSP[%d]:", n);
 		error_print_request(m, " ", &ee->execlist[n]);
 	}
-
-	error_print_context(m, "  Active context: ", &ee->context);
 }
 
 void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...)
@@ -710,23 +706,30 @@ static void err_print_gt_info(struct drm_i915_error_state_buf *m,
 	intel_sseu_print_topology(&gt->info.sseu, &p);
 }
 
-static void err_print_gt(struct drm_i915_error_state_buf *m,
-			 struct intel_gt_coredump *gt)
+static void err_print_gt_display(struct drm_i915_error_state_buf *m,
+				 struct intel_gt_coredump *gt)
+{
+	err_printf(m, "IER: 0x%08x\n", gt->ier);
+	err_printf(m, "DERRMR: 0x%08x\n", gt->derrmr);
+}
+
+static void err_print_gt_global_nonguc(struct drm_i915_error_state_buf *m,
+				       struct intel_gt_coredump *gt)
 {
-	const struct intel_engine_coredump *ee;
 	int i;
 
 	err_printf(m, "GT awake: %s\n", yesno(gt->awake));
 	err_printf(m, "EIR: 0x%08x\n", gt->eir);
-	err_printf(m, "IER: 0x%08x\n", gt->ier);
+	err_printf(m, "PGTBL_ER: 0x%08x\n", gt->pgtbl_er);
+
 	for (i = 0; i < gt->ngtier; i++)
 		err_printf(m, "GTIER[%d]: 0x%08x\n", i, gt->gtier[i]);
-	err_printf(m, "PGTBL_ER: 0x%08x\n", gt->pgtbl_er);
-	err_printf(m, "FORCEWAKE: 0x%08x\n", gt->forcewake);
-	err_printf(m, "DERRMR: 0x%08x\n", gt->derrmr);
+}
 
-	for (i = 0; i < gt->nfence; i++)
-		err_printf(m, "  fence[%d] = %08llx\n", i, gt->fence[i]);
+static void err_print_gt_global(struct drm_i915_error_state_buf *m,
+				struct intel_gt_coredump *gt)
+{
+	err_printf(m, "FORCEWAKE: 0x%08x\n", gt->forcewake);
 
 	if (IS_GRAPHICS_VER(m->i915, 6, 11)) {
 		err_printf(m, "ERROR: 0x%08x\n", gt->error);
@@ -765,19 +768,38 @@ static void err_print_gt(struct drm_i915_error_state_buf *m,
 
 		err_printf(m, "  GAM_DONE: 0x%08x\n", gt->gam_done);
 	}
+}
+
+static void err_print_gt_fences(struct drm_i915_error_state_buf *m,
+				struct intel_gt_coredump *gt)
+{
+	int i;
+
+	for (i = 0; i < gt->nfence; i++)
+		err_printf(m, "  fence[%d] = %08llx\n", i, gt->fence[i]);
+}
+
+static void err_print_gt_engines(struct drm_i915_error_state_buf *m,
+				 struct intel_gt_coredump *gt)
+{
+	const struct intel_engine_coredump *ee;
 
 	for (ee = gt->engine; ee; ee = ee->next) {
 		const struct i915_vma_coredump *vma;
 
-		error_print_engine(m, ee);
+		if (ee->guc_capture_node)
+			intel_guc_capture_print_engine_node(m, ee);
+		else
+			error_print_engine(m, ee);
+
+		err_printf(m, "  hung: %u\n", ee->hung);
+		err_printf(m, "  engine reset count: %u\n", ee->reset_count);
+		error_print_context(m, "  Active context: ", &ee->context);
+
 		for (vma = ee->vma; vma; vma = vma->next)
 			print_error_vma(m, ee->engine, vma);
 	}
 
-	if (gt->uc)
-		err_print_uc(m, gt->uc);
-
-	err_print_gt_info(m, gt);
 }
 
 static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
@@ -833,8 +855,30 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 	err_printf(m, "RPM wakelock: %s\n", yesno(error->wakelock));
 	err_printf(m, "PM suspended: %s\n", yesno(error->suspended));
 
-	if (error->gt)
-		err_print_gt(m, error->gt);
+	if (error->gt) {
+		bool print_guc_capture = false;
+
+		if (error->gt->uc && error->gt->uc->is_guc_capture)
+			print_guc_capture = true;
+
+		err_print_gt_display(m, error->gt);
+		err_print_gt_global_nonguc(m, error->gt);
+		err_print_gt_fences(m, error->gt);
+
+		/*
+		 * GuC dumped global, eng-class and eng-instance registers together
+		 * as part of engine state dump so we print in err_print_gt_engines
+		 */
+		if (!print_guc_capture)
+			err_print_gt_global(m, error->gt);
+
+		err_print_gt_engines(m, error->gt);
+
+		if (error->gt->uc)
+			err_print_uc(m, error->gt->uc);
+
+		err_print_gt_info(m, error->gt);
+	}
 
 	if (error->overlay)
 		intel_overlay_print_error_state(m, error->overlay);
@@ -982,6 +1026,7 @@ static void cleanup_gt(struct intel_gt_coredump *gt)
 		gt->engine = ee->next;
 
 		i915_vma_coredump_free(ee->vma);
+		intel_guc_capture_free_node(ee);
 		kfree(ee);
 	}
 
@@ -1433,7 +1478,7 @@ static void add_vma_coredump(struct intel_engine_coredump *ee,
 }
 
 struct intel_engine_coredump *
-intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp)
+intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp, u32 dump_flags)
 {
 	struct intel_engine_coredump *ee;
 
@@ -1443,8 +1488,10 @@ intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp)
 
 	ee->engine = engine;
 
-	engine_record_registers(ee);
-	engine_record_execlists(ee);
+	if (!(dump_flags & CORE_DUMP_FLAG_IS_GUC_CAPTURE)) {
+		engine_record_registers(ee);
+		engine_record_execlists(ee);
+	}
 
 	return ee;
 }
@@ -1508,7 +1555,8 @@ intel_engine_coredump_add_vma(struct intel_engine_coredump *ee,
 
 static struct intel_engine_coredump *
 capture_engine(struct intel_engine_cs *engine,
-	       struct i915_vma_compress *compress)
+	       struct i915_vma_compress *compress,
+	       u32 dump_flags)
 {
 	struct intel_engine_capture_vma *capture = NULL;
 	struct intel_engine_coredump *ee;
@@ -1516,7 +1564,7 @@ capture_engine(struct intel_engine_cs *engine,
 	struct i915_request *rq = NULL;
 	unsigned long flags;
 
-	ee = intel_engine_coredump_alloc(engine, ALLOW_FAIL);
+	ee = intel_engine_coredump_alloc(engine, ALLOW_FAIL, dump_flags);
 	if (!ee)
 		return NULL;
 
@@ -1549,6 +1597,8 @@ capture_engine(struct intel_engine_cs *engine,
 		i915_request_put(rq);
 		goto no_request_capture;
 	}
+	if (dump_flags & CORE_DUMP_FLAG_IS_GUC_CAPTURE)
+		intel_guc_capture_get_matching_node(engine->gt, ee, ce);
 
 	intel_engine_coredump_add_vma(ee, capture, compress);
 	i915_request_put(rq);
@@ -1563,7 +1613,8 @@ capture_engine(struct intel_engine_cs *engine,
 static void
 gt_record_engines(struct intel_gt_coredump *gt,
 		  intel_engine_mask_t engine_mask,
-		  struct i915_vma_compress *compress)
+		  struct i915_vma_compress *compress,
+		  u32 dump_flags)
 {
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
@@ -1574,7 +1625,7 @@ gt_record_engines(struct intel_gt_coredump *gt,
 		/* Refill our page pool before entering atomic section */
 		pool_refill(&compress->pool, ALLOW_FAIL);
 
-		ee = capture_engine(engine, compress);
+		ee = capture_engine(engine, compress, dump_flags);
 		if (!ee)
 			continue;
 
@@ -1617,8 +1668,74 @@ gt_record_uc(struct intel_gt_coredump *gt,
 	return error_uc;
 }
 
-/* Capture all registers which don't fit into another category. */
-static void gt_record_regs(struct intel_gt_coredump *gt)
+/* Capture display registers. */
+static void gt_record_display_regs(struct intel_gt_coredump *gt)
+{
+	struct intel_uncore *uncore = gt->_gt->uncore;
+	struct drm_i915_private *i915 = uncore->i915;
+
+	if (GRAPHICS_VER(i915) >= 6)
+		gt->derrmr = intel_uncore_read(uncore, DERRMR);
+
+	if (GRAPHICS_VER(i915) >= 8)
+		gt->ier = intel_uncore_read(uncore, GEN8_DE_MISC_IER);
+	else if (IS_VALLEYVIEW(i915))
+		gt->ier = intel_uncore_read(uncore, VLV_IER);
+	else if (HAS_PCH_SPLIT(i915))
+		gt->ier = intel_uncore_read(uncore, DEIER);
+	else if (GRAPHICS_VER(i915) == 2)
+		gt->ier = intel_uncore_read16(uncore, GEN2_IER);
+	else
+		gt->ier = intel_uncore_read(uncore, GEN2_IER);
+}
+
+/* Capture all other registers that GuC doesn't capture. */
+static void gt_record_global_nonguc_regs(struct intel_gt_coredump *gt)
+{
+	struct intel_uncore *uncore = gt->_gt->uncore;
+	struct drm_i915_private *i915 = uncore->i915;
+	int i;
+
+	if (IS_VALLEYVIEW(i915)) {
+		gt->gtier[0] = intel_uncore_read(uncore, GTIER);
+		gt->ngtier = 1;
+	} else if (GRAPHICS_VER(i915) >= 11) {
+		gt->gtier[0] =
+			intel_uncore_read(uncore,
+					  GEN11_RENDER_COPY_INTR_ENABLE);
+		gt->gtier[1] =
+			intel_uncore_read(uncore, GEN11_VCS_VECS_INTR_ENABLE);
+		gt->gtier[2] =
+			intel_uncore_read(uncore, GEN11_GUC_SG_INTR_ENABLE);
+		gt->gtier[3] =
+			intel_uncore_read(uncore,
+					  GEN11_GPM_WGBOXPERF_INTR_ENABLE);
+		gt->gtier[4] =
+			intel_uncore_read(uncore,
+					  GEN11_CRYPTO_RSVD_INTR_ENABLE);
+		gt->gtier[5] =
+			intel_uncore_read(uncore,
+					  GEN11_GUNIT_CSME_INTR_ENABLE);
+		gt->ngtier = 6;
+	} else if (GRAPHICS_VER(i915) >= 8) {
+		for (i = 0; i < 4; i++)
+			gt->gtier[i] =
+				intel_uncore_read(uncore, GEN8_GT_IER(i));
+		gt->ngtier = 4;
+	} else if (HAS_PCH_SPLIT(i915)) {
+		gt->gtier[0] = intel_uncore_read(uncore, GTIER);
+		gt->ngtier = 1;
+	}
+
+	gt->eir = intel_uncore_read(uncore, EIR);
+	gt->pgtbl_er = intel_uncore_read(uncore, PGTBL_ER);
+}
+
+/*
+ * Capture all registers that relate to workload submission.
+ * NOTE: In GuC submission, when GuC resets an engine, it can dump these for us
+ */
+static void gt_record_global_regs(struct intel_gt_coredump *gt)
 {
 	struct intel_uncore *uncore = gt->_gt->uncore;
 	struct drm_i915_private *i915 = uncore->i915;
@@ -1634,11 +1751,8 @@ static void gt_record_regs(struct intel_gt_coredump *gt)
 	 */
 
 	/* 1: Registers specific to a single generation */
-	if (IS_VALLEYVIEW(i915)) {
-		gt->gtier[0] = intel_uncore_read(uncore, GTIER);
-		gt->ier = intel_uncore_read(uncore, VLV_IER);
+	if (IS_VALLEYVIEW(i915))
 		gt->forcewake = intel_uncore_read_fw(uncore, FORCEWAKE_VLV);
-	}
 
 	if (GRAPHICS_VER(i915) == 7)
 		gt->err_int = intel_uncore_read(uncore, GEN7_ERR_INT);
@@ -1666,7 +1780,6 @@ static void gt_record_regs(struct intel_gt_coredump *gt)
 		gt->forcewake = intel_uncore_read_fw(uncore, FORCEWAKE_MT);
 
 	if (GRAPHICS_VER(i915) >= 6) {
-		gt->derrmr = intel_uncore_read(uncore, DERRMR);
 		if (GRAPHICS_VER(i915) < 12) {
 			gt->error = intel_uncore_read(uncore, ERROR_GEN6);
 			gt->done_reg = intel_uncore_read(uncore, DONE_REG);
@@ -1702,44 +1815,6 @@ static void gt_record_regs(struct intel_gt_coredump *gt)
 
 		gt->gam_done = intel_uncore_read(uncore, GEN12_GAM_DONE);
 	}
-
-	/* 4: Everything else */
-	if (GRAPHICS_VER(i915) >= 11) {
-		gt->ier = intel_uncore_read(uncore, GEN8_DE_MISC_IER);
-		gt->gtier[0] =
-			intel_uncore_read(uncore,
-					  GEN11_RENDER_COPY_INTR_ENABLE);
-		gt->gtier[1] =
-			intel_uncore_read(uncore, GEN11_VCS_VECS_INTR_ENABLE);
-		gt->gtier[2] =
-			intel_uncore_read(uncore, GEN11_GUC_SG_INTR_ENABLE);
-		gt->gtier[3] =
-			intel_uncore_read(uncore,
-					  GEN11_GPM_WGBOXPERF_INTR_ENABLE);
-		gt->gtier[4] =
-			intel_uncore_read(uncore,
-					  GEN11_CRYPTO_RSVD_INTR_ENABLE);
-		gt->gtier[5] =
-			intel_uncore_read(uncore,
-					  GEN11_GUNIT_CSME_INTR_ENABLE);
-		gt->ngtier = 6;
-	} else if (GRAPHICS_VER(i915) >= 8) {
-		gt->ier = intel_uncore_read(uncore, GEN8_DE_MISC_IER);
-		for (i = 0; i < 4; i++)
-			gt->gtier[i] =
-				intel_uncore_read(uncore, GEN8_GT_IER(i));
-		gt->ngtier = 4;
-	} else if (HAS_PCH_SPLIT(i915)) {
-		gt->ier = intel_uncore_read(uncore, DEIER);
-		gt->gtier[0] = intel_uncore_read(uncore, GTIER);
-		gt->ngtier = 1;
-	} else if (GRAPHICS_VER(i915) == 2) {
-		gt->ier = intel_uncore_read16(uncore, GEN2_IER);
-	} else if (!IS_VALLEYVIEW(i915)) {
-		gt->ier = intel_uncore_read(uncore, GEN2_IER);
-	}
-	gt->eir = intel_uncore_read(uncore, EIR);
-	gt->pgtbl_er = intel_uncore_read(uncore, PGTBL_ER);
 }
 
 static void gt_record_info(struct intel_gt_coredump *gt)
@@ -1851,7 +1926,7 @@ i915_gpu_coredump_alloc(struct drm_i915_private *i915, gfp_t gfp)
 #define DAY_AS_SECONDS(x) (24 * 60 * 60 * (x))
 
 struct intel_gt_coredump *
-intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp)
+intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp, u32 dump_flags)
 {
 	struct intel_gt_coredump *gc;
 
@@ -1862,7 +1937,21 @@ intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp)
 	gc->_gt = gt;
 	gc->awake = intel_gt_pm_is_awake(gt);
 
-	gt_record_regs(gc);
+	gt_record_display_regs(gc);
+	gt_record_global_nonguc_regs(gc);
+
+	/*
+	 * GuC dumps global, eng-class and eng-instance registers
+	 * (that can change as part of engine state during execution)
+	 * before an engine is reset due to a hung context.
+	 * GuC captures and reports all three groups of registers
+	 * together as a single set before the engine is reset.
+	 * Thus, if GuC triggered the context reset we retrieve
+	 * the register values as part of gt_record_engines.
+	 */
+	if (!(dump_flags & CORE_DUMP_FLAG_IS_GUC_CAPTURE))
+		gt_record_global_regs(gc);
+
 	gt_record_fences(gc);
 
 	return gc;
@@ -1896,7 +1985,7 @@ void i915_vma_capture_finish(struct intel_gt_coredump *gt,
 }
 
 static struct i915_gpu_coredump *
-__i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask)
+__i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 dump_flags)
 {
 	struct drm_i915_private *i915 = gt->i915;
 	struct i915_gpu_coredump *error;
@@ -1910,7 +1999,7 @@ __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask)
 	if (!error)
 		return ERR_PTR(-ENOMEM);
 
-	error->gt = intel_gt_coredump_alloc(gt, ALLOW_FAIL);
+	error->gt = intel_gt_coredump_alloc(gt, ALLOW_FAIL, dump_flags);
 	if (error->gt) {
 		struct i915_vma_compress *compress;
 
@@ -1921,11 +2010,19 @@ __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask)
 			return ERR_PTR(-ENOMEM);
 		}
 
+		if (INTEL_INFO(i915)->has_gt_uc) {
+			error->gt->uc = gt_record_uc(error->gt, compress);
+			if (error->gt->uc) {
+				if (dump_flags & CORE_DUMP_FLAG_IS_GUC_CAPTURE)
+					error->gt->uc->is_guc_capture = true;
+				else
+					GEM_BUG_ON(error->gt->uc->is_guc_capture);
+			}
+		}
+
 		gt_record_info(error->gt);
-		gt_record_engines(error->gt, engine_mask, compress);
+		gt_record_engines(error->gt, engine_mask, compress, dump_flags);
 
-		if (INTEL_INFO(i915)->has_gt_uc)
-			error->gt->uc = gt_record_uc(error->gt, compress);
 
 		i915_vma_capture_finish(error->gt, compress);
 
@@ -1938,7 +2035,7 @@ __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask)
 }
 
 struct i915_gpu_coredump *
-i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask)
+i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 dump_flags)
 {
 	static DEFINE_MUTEX(capture_mutex);
 	int ret = mutex_lock_interruptible(&capture_mutex);
@@ -1947,7 +2044,7 @@ i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask)
 	if (ret)
 		return ERR_PTR(ret);
 
-	dump = __i915_gpu_coredump(gt, engine_mask);
+	dump = __i915_gpu_coredump(gt, engine_mask, dump_flags);
 	mutex_unlock(&capture_mutex);
 
 	return dump;
@@ -1994,11 +2091,11 @@ void i915_error_state_store(struct i915_gpu_coredump *error)
  * to pick up.
  */
 void i915_capture_error_state(struct intel_gt *gt,
-			      intel_engine_mask_t engine_mask)
+			      intel_engine_mask_t engine_mask, u32 dump_flags)
 {
 	struct i915_gpu_coredump *error;
 
-	error = i915_gpu_coredump(gt, engine_mask);
+	error = i915_gpu_coredump(gt, engine_mask, dump_flags);
 	if (IS_ERR(error)) {
 		cmpxchg(&gt->i915->gpu_error.first_error, NULL, error);
 		return;
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 5aedf5129814..d20a1779ea51 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -17,6 +17,7 @@
 #include "gt/intel_engine.h"
 #include "gt/intel_gt_types.h"
 #include "gt/uc/intel_uc_fw.h"
+#include "gt/uc/intel_guc_capture.h"
 
 #include "intel_device_info.h"
 
@@ -53,6 +54,8 @@ struct i915_request_coredump {
 	struct i915_sched_attr sched_attr;
 };
 
+struct __guc_capture_parsed_output;
+
 struct intel_engine_coredump {
 	const struct intel_engine_cs *engine;
 
@@ -84,6 +87,10 @@ struct intel_engine_coredump {
 	u32 rc_psmi; /* sleep state */
 	struct intel_instdone instdone;
 
+	/* GuC matched capture-lists info */
+	struct intel_guc_state_capture *capture;
+	struct __guc_capture_parsed_output *guc_capture_node;
+
 	struct i915_gem_context_coredump {
 		char comm[TASK_COMM_LEN];
 
@@ -124,7 +131,6 @@ struct intel_gt_coredump {
 	u32 pgtbl_er;
 	u32 ier;
 	u32 gtier[6], ngtier;
-	u32 derrmr;
 	u32 forcewake;
 	u32 error; /* gen6+ */
 	u32 err_int; /* gen7 */
@@ -137,9 +143,12 @@ struct intel_gt_coredump {
 	u32 gfx_mode;
 	u32 gtt_cache;
 	u32 aux_err; /* gen12 */
-	u32 sfc_done[GEN12_SFC_DONE_MAX]; /* gen12 */
 	u32 gam_done; /* gen12 */
 
+	/* Display related */
+	u32 derrmr;
+	u32 sfc_done[GEN12_SFC_DONE_MAX]; /* gen12 */
+
 	u32 nfence;
 	u64 fence[I915_MAX_NUM_FENCES];
 
@@ -149,6 +158,7 @@ struct intel_gt_coredump {
 		struct intel_uc_fw guc_fw;
 		struct intel_uc_fw huc_fw;
 		struct i915_vma_coredump *guc_log;
+		bool is_guc_capture;
 	} *uc;
 
 	struct intel_gt_coredump *next;
@@ -210,24 +220,27 @@ struct drm_i915_error_state_buf {
 	int err;
 };
 
+#define CORE_DUMP_FLAG_NONE           0x0
+#define CORE_DUMP_FLAG_IS_GUC_CAPTURE BIT(0)
+
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
 
 __printf(2, 3)
 void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...);
 
 struct i915_gpu_coredump *i915_gpu_coredump(struct intel_gt *gt,
-					    intel_engine_mask_t engine_mask);
+					    intel_engine_mask_t engine_mask, u32 dump_flags);
 void i915_capture_error_state(struct intel_gt *gt,
-			      intel_engine_mask_t engine_mask);
+			      intel_engine_mask_t engine_mask, u32 dump_flags);
 
 struct i915_gpu_coredump *
 i915_gpu_coredump_alloc(struct drm_i915_private *i915, gfp_t gfp);
 
 struct intel_gt_coredump *
-intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp);
+intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp, u32 dump_flags);
 
 struct intel_engine_coredump *
-intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp);
+intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp, u32 dump_flags);
 
 struct intel_engine_capture_vma *
 intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
@@ -271,7 +284,7 @@ void i915_disable_error_state(struct drm_i915_private *i915, int err);
 #else
 
 static inline void
-i915_capture_error_state(struct intel_gt *gt, intel_engine_mask_t engine_mask)
+i915_capture_error_state(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 dump_flags)
 {
 }
 
@@ -282,13 +295,13 @@ i915_gpu_coredump_alloc(struct drm_i915_private *i915, gfp_t gfp)
 }
 
 static inline struct intel_gt_coredump *
-intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp)
+intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp, u32 dump_flags)
 {
 	return NULL;
 }
 
 static inline struct intel_engine_coredump *
-intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp)
+intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp, u32 dump_flags)
 {
 	return NULL;
 }
-- 
2.25.1

