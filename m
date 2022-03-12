Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9994D6B5A
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Mar 2022 01:11:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CF3610E05B;
	Sat, 12 Mar 2022 00:11:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D37B510E074
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Mar 2022 00:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647043882; x=1678579882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q1AZKlCmqgCWR68N7MU1ovVPX0ocTbgWgeu7yZ5nASc=;
 b=dmGj7WxsmIRo+3HQTHB0r71yj/aw99FFcojqAzxk0Vhm9MAnGOo2vs7C
 2N5oQ1Ce3GtWms0sCoQZeXb075uEr+242UZUjcTOnEM7xdxAHp+OgoWoN
 fdv4a4rwkT0ykKVi3lRJtwr3EriYPOm/NortEZbi4WcoBebnQyEArYNVB
 uADyx1pPtKVDY3kiThVMpuedlVPoT46CxwK+i9mnGrvIfowIJPURWG6as
 9hfNsaNNyl48p63LvuXNqjjMYFyMBeUTtqWhs+f40nYPR+FLjHcXbv1lB
 cdRPsf4Iv4JRg5Np1xSDDJz+8PGGBc9tjc6oay7VlqnBPBvILRWiXgevX A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="316399862"
X-IronPort-AV: E=Sophos;i="5.90,175,1643702400"; d="scan'208";a="316399862"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 16:11:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,175,1643702400"; d="scan'208";a="514681597"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 11 Mar 2022 16:11:21 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 16:13:43 -0800
Message-Id: <20220312001344.1314090-14-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220312001344.1314090-1-alan.previn.teres.alexis@intel.com>
References: <20220312001344.1314090-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 13/13] drm/i915/guc: Print the GuC error
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

NOTE: the output format was verified using the gem_exec_capture
IGT test.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   4 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   3 +
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 161 ++++++++++++++++++
 .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |   2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   6 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |   1 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |  16 +-
 drivers/gpu/drm/i915/i915_gpu_error.h         |   5 +
 8 files changed, 183 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 7447411a5b26..d1b66c90c2cb 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1697,9 +1697,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 		drm_printf(m, "\tIPEHR: 0x%08x\n", ENGINE_READ(engine, IPEHR));
 	}
 
