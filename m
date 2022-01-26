Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBCF49C7DA
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 11:46:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D196010E882;
	Wed, 26 Jan 2022 10:46:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EABD310E80E
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 10:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643193983; x=1674729983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SP2RD0p9tu7ttQZepBmmfhMhGZ1iqYnLyQPUM4LWg0o=;
 b=goPtHHWPOcqejDbGOdlDRsloIjG8Nj0UvZ9ibPCr9ygz3jR73xSFrggH
 hG+1PwsSiPMSF5hM/bmtUzIOnr8pWEP1/ebGkRTUQGWIqWArNBKzN4HOc
 /c1yjnUJDYnxsQgmghqScPCIHHFa0Kt8VoPdICmQgre4LohtXxjrHveer
 4I08rdz2kCS4FoK61W5ws3Y1EA5FOaKU/9CiIKbHNAK1Zln68wYv9DgFT
 toZUM1UzOAUqnfHV18tVSJYnv0bqdOdBXndpAo7vDf0idrCvQL94ZxHcB
 l4SPTshZz5C5crKdAmSHJGQSDkIGNHTDp63pOFz1TiYYoEXm3HowRpNyS g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="246301888"
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="246301888"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 02:46:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="477445995"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga003.jf.intel.com with ESMTP; 26 Jan 2022 02:46:23 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jan 2022 02:48:22 -0800
Message-Id: <20220126104822.3653079-11-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 10/10] drm/i915/guc: Print the GuC error
 capture output register list.
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

Print the GuC captured error state register list (string names
and values) when gpu_coredump_state printout is invoked via
the i915 debugfs for flushing the gpu error-state that was
captured prior.

Since GuC could have reported multiple engine register dumps
in a single notification event, parse the captured data
(appearing as a stream of structures) to identify each dump as
a different 'engine-capture-group-output'.

Finally, for each 'engine-capture-group-output' that is found,
verify if the engine register dump corresponds to the
engine_coredump content that was previously populated by the
i915_gpu_coredump function. That function would have copied
the context's vma's including the bacth buffer during the
G2H-context-reset notification that occurred earlier. Perform
this verification check by comparing guc_id, lrca and engine-
instance obtained from the 'engine-capture-group-output' vs a
copy of that same info taken during i915_gpu_coredump. If
they match, then print those vma's as well (such as the batch
buffers).

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   4 +-
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 169 ++++++++++++++++++
 .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |   2 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |   1 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |  16 +-
 drivers/gpu/drm/i915/i915_gpu_error.h         |   5 +
 6 files changed, 185 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 4317ae5e525b..47c0c32d9b86 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1628,9 +1628,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 		drm_printf(m, "\tIPEHR: 0x%08x\n", ENGINE_READ(engine, IPEHR));
 	}
 
