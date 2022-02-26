Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E33224C5404
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 06:53:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11AAA10ECFE;
	Sat, 26 Feb 2022 05:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7322B10ECFB
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Feb 2022 05:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645854797; x=1677390797;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rcRtLJLVCLHAeSWa5LiqO8+MIlGdF6SGGusgBBNvs1k=;
 b=L9jrwWMCphmv8hNmxOqlAIGKpn+Qv2ClWUxtTZhagQxXFUX6zRRN9D26
 IP/VXL1OT7lxLe7XvD9PhAOhRISgJubH+etKh5lj9GsPiO3sB7YYZmDT6
 nUiKSB4z1sEL5Zz1MmrL2GbfiDdpwRep/Av8e9sDGeOaZyDxBmK1V1zMM
 jgvbu/VBLjEzEqLTt9GJLy93qYbIIiL80IV7tcP5v9wiawJ5VqWYb322O
 0tZLkPE9wdb/ZyBr95g2oXOBclT3Lxd4UNkTqNEv8B3f+dmR+o8ZYVo6H
 mIByP7afCREzaKLx+dRc1XB9KHacKB0j4HG2DLMJBinlVqGVEtxV5rcyJ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10269"; a="277274596"
X-IronPort-AV: E=Sophos;i="5.90,138,1643702400"; d="scan'208";a="277274596"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 21:53:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,138,1643702400"; d="scan'208";a="574817098"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga001.jf.intel.com with ESMTP; 25 Feb 2022 21:53:16 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Feb 2022 21:55:25 -0800
Message-Id: <20220226055526.665514-13-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220226055526.665514-1-alan.previn.teres.alexis@intel.com>
References: <20220226055526.665514-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 12/13] drm/i915/guc: Plumb GuC-capture into
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
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  |   4 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |   2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    |  69 +++++
 .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |  10 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   2 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |   2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         | 266 ++++++++++++------
 drivers/gpu/drm/i915/i915_gpu_error.h         |  30 +-
 8 files changed, 288 insertions(+), 97 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 961d795220a3..fc7c27df5d44 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2231,11 +2231,11 @@ static struct execlists_capture *capture_regs(struct intel_engine_cs *engine)
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
index 82713264b96c..2d120bd391a2 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1318,7 +1318,7 @@ void intel_gt_handle_error(struct intel_gt *gt,
 	engine_mask &= gt->info.engine_mask;
 
 	if (flags & I915_ERROR_CAPTURE) {
-		i915_capture_error_state(gt, engine_mask);
+		i915_capture_error_state(gt, engine_mask, CORE_DUMP_FLAG_NONE);
 		intel_gt_clear_error_registers(gt, engine_mask);
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 944b4bd8cdfb..8ade155329d2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -723,6 +723,18 @@ int intel_guc_capture_output_min_size_est(struct intel_guc *guc)
  *                   data from GuC and then it's added into guc->capture->priv->outlist linked
  *                   list. This list is used for matchup and printout by i915_gpu_coredump
  *                   and err_print_gt, (when user invokes the error capture sysfs).
+ *
+ * GUC --> notify context reset:
+ * -----------------------------
+ *     --> G2H CONTEXT RESET
+ *                   L--> guc_handle_context_reset --> i915_capture_error_state
+ *                          L--> i915_gpu_coredump(..IS_GUC_CAPTURE) --> gt_record_engines
+ *                               --> capture_engine(..IS_GUC_CAPTURE)
+ *                               L--> intel_guc_capture_get_matching_node is where
+ *                                    detach C from internal linked list and add it into
+ *                                    intel_engine_coredump struct (if the context and
+ *                                    engine of the event notification matches a node
+ *                                    in the link list).
  */
 
 static int guc_capture_buf_cnt(struct __guc_capture_bufstate *buf)
@@ -1321,6 +1333,63 @@ static void __guc_capture_process_output(struct intel_guc *guc)
 	__guc_capture_flushlog_complete(guc);
 }
 
+#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
+
+int intel_guc_capture_print_engine_node(struct drm_i915_error_state_buf *ebuf,
+					const struct intel_engine_coredump *ee)
+{
+	return 0;
+}
+
+#endif //CONFIG_DRM_I915_CAPTURE_ERROR
+
+void intel_guc_capture_free_node(struct intel_engine_coredump *ee)
+{
+	if (!ee || !ee->guc_capture_node)
+		return;
+
+	guc_capture_add_node_to_cachelist(ee->capture->priv, ee->guc_capture_node);
+	ee->capture = NULL;
+	ee->guc_capture_node = NULL;
+}
+
+void intel_guc_capture_get_matching_node(struct intel_gt *gt,
+					 struct intel_engine_coredump *ee,
+					 struct intel_context *ce)
+{
+	struct __guc_capture_parsed_output *n, *ntmp;
+	struct drm_i915_private *i915;
+	struct intel_guc *guc;
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
+	list_for_each_entry_safe(n, ntmp, &guc->capture.priv->outlist, link) {
+		if (n->eng_inst == GUC_ID_TO_ENGINE_INSTANCE(ee->engine->guc_id) &&
+			n->eng_class == GUC_ID_TO_ENGINE_CLASS(ee->engine->guc_id) &&
+			n->guc_id && n->guc_id == ce->guc_id.id &&
+			(n->lrca & CTX_GTT_ADDRESS_MASK) && (n->lrca & CTX_GTT_ADDRESS_MASK) ==
+			(ce->lrc.lrca & CTX_GTT_ADDRESS_MASK)) {
+			list_del(&n->link);
+			ee->guc_capture_node = n;
+			ee->capture = &guc->capture;
+			return;
+		}
+	}
+	drm_dbg(&i915->drm, "GuC capture can't match ee to node\n");
+}
+
 void intel_guc_capture_process(struct intel_guc *guc)
 {
 	if (guc->capture.priv)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
index 6b73a0ea8df1..4e6bc7103b75 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
@@ -8,9 +8,19 @@
 
 #include <linux/types.h>
 
+struct drm_i915_error_state_buf;
+struct guc_ads;
 struct guc_gt_system_info;
+struct intel_context;
+struct intel_engine_coredump;
+struct intel_gt;
 struct intel_guc;
 
+void intel_guc_capture_free_node(struct intel_engine_coredump *ee);
+int intel_guc_capture_print_engine_node(struct drm_i915_error_state_buf *m,
+					const struct intel_engine_coredump *ee);
+void intel_guc_capture_get_matching_node(struct intel_gt *gt, struct intel_engine_coredump *ee,
+					 struct intel_context *ce);
 void intel_guc_capture_process(struct intel_guc *guc);
 int intel_guc_capture_output_min_size_est(struct intel_guc *guc);
 int intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index c089244e7455..5310719f96c8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -4002,7 +4002,7 @@ static void capture_error_state(struct intel_guc *guc,
 
 	intel_engine_set_hung_context(engine, ce);
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-		i915_capture_error_state(gt, engine->mask);
+		i915_capture_error_state(gt, engine->mask, CORE_DUMP_FLAG_IS_GUC_CAPTURE);
 	atomic_inc(&i915->gpu_error.reset_engine_count[engine->uabi_class]);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 946bbe57bfe5..274abf267f35 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -307,7 +307,7 @@ static int i915_gpu_info_open(struct inode *inode, struct file *file)
 
 	gpu = NULL;
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-		gpu = i915_gpu_coredump(to_gt(i915), ALL_ENGINES);
+		gpu = i915_gpu_coredump(to_gt(i915), ALL_ENGINES, CORE_DUMP_FLAG_NONE);
 	if (IS_ERR(gpu))
 		return PTR_ERR(gpu);
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 1d042551619e..3d566bbe228d 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -46,6 +46,7 @@
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_gt_regs.h"
+#include "gt/uc/intel_guc_capture.h"
 
 #include "i915_driver.h"
 #include "i915_drv.h"
@@ -593,15 +594,11 @@ static void error_print_engine(struct drm_i915_error_state_buf *m,
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
@@ -713,23 +710,30 @@ static void err_print_gt_info(struct drm_i915_error_state_buf *m,
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
@@ -768,19 +772,38 @@ static void err_print_gt(struct drm_i915_error_state_buf *m,
 
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
@@ -836,8 +859,30 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
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
@@ -985,6 +1030,7 @@ static void cleanup_gt(struct intel_gt_coredump *gt)
 		gt->engine = ee->next;
 
 		i915_vma_coredump_free(ee->vma);
+		intel_guc_capture_free_node(ee);
 		kfree(ee);
 	}
 
@@ -1436,7 +1482,7 @@ static void add_vma_coredump(struct intel_engine_coredump *ee,
 }
 
 struct intel_engine_coredump *
-intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp)
+intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp, u32 dump_flags)
 {
 	struct intel_engine_coredump *ee;
 
@@ -1446,8 +1492,10 @@ intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp)
 
 	ee->engine = engine;
 
-	engine_record_registers(ee);
-	engine_record_execlists(ee);
+	if (!(dump_flags & CORE_DUMP_FLAG_IS_GUC_CAPTURE)) {
+		engine_record_registers(ee);
+		engine_record_execlists(ee);
+	}
 
 	return ee;
 }
@@ -1511,7 +1559,8 @@ intel_engine_coredump_add_vma(struct intel_engine_coredump *ee,
 
 static struct intel_engine_coredump *
 capture_engine(struct intel_engine_cs *engine,
-	       struct i915_vma_compress *compress)
+	       struct i915_vma_compress *compress,
+	       u32 dump_flags)
 {
 	struct intel_engine_capture_vma *capture = NULL;
 	struct intel_engine_coredump *ee;
@@ -1519,7 +1568,7 @@ capture_engine(struct intel_engine_cs *engine,
 	struct i915_request *rq = NULL;
 	unsigned long flags;
 
-	ee = intel_engine_coredump_alloc(engine, ALLOW_FAIL);
+	ee = intel_engine_coredump_alloc(engine, ALLOW_FAIL, dump_flags);
 	if (!ee)
 		return NULL;
 
@@ -1552,6 +1601,8 @@ capture_engine(struct intel_engine_cs *engine,
 		i915_request_put(rq);
 		goto no_request_capture;
 	}
+	if (dump_flags & CORE_DUMP_FLAG_IS_GUC_CAPTURE)
+		intel_guc_capture_get_matching_node(engine->gt, ee, ce);
 
 	intel_engine_coredump_add_vma(ee, capture, compress);
 	i915_request_put(rq);
@@ -1566,7 +1617,8 @@ capture_engine(struct intel_engine_cs *engine,
 static void
 gt_record_engines(struct intel_gt_coredump *gt,
 		  intel_engine_mask_t engine_mask,
-		  struct i915_vma_compress *compress)
+		  struct i915_vma_compress *compress,
+		  u32 dump_flags)
 {
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
@@ -1577,7 +1629,7 @@ gt_record_engines(struct intel_gt_coredump *gt,
 		/* Refill our page pool before entering atomic section */
 		pool_refill(&compress->pool, ALLOW_FAIL);
 
-		ee = capture_engine(engine, compress);
+		ee = capture_engine(engine, compress, dump_flags);
 		if (!ee)
 			continue;
 
@@ -1585,6 +1637,8 @@ gt_record_engines(struct intel_gt_coredump *gt,
 
 		gt->simulated |= ee->simulated;
 		if (ee->simulated) {
+			if (dump_flags & CORE_DUMP_FLAG_IS_GUC_CAPTURE)
+				intel_guc_capture_free_node(ee);
 			kfree(ee);
 			continue;
 		}
@@ -1620,8 +1674,74 @@ gt_record_uc(struct intel_gt_coredump *gt,
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
@@ -1637,11 +1757,8 @@ static void gt_record_regs(struct intel_gt_coredump *gt)
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
@@ -1669,7 +1786,6 @@ static void gt_record_regs(struct intel_gt_coredump *gt)
 		gt->forcewake = intel_uncore_read_fw(uncore, FORCEWAKE_MT);
 
 	if (GRAPHICS_VER(i915) >= 6) {
-		gt->derrmr = intel_uncore_read(uncore, DERRMR);
 		if (GRAPHICS_VER(i915) < 12) {
 			gt->error = intel_uncore_read(uncore, ERROR_GEN6);
 			gt->done_reg = intel_uncore_read(uncore, DONE_REG);
@@ -1705,44 +1821,6 @@ static void gt_record_regs(struct intel_gt_coredump *gt)
 
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
@@ -1854,7 +1932,7 @@ i915_gpu_coredump_alloc(struct drm_i915_private *i915, gfp_t gfp)
 #define DAY_AS_SECONDS(x) (24 * 60 * 60 * (x))
 
 struct intel_gt_coredump *
-intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp)
+intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp, u32 dump_flags)
 {
 	struct intel_gt_coredump *gc;
 
@@ -1865,7 +1943,21 @@ intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp)
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
@@ -1899,7 +1991,7 @@ void i915_vma_capture_finish(struct intel_gt_coredump *gt,
 }
 
 static struct i915_gpu_coredump *
-__i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask)
+__i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 dump_flags)
 {
 	struct drm_i915_private *i915 = gt->i915;
 	struct i915_gpu_coredump *error;
@@ -1913,7 +2005,7 @@ __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask)
 	if (!error)
 		return ERR_PTR(-ENOMEM);
 
-	error->gt = intel_gt_coredump_alloc(gt, ALLOW_FAIL);
+	error->gt = intel_gt_coredump_alloc(gt, ALLOW_FAIL, dump_flags);
 	if (error->gt) {
 		struct i915_vma_compress *compress;
 
@@ -1924,11 +2016,19 @@ __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask)
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
 
@@ -1941,7 +2041,7 @@ __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask)
 }
 
 struct i915_gpu_coredump *
-i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask)
+i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 dump_flags)
 {
 	static DEFINE_MUTEX(capture_mutex);
 	int ret = mutex_lock_interruptible(&capture_mutex);
@@ -1950,7 +2050,7 @@ i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask)
 	if (ret)
 		return ERR_PTR(ret);
 
-	dump = __i915_gpu_coredump(gt, engine_mask);
+	dump = __i915_gpu_coredump(gt, engine_mask, dump_flags);
 	mutex_unlock(&capture_mutex);
 
 	return dump;
@@ -1997,11 +2097,11 @@ void i915_error_state_store(struct i915_gpu_coredump *error)
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
index 903d838e2e63..64b999d8ac27 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -53,6 +53,8 @@ struct i915_request_coredump {
 	struct i915_sched_attr sched_attr;
 };
 
+struct __guc_capture_parsed_output;
+
 struct intel_engine_coredump {
 	const struct intel_engine_cs *engine;
 
@@ -84,6 +86,10 @@ struct intel_engine_coredump {
 	u32 rc_psmi; /* sleep state */
 	struct intel_instdone instdone;
 
+	/* GuC matched capture-lists info */
+	struct intel_guc_state_capture *capture;
+	struct __guc_capture_parsed_output *guc_capture_node;
+
 	struct i915_gem_context_coredump {
 		char comm[TASK_COMM_LEN];
 
@@ -124,7 +130,6 @@ struct intel_gt_coredump {
 	u32 pgtbl_er;
 	u32 ier;
 	u32 gtier[6], ngtier;
-	u32 derrmr;
 	u32 forcewake;
 	u32 error; /* gen6+ */
 	u32 err_int; /* gen7 */
@@ -137,9 +142,12 @@ struct intel_gt_coredump {
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
 
@@ -149,6 +157,7 @@ struct intel_gt_coredump {
 		struct intel_uc_fw guc_fw;
 		struct intel_uc_fw huc_fw;
 		struct i915_vma_coredump *guc_log;
+		bool is_guc_capture;
 	} *uc;
 
 	struct intel_gt_coredump *next;
@@ -221,24 +230,27 @@ static inline u32 i915_reset_engine_count(struct i915_gpu_error *error,
 	return atomic_read(&error->reset_engine_count[engine->uabi_class]);
 }
 
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
@@ -282,7 +294,7 @@ void i915_disable_error_state(struct drm_i915_private *i915, int err);
 #else
 
 static inline void
-i915_capture_error_state(struct intel_gt *gt, intel_engine_mask_t engine_mask)
+i915_capture_error_state(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 dump_flags)
 {
 }
 
@@ -293,13 +305,13 @@ i915_gpu_coredump_alloc(struct drm_i915_private *i915, gfp_t gfp)
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