-	if (intel_engine_uses_guc(engine)) {
-		/* nothing to print yet */
-	} else if (HAS_EXECLISTS(dev_priv)) {
+	if (HAS_EXECLISTS(dev_priv) && !intel_engine_uses_guc(engine)) {
 		struct i915_request * const *port, *rq;
 		const u32 *hws =
 			&engine->status_page.addr[I915_HWS_CSB_BUF0_INDEX];
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index f23657190783..98f9ad63a8bb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -436,6 +436,9 @@ int intel_guc_engine_failure_process_msg(struct intel_guc *guc,
 int intel_guc_error_capture_process_msg(struct intel_guc *guc,
 					const u32 *msg, u32 len);
 
+struct intel_engine_cs *
+intel_guc_lookup_engine(struct intel_guc *guc, u8 guc_class, u8 instance);
+
 void intel_guc_find_hung_context(struct intel_engine_cs *engine);
 
 int intel_guc_global_policies_update(struct intel_guc *guc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 9e33f9c9201a..843ce61984ef 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -767,6 +767,21 @@ intel_guc_capture_output_min_size_est(struct intel_guc *guc)
  *                                    intel_engine_coredump struct (if the context and
  *                                    engine of the event notification matches a node
  *                                    in the link list).
+ *
+ * User Sysfs / Debugfs
+ * --------------------
+ *      --> i915_gpu_coredump_copy_to_buffer->
+ *                   L--> err_print_to_sgl --> err_print_gt
+ *                        L--> error_print_guc_captures
+ *                             L--> intel_guc_capture_print_node prints the
+ *                                  register lists values of the attached node
+ *                                  on the error-engine-dump being reported.
+ *                   L--> i915_reset_error_state ... -->__i915_gpu_coredump_free
+ *                        L--> ... cleanup_gt -->
+ *                             L--> intel_guc_capture_free_node returns the
+ *                                  capture-output-node back to the internal
+ *                                  cachelist for reuse.
+ *
  */
 
 static int guc_capture_buf_cnt(struct __guc_capture_bufstate *buf)
@@ -1384,9 +1399,155 @@ static void __guc_capture_process_output(struct intel_guc *guc)
 
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
 
+static const char *
+guc_capture_reg_to_str(const struct intel_guc *guc, u32 owner, u32 type,
+		       u32 class, u32 id, u32 offset, u32 *is_ext)
+{
+	const struct __guc_mmio_reg_descr_group *reglists = guc->capture->reglists;
+	struct __guc_mmio_reg_descr_group *extlists = guc->capture->extlists;
+	const struct __guc_mmio_reg_descr_group *match;
+	struct __guc_mmio_reg_descr_group *matchext;
+	int j;
+
+	*is_ext = 0;
+	if (!reglists)
+		return NULL;
+
+	match = guc_capture_get_one_list(reglists, owner, type, id);
+	if (!match)
+		return NULL;
+
+	for (j = 0; j < match->num_regs; ++j) {
+		if (offset == match->list[j].reg.reg)
+			return match->list[j].regname;
+	}
+	if (extlists) {
+		matchext = guc_capture_get_one_ext_list(extlists, owner, type, id);
+		if (!matchext)
+			return NULL;
+		for (j = 0; j < matchext->num_regs; ++j) {
+			if (offset == matchext->extlist[j].reg.reg) {
+				*is_ext = 1;
+				return matchext->extlist[j].regname;
+			}
+		}
+	}
+
+	return NULL;
+}
+
+#ifdef CONFIG_DRM_I915_DEBUG_GUC
+#define __out(a, ...) \
+	do { \
+		drm_warn((&(a)->drm), __VA_ARGS__); \
+		i915_error_printf((a), __VA_ARGS__); \
+	} while (0)
+#else
+#define __out(a, ...) \
+	i915_error_printf(a, __VA_ARGS__)
+#endif
+
+#define GCAP_PRINT_INTEL_ENG_INFO(ebuf, eng) \
+	do { \
+		__out(ebuf, "    i915-Eng-Name: %s command stream\n", \
+		      (eng)->name); \
+		__out(ebuf, "    i915-Eng-Inst-Class: 0x%02x\n", (eng)->class); \
+		__out(ebuf, "    i915-Eng-Inst-Id: 0x%02x\n", (eng)->instance); \
+		__out(ebuf, "    i915-Eng-LogicalMask: 0x%08x\n", \
+		      (eng)->logical_mask); \
+	} while (0)
+
+#define GCAP_PRINT_GUC_INST_INFO(ebuf, node) \
+	do { \
+		__out(ebuf, "    GuC-Engine-Inst-Id: 0x%08x\n", \
+		      (node)->eng_inst); \
+		__out(ebuf, "    GuC-Context-Id: 0x%08x\n", (node)->guc_id); \
+		__out(ebuf, "    LRCA: 0x%08x\n", (node)->lrca); \
+	} while (0)
+
 int intel_guc_capture_print_engine_node(struct drm_i915_error_state_buf *ebuf,
 					const struct intel_engine_coredump *ee)
 {
+	const char *grptype[GUC_STATE_CAPTURE_GROUP_TYPE_MAX] = {
+		"full-capture",
+		"partial-capture"
+	};
+	const char *datatype[GUC_CAPTURE_LIST_TYPE_MAX] = {
+		"Global",
+		"Engine-Class",
+		"Engine-Instance"
+	};
+	struct intel_guc_state_capture *cap;
+	struct __guc_capture_parsed_output *node;
+	struct intel_engine_cs *eng;
+	struct guc_mmio_reg *regs;
+	struct intel_guc *guc;
+	const char *str;
+	int numregs, i, j;
+	u32 is_ext;
+
+	if (!ebuf || !ee)
+		return -EINVAL;
+	cap = ee->capture;
+	if (!cap || !ee->engine)
+		return -ENODEV;
+
+	guc = &ee->engine->gt->uc.guc;
+
+	__out(ebuf, "global --- GuC Error Capture on %s command stream:\n",
+	      ee->engine->name);
+
+	node = ee->guc_capture_node;
+	if (!node) {
+		__out(ebuf, "  No matching ee-node\n");
+		return 0;
+	}
+
+	__out(ebuf, "Coverage:  %s\n", grptype[node->is_partial]);
+
+	for (i = GUC_CAPTURE_LIST_TYPE_GLOBAL; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
+		__out(ebuf, "  RegListType: %s\n",
+		      datatype[i % GUC_CAPTURE_LIST_TYPE_MAX]);
+		__out(ebuf, "    Owner-Id: %d\n", node->reginfo[i].vfid);
+
+		switch (i) {
+		case GUC_CAPTURE_LIST_TYPE_GLOBAL:
+		default:
+			break;
+		case GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS:
+			__out(ebuf, "    GuC-Eng-Class: %d\n", node->eng_class);
+			__out(ebuf, "    i915-Eng-Class: %d\n",
+			      guc_class_to_engine_class(node->eng_class));
+			break;
+		case GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE:
+			eng = intel_guc_lookup_engine(guc, node->eng_class, node->eng_inst);
+			if (eng)
+				GCAP_PRINT_INTEL_ENG_INFO(ebuf, eng);
+			else
+				__out(ebuf, "    i915-Eng-Lookup Fail!\n");
+			GCAP_PRINT_GUC_INST_INFO(ebuf, node);
+			break;
+		}
+
+		numregs = node->reginfo[i].num_regs;
+		__out(ebuf, "    NumRegs: %d\n", numregs);
+		j = 0;
+		while (numregs--) {
+			regs = node->reginfo[i].regs;
+			str = guc_capture_reg_to_str(guc, GUC_CAPTURE_LIST_INDEX_PF, i,
+						     node->eng_class, 0, regs[j].offset, &is_ext);
+			if (!str)
+				__out(ebuf, "      REG-0x%08x", regs[j].offset);
+			else
+				__out(ebuf, "      %s", str);
+			if (is_ext)
+				__out(ebuf, "[%ld][%ld]",
+				      FIELD_GET(GUC_REGSET_STEERING_GROUP, regs[j].flags),
+				      FIELD_GET(GUC_REGSET_STEERING_INSTANCE, regs[j].flags));
+			__out(ebuf, ":  0x%08x\n", regs[j].value);
+			++j;
+		}
+	}
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
index a8688928f88e..d3d7bd0b6db6 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
@@ -10,8 +10,8 @@
 
 struct drm_i915_error_state_buf;
 struct guc_gt_system_info;
-struct intel_context;
 struct intel_engine_coredump;
+struct intel_context;
 struct intel_gt;
 struct intel_guc;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 27c52aa5f132..439af5248be5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -4087,8 +4087,8 @@ int intel_guc_error_capture_process_msg(struct intel_guc *guc,
 	return 0;
 }
 
-static struct intel_engine_cs *
-guc_lookup_engine(struct intel_guc *guc, u8 guc_class, u8 instance)
+struct intel_engine_cs *
+intel_guc_lookup_engine(struct intel_guc *guc, u8 guc_class, u8 instance)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
 	u8 engine_class = guc_class_to_engine_class(guc_class);
@@ -4137,7 +4137,7 @@ int intel_guc_engine_failure_process_msg(struct intel_guc *guc,
 	instance = msg[1];
 	reason = msg[2];
 
-	engine = guc_lookup_engine(guc, guc_class, instance);
+	engine = intel_guc_lookup_engine(guc, guc_class, instance);
 	if (unlikely(!engine)) {
 		drm_err(&gt->i915->drm,
 			"Invalid engine %d:%d", guc_class, instance);
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 8d4b8d590985..4d12702bd9c2 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -309,6 +309,7 @@ static int i915_gpu_info_open(struct inode *inode, struct file *file)
 	gpu = NULL;
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
 		gpu = i915_gpu_coredump(to_gt(i915), ALL_ENGINES, CORE_DUMP_FLAG_NONE);
+
 	if (IS_ERR(gpu))
 		return PTR_ERR(gpu);
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index ffd268ad153a..77e5ec54863a 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -532,8 +532,8 @@ __find_vma(struct i915_vma_coredump *vma, const char *name)
 	return NULL;
 }
 
-static struct i915_vma_coredump *
-find_batch(const struct intel_engine_coredump *ee)
+struct i915_vma_coredump *
+intel_gpu_error_find_batch(const struct intel_engine_coredump *ee)
 {
 	return __find_vma(ee->vma, "batch");
 }
@@ -561,7 +561,7 @@ static void error_print_engine(struct drm_i915_error_state_buf *m,
 
 	error_print_instdone(m, ee);
 
-	batch = find_batch(ee);
+	batch = intel_gpu_error_find_batch(ee);
 	if (batch) {
 		u64 start = batch->gtt_offset;
 		u64 end = start + batch->gtt_size;
@@ -612,9 +612,9 @@ void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...)
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
@@ -683,7 +683,7 @@ static void err_print_uc(struct drm_i915_error_state_buf *m,
 
 	intel_uc_fw_dump(&error_uc->guc_fw, &p);
 	intel_uc_fw_dump(&error_uc->huc_fw, &p);
-	print_error_vma(m, NULL, error_uc->guc_log);
+	intel_gpu_error_print_vma(m, NULL, error_uc->guc_log);
 }
 
 static void err_free_sgl(struct scatterlist *sgl)
@@ -803,7 +803,7 @@ static void err_print_gt_engines(struct drm_i915_error_state_buf *m,
 		error_print_context(m, "  Active context: ", &ee->context);
 
 		for (vma = ee->vma; vma; vma = vma->next)
-			print_error_vma(m, ee->engine, vma);
+			intel_gpu_error_print_vma(m, ee->engine, vma);
 	}
 
 }
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 64b999d8ac27..9554ce7a71ef 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -237,6 +237,11 @@ static inline u32 i915_reset_engine_count(struct i915_gpu_error *error,
 
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