-	if (intel_engine_uses_guc(engine)) {
-		/* nothing to print yet */
-	} else if (HAS_EXECLISTS(dev_priv)) {
+	if (HAS_EXECLISTS(dev_priv) && !intel_engine_uses_guc(engine)) {
 		struct i915_request * const *port, *rq;
 		const u32 *hws =
 			&engine->status_page.addr[I915_HWS_CSB_BUF0_INDEX];
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 506496058daf..5cb24098747e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -739,6 +739,15 @@ int intel_guc_capture_output_min_size_est(struct intel_guc *guc)
  *                                       intel_engine_coredump struct (if the context and
  *                                       engine of the event notification matches a node
  *                                       in the link list)
+ *
+ * User Sysfs / Debugfs
+ * --------------------
+ *      --> i915_gpu_coredump_copy_to_buffer->
+ *                   L--> err_print_to_sgl --> err_print_gt
+ *                        L--> error_print_guc_captures
+ *                             L--> intel_guc_capture_print_node prints the
+ *                                  register lists values of the attached node
+ *                                  on the error-engine-dump being reported.
  */
 
 static int guc_capture_buf_cnt(struct __guc_capture_bufstate *buf)
@@ -1216,12 +1225,172 @@ static void __guc_capture_store_snapshot_work(struct intel_guc *guc)
 
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
 
+static const char *
+guc_capture_reg_to_str(const struct intel_guc *guc, u32 owner, u32 type,
+		       u32 class, u32 id, u32 offset, u32 *is_ext)
+{
+	struct __guc_mmio_reg_descr_group *reglists = guc->capture.priv->reglists;
+	struct __guc_mmio_reg_descr_group *match;
+	int num_regs, j;
+
+	*is_ext = 0;
+	if (!reglists)
+		return NULL;
+
+	match = guc_capture_get_one_list(reglists, owner, type, id);
+
+	if (match) {
+		for (num_regs = match->num_regs, j = 0; j < num_regs; ++j) {
+			if (offset == match->list[j].reg.reg)
+				return match->list[j].regname;
+		}
+	}
+	if (match->ext) {
+		for (num_regs = match->num_ext, j = 0; j < num_regs; ++j) {
+			if (offset == match->ext[j].reg.reg) {
+				*is_ext = 1;
+				return match->ext[j].regname;
+			}
+		}
+	}
+
+	return NULL;
+}
+
+#ifdef CONFIG_DRM_I915_DEBUG_GUC
+#define guc_capt_err_print(a, b, ...) \
+	do { \
+		drm_warn(a, __VA_ARGS__); \
+		if (b) \
+			i915_error_printf(b, __VA_ARGS__); \
+	} while (0)
+#else
+#define guc_capt_err_print(a, b, ...) \
+	do { \
+		if (b) \
+			i915_error_printf(b, __VA_ARGS__); \
+	} while (0)
+#endif
+
+static struct intel_engine_cs *
+guc_capture_lookup_engine(struct intel_guc *guc, u8 guc_class, u8 instance)
+{
+	struct intel_gt *gt = guc_to_gt(guc);
+	u8 engine_class = guc_class_to_engine_class(guc_class);
+
+	/* Class index is checked in class converter */
+	GEM_BUG_ON(instance > MAX_ENGINE_INSTANCE);
+
+	return gt->engine_class[engine_class][instance];
+}
+
+#define GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng) \
+	do { \
+		PRINT(&(i915)->drm, (ebuf), "    i915-Eng-Name: %s command stream\n", \
+		      (eng)->name); \
+		PRINT(&(i915)->drm, (ebuf), "    i915-Eng-Inst-Class: 0x%02x\n", (eng)->class); \
+		PRINT(&(i915)->drm, (ebuf), "    i915-Eng-Inst-Id: 0x%02x\n", (eng)->instance); \
+		PRINT(&(i915)->drm, (ebuf), "    i915-Eng-LogicalMask: 0x%08x\n", \
+		      (eng)->logical_mask); \
+	} while (0)
+
+#define GCAP_PRINT_GUC_INST_INFO(i915, ebuf, node) \
+	do { \
+		PRINT(&(i915)->drm, (ebuf), "    GuC-Engine-Inst-Id: 0x%08x\n", \
+		      (node)->eng_inst); \
+		PRINT(&(i915)->drm, (ebuf), "    GuC-Context-Id: 0x%08x\n", (node)->guc_id); \
+		PRINT(&(i915)->drm, (ebuf), "    LRCA: 0x%08x\n", (node)->lrca); \
+	} while (0)
+
+#define PRINT guc_capt_err_print
+
 int intel_guc_capture_print_engine_node(struct drm_i915_error_state_buf *ebuf,
 					const struct intel_engine_coredump *ee)
 {
+	struct intel_guc_state_capture *cap;
+	struct intel_guc *guc;
+	struct drm_i915_private *i915;
+	struct __guc_capture_parsed_output *node;
+	struct guc_mmio_reg *regs;
+	const char *grptypestr[GUC_STATE_CAPTURE_GROUP_TYPE_MAX] = {"full-capture",
+								    "partial-capture"};
+	const char *datatypestr[GUC_CAPTURE_LIST_TYPE_MAX] = {"Global", "Engine-Class",
+							      "Engine-Instance"};
+	struct intel_engine_cs *eng;
+	int numregs, i, j;
+	u32 is_ext;
+	const char *str;
+	char noname[16];
+
+	if (!ebuf || !ee)
+		return -EINVAL;
+	cap = ee->capture;
+	if (!cap->priv || !ee->engine)
+		return -ENODEV;
+
+	guc = container_of(cap, struct intel_guc, capture);
+	i915 = (container_of(guc, struct intel_gt, uc.guc))->i915;
+	PRINT(&i915->drm, ebuf, "global --- GuC Error Capture on %s command stream:\n",
+	      ee->engine->name);
+
+	node = ee->guc_capture_node;
+	if (!node) {
+		PRINT(&i915->drm, ebuf, "  No matching ee-node\n");
+		return 0;
+	}
+
+	PRINT(&i915->drm, ebuf, "Coverage:  %s\n", grptypestr[node->is_partial]);
+
+	for (i = GUC_CAPTURE_LIST_TYPE_GLOBAL; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
+		PRINT(&i915->drm, ebuf, "  RegListType: %s\n",
+		      datatypestr[i % GUC_CAPTURE_LIST_TYPE_MAX]);
+		PRINT(&i915->drm, ebuf, "    Owner-Id: %d\n", node->reginfo[i].vfid);
+
+		switch (i) {
+		case GUC_CAPTURE_LIST_TYPE_GLOBAL:
+		default:
+			break;
+		case GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS:
+			PRINT(&i915->drm, ebuf, "    GuC-Eng-Class: %d\n", node->eng_class);
+			PRINT(&i915->drm, ebuf, "    i915-Eng-Class: %d\n",
+			      guc_class_to_engine_class(node->eng_class));
+			break;
+		case GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE:
+			eng = guc_capture_lookup_engine(guc, node->eng_class, node->eng_inst);
+			if (eng)
+				GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng);
+			else
+				PRINT(&i915->drm, ebuf, "    i915-Eng-Lookup Fail!\n");
+			GCAP_PRINT_GUC_INST_INFO(i915, ebuf, node);
+			break;
+		}
+
+		numregs = node->reginfo[i].num;
+		PRINT(&i915->drm, ebuf, "    NumRegs: %d\n", numregs);
+		j = 0;
+		while (numregs--) {
+			regs = node->reginfo[i].regs;
+			str = guc_capture_reg_to_str(guc, GUC_CAPTURE_LIST_INDEX_PF, i,
+						     node->eng_class, 0, regs[j].offset, &is_ext);
+			if (!str) {
+				snprintf(noname, sizeof(noname), "REG-0x%08x", regs[j].offset);
+				PRINT(&i915->drm, ebuf, "      %s", noname);
+			} else {
+				PRINT(&i915->drm, ebuf, "      %s", str);
+			}
+			if (is_ext)
+				PRINT(&i915->drm, ebuf, "[%ld][%ld]",
+				      FIELD_GET(GUC_REGSET_STEERING_GROUP, regs[j].flags),
+				      FIELD_GET(GUC_REGSET_STEERING_INSTANCE, regs[j].flags));
+			PRINT(&i915->drm, ebuf, ":  0x%08x\n", regs[j].value);
+			++j;
+		}
+	}
 	return 0;
 }
 
+#undef PRINT
+
 #endif //CONFIG_DRM_I915_DEBUG_GUC
 
 void intel_guc_capture_free_node(struct intel_engine_coredump *ee)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
index 9a2037638e64..3ed33f14ac7d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
@@ -11,8 +11,8 @@
 struct drm_i915_error_state_buf;
 struct guc_ads;
 struct guc_gt_system_info;
-struct intel_context;
 struct intel_engine_coredump;
+struct intel_context;
 struct intel_gt;
 struct intel_guc;
 
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index d2af0d1f3a3e..35faba20d406 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -295,6 +295,7 @@ static int i915_gpu_info_open(struct inode *inode, struct file *file)
 	gpu = NULL;
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
 		gpu = i915_gpu_coredump(to_gt(i915), ALL_ENGINES, CORE_DUMP_FLAG_NONE);
+
 	if (IS_ERR(gpu))
 		return PTR_ERR(gpu);
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index d8c82589d86e..67d39226155e 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -526,8 +526,8 @@ __find_vma(struct i915_vma_coredump *vma, const char *name)
 	return NULL;
 }
 
-static struct i915_vma_coredump *
-find_batch(const struct intel_engine_coredump *ee)
+struct i915_vma_coredump *
+intel_gpu_error_find_batch(const struct intel_engine_coredump *ee)
 {
 	return __find_vma(ee->vma, "batch");
 }
@@ -555,7 +555,7 @@ static void error_print_engine(struct drm_i915_error_state_buf *m,
 
 	error_print_instdone(m, ee);
 
-	batch = find_batch(ee);
+	batch = intel_gpu_error_find_batch(ee);
 	if (batch) {
 		u64 start = batch->gtt_offset;
 		u64 end = start + batch->gtt_size;
@@ -606,9 +606,9 @@ void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...)
 	va_end(args);
 }
 
-static void print_error_vma(struct drm_i915_error_state_buf *m,
-			    const struct intel_engine_cs *engine,
-			    const struct i915_vma_coredump *vma)
+void intel_gpu_error_print_vma(struct drm_i915_error_state_buf *m,
+			       const struct intel_engine_cs *engine,
+			       const struct i915_vma_coredump *vma)
 {
 	char out[ASCII85_BUFSZ];
 	struct page *page;
@@ -677,7 +677,7 @@ static void err_print_uc(struct drm_i915_error_state_buf *m,
 
 	intel_uc_fw_dump(&error_uc->guc_fw, &p);
 	intel_uc_fw_dump(&error_uc->huc_fw, &p);
-	print_error_vma(m, NULL, error_uc->guc_log);
+	intel_gpu_error_print_vma(m, NULL, error_uc->guc_log);
 }
 
 static void err_free_sgl(struct scatterlist *sgl)
@@ -797,7 +797,7 @@ static void err_print_gt_engines(struct drm_i915_error_state_buf *m,
 		error_print_context(m, "  Active context: ", &ee->context);
 
 		for (vma = ee->vma; vma; vma = vma->next)
-			print_error_vma(m, ee->engine, vma);
+			intel_gpu_error_print_vma(m, ee->engine, vma);
 	}
 
 }
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index d20a1779ea51..5f52dda67ef8 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -227,6 +227,11 @@ struct drm_i915_error_state_buf {
 
 __printf(2, 3)
 void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...);
+void intel_gpu_error_print_vma(struct drm_i915_error_state_buf *m,
+			       const struct intel_engine_cs *engine,
+			       const struct i915_vma_coredump *vma);
+struct i915_vma_coredump *
+intel_gpu_error_find_batch(const struct intel_engine_coredump *ee);
 
 struct i915_gpu_coredump *i915_gpu_coredump(struct intel_gt *gt,
 					    intel_engine_mask_t engine_mask, u32 dump_flags);
-- 
2.25.1

