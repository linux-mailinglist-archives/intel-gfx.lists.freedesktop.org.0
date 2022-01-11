Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BBB48AA84
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 10:28:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6262014A23D;
	Tue, 11 Jan 2022 09:28:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32CE214A244
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 09:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641893314; x=1673429314;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VlmhESCacSQekUCIb3N15Vn1ExKSXMirAIfRWn4jQVQ=;
 b=JmgjVkqBQW0g/rzmgaae2jmow0Q1DD7qc9x5d+czWeo7GQ2OZq7uXiIG
 6zgNALX22WumhkXFKcjFn4EUpR1oQnyvkfQNzv/z/Ti/QQxI0YvU7UmjN
 /1rwS6xJwdtJ5QLVxADyFs7cnYiCALWTP/3WLOrPBkEuRd0sa7a+ZEe3D
 qqJdlqmpSby3b3E0l/3Kk/bUbO/K87e56jPJvizzMxxNhQU/CZgfQgFpQ
 Dw1SO3cfOc+dwtAIt03VIYiCT0DpBDIZW8V4MIWEJDf7MiNtSd1MkMTG6
 Puj0iTEsTdIvjblqtHuD0oBe3tuLmN/K2+VS4OdDfXf3eJ43ItO3J+apE A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="240996996"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="240996996"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 01:28:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="558305539"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga001.jf.intel.com with ESMTP; 11 Jan 2022 01:28:32 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jan 2022 01:30:17 -0800
Message-Id: <20220111093018.610582-8-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220111093018.610582-1-alan.previn.teres.alexis@intel.com>
References: <20220111093018.610582-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC v3 7/7] drm/i915/guc: Print the GuC error capture
 output register list.
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
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 437 ++++++++++++++++++
 .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |  10 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  65 ++-
 drivers/gpu/drm/i915/i915_gpu_error.h         |  14 +
 5 files changed, 507 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 548d599c09dc..2b8a693ed2d8 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1627,9 +1627,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
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
index 048b1b7b9259..04b6d25abd47 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -660,8 +660,420 @@ int intel_guc_capture_output_min_size_est(struct intel_guc *guc)
  *     --> G2H STATE_CAPTURE_NOTIFICATION
  *                   L--> intel_guc_capture_store_snapshot
  *                           L--> Copies from B (head->tail) into C
+ *
+ * GUC --> notify context reset:
+ * -----------------------------
+ *     --> G2H CONTEXT RESET
+ *                   L--> guc_handle_context_reset --> i915_capture_error_state
+ *                    --> i915_gpu_coredump --> intel_guc_capture_store_ptr
+ *                        L--> keep a ptr to capture_store in
+ *                             i915_gpu_coredump struct.
+ *
+ * User Sysfs / Debugfs
+ * --------------------
+ *      --> i915_gpu_coredump_copy_to_buffer->
+ *                   L--> err_print_to_sgl --> err_print_gt
+ *                        L--> error_print_guc_captures
+ *                             L--> loop: intel_guc_capture_out_print_next_group
+ *
  */
 
+#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
+
+static const char *
+guc_capture_register_to_string(const struct intel_guc *guc, u32 owner, u32 type,
+			       u32 class, u32 id, u32 offset, u32 *is_ext)
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
+static int
+guc_capture_store_remove_dw(struct guc_capture_out_store *store, u32 *bytesleft,
+			    u32 *dw)
+{
+	int tries = 2;
+	int avail = 0;
+	u32 *src_data;
+
+	if (!*bytesleft)
+		return 0;
+
+	while (tries--) {
+		avail = CIRC_CNT_TO_END(store->head, store->tail, store->size);
+		if (avail >= sizeof(u32)) {
+			src_data = (u32 *)(store->addr + store->tail);
+			*dw = *src_data;
+			store->tail = (store->tail + 4) & (store->size - 1);
+			*bytesleft -= 4;
+			return 4;
+		}
+		if (store->tail == (store->size - 1) && store->head > 0)
+			store->tail = 0;
+	}
+
+	return 0;
+}
+
+static int
+guc_capture_store_get_group_hdr(const struct intel_guc *guc,
+				struct guc_capture_out_store *store, u32 *bytesleft,
+				struct guc_state_capture_group_header_t *ghdr)
+{
+	int read = 0;
+	int fullsize = sizeof(struct guc_state_capture_group_header_t);
+
+	if (fullsize > *bytesleft)
+		return -1;
+
+	if (CIRC_CNT_TO_END(store->head, store->tail, store->size) >= fullsize) {
+		memcpy(ghdr, (store->addr + store->tail), fullsize);
+		store->tail = (store->tail + fullsize) & (store->size - 1);
+		*bytesleft -= fullsize;
+		return 0;
+	}
+
+	read += guc_capture_store_remove_dw(store, bytesleft, &ghdr->reserved1);
+	read += guc_capture_store_remove_dw(store, bytesleft, &ghdr->info);
+	if (read != sizeof(*ghdr))
+		return -1;
+
+	return 0;
+}
+
+static int
+guc_capture_store_get_data_hdr(const struct intel_guc *guc,
+			       struct guc_capture_out_store *store, u32 *bytesleft,
+			       struct guc_state_capture_header_t *hdr)
+{
+	int read = 0;
+	int fullsize = sizeof(struct guc_state_capture_header_t);
+
+	if (fullsize > *bytesleft)
+		return -1;
+
+	if (CIRC_CNT_TO_END(store->head, store->tail, store->size) >= fullsize) {
+		memcpy(hdr, (store->addr + store->tail), fullsize);
+		store->tail = (store->tail + fullsize) & (store->size - 1);
+		*bytesleft -= fullsize;
+		return 0;
+	}
+
+	read += guc_capture_store_remove_dw(store, bytesleft, &hdr->reserved1);
+	read += guc_capture_store_remove_dw(store, bytesleft, &hdr->info);
+	read += guc_capture_store_remove_dw(store, bytesleft, &hdr->lrca);
+	read += guc_capture_store_remove_dw(store, bytesleft, &hdr->guc_id);
+	read += guc_capture_store_remove_dw(store, bytesleft, &hdr->num_mmios);
+	if (read != sizeof(*hdr))
+		return -1;
+
+	return 0;
+}
+
+static int
+guc_capture_store_get_register(const struct intel_guc *guc,
+			       struct guc_capture_out_store *store, u32 *bytesleft,
+			       struct guc_mmio_reg *reg)
+{
+	int read = 0;
+	int fullsize = sizeof(struct guc_mmio_reg);
+
+	if (fullsize > *bytesleft)
+		return -1;
+
+	if (CIRC_CNT_TO_END(store->head, store->tail, store->size) >= fullsize) {
+		memcpy(reg, (store->addr + store->tail), fullsize);
+		store->tail = (store->tail + fullsize) & (store->size - 1);
+		*bytesleft -= fullsize;
+		return 0;
+	}
+
+	read += guc_capture_store_remove_dw(store, bytesleft, &reg->offset);
+	read += guc_capture_store_remove_dw(store, bytesleft, &reg->value);
+	read += guc_capture_store_remove_dw(store, bytesleft, &reg->flags);
+	read += guc_capture_store_remove_dw(store, bytesleft, &reg->mask);
+	if (read != sizeof(*reg))
+		return -1;
+
+	return 0;
+}
+
+static void guc_capture_store_drop_data(struct guc_capture_out_store *store,
+					unsigned long sampled_head)
+{
+	if (sampled_head == 0)
+		store->tail = store->size - 1;
+	else
+		store->tail = sampled_head - 1;
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
+#define PRINT guc_capt_err_print
+#define REGSTR guc_capture_register_to_string
+
+#define GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng) \
+	do { \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-Name: %s command stream\n", (eng)->name); \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-Inst-Class: 0x%02x\n", (eng)->class); \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-Inst-Id: 0x%02x\n", (eng)->instance); \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-LogicalMask: 0x%08x\n", \
+		      (eng)->logical_mask); \
+	} while (0)
+
+#define GCAP_PRINT_GUC_INST_INFO(i915, ebuf, hdr) \
+	do { \
+		PRINT(&i915->drm, (ebuf), "    GuC-Engine-Inst-Id: 0x%08x\n", \
+		      (uint32_t)FIELD_GET(CAP_HDR_ENGINE_INSTANCE, (hdr).info)); \
+		PRINT(&i915->drm, (ebuf), "    GuC-Context-Id: 0x%08x\n", (hdr).guc_id); \
+		PRINT(&i915->drm, (ebuf), "    LRCA: 0x%08x\n", (hdr).lrca); \
+	} while (0)
+
+#define GCAP_PRINT_INTEL_CTX_INFO(i915, ebuf, ce) \
+	do { \
+		PRINT(&i915->drm, (ebuf), "    i915-Ctx-Flags: 0x%016lx\n", (ce)->flags); \
+		PRINT(&i915->drm, (ebuf), "    i915-Ctx-GuC-Id: 0x%016x\n", (ce)->guc_id.id); \
+	} while (0)
+
+#define GCAP_PRINT_BATCH(i915, ebuf, ee, batch) \
+	do { \
+		batch = intel_gpu_error_find_batch(ee); \
+		if (batch) { \
+			u64 start = batch->gtt_offset; \
+			u64 end = start + batch->gtt_size; \
+			PRINT(&i915->drm, (ebuf), "  batch: [0x%08x_%08x, 0x%08x_%08x]\n", \
+			   upper_32_bits(start), lower_32_bits(start), \
+			   upper_32_bits(end), lower_32_bits(end)); \
+		} \
+	} while (0)
+
+#define GCAP_PRINT_CONTEXT(i915, ebuf, ctx) \
+	do { \
+		const u32 period = to_gt(ebuf->i915)->clock_period_ns; \
+		PRINT(&i915->drm, (ebuf), "  Active context: %s[%d] prio %d, guilty %d " \
+		      "active %d, runtime total %lluns, avg %lluns\n", \
+		      ctx->comm, ctx->pid, ctx->sched_attr.priority, \
+		      ctx->guilty, ctx->active, \
+		      ctx->total_runtime * period, \
+		      mul_u32_u32(ctx->avg_runtime, period)); \
+	} while (0)
+
+int intel_guc_capture_out_print_next_group(struct drm_i915_error_state_buf *ebuf,
+					   struct intel_gt_coredump *gt)
+{
+	/* constant qualifier for data-pointers we shouldn't change mid of error dump printing */
+	struct intel_guc_state_capture *cap = gt->uc->capture;
+	struct intel_guc *guc = container_of(cap, struct intel_guc, capture);
+	struct drm_i915_private *i915 = (container_of(guc, struct intel_gt,
+						   uc.guc))->i915;
+	struct guc_capture_out_store *store;
+	struct guc_capture_out_store tmpstore;
+	struct guc_state_capture_group_header_t ghdr;
+	struct guc_state_capture_header_t hdr;
+	struct guc_mmio_reg reg;
+	const char *grptypestr[GUC_STATE_CAPTURE_GROUP_TYPE_MAX] = {"full-capture",
+								    "partial-capture"};
+	const char *datatypestr[GUC_CAPTURE_LIST_TYPE_MAX] = {"Global", "Engine-Class",
+							      "Engine-Instance"};
+	enum guc_capture_group_types grptype;
+	enum guc_capture_type datatype;
+	int numgrps, numregs, ret = 0;
+	const char *str;
+	char noname[16];
+	u32 numbytes, engineclass, guc_enginst, guc_lrca, guc_gucid, is_ext;
+	struct intel_engine_cs *eng;
+	const struct intel_engine_coredump *ee;
+	const struct i915_gem_context_coredump *ctx;
+	struct i915_vma_coredump *batch;
+
+	if (!cap->priv)
+		return -ENODEV;
+
+	store = &cap->priv->out_store;
+
+	mutex_lock(&store->lock);
+	smp_mb(); /* sync to get the latest head for the moment */
+	/* NOTE1: make a copy of store so we dont have to deal with a changing lower bound of
+	 *        occupied-space in this circular buffer.
+	 * NOTE2: Higher up the stack from here, we keep calling this function in a loop to
+	 *        reading more capture groups as they appear (as the lower bound of occupied-space
+	 *        changes) until this circ-buf is empty.
+	 */
+	memcpy(&tmpstore, store, sizeof(tmpstore));
+
+	PRINT(&i915->drm, ebuf, "global --- GuC Error Capture\n");
+
+	numbytes = CIRC_CNT(tmpstore.head, tmpstore.tail, tmpstore.size);
+	if (!numbytes) {
+		PRINT(&i915->drm, ebuf, "GuC capture stream empty!\n");
+		ret = -ENODATA;
+		goto unlock;
+	}
+	/* everything in GuC output structures are dword aligned */
+	if (numbytes & 0x3) {
+		PRINT(&i915->drm, ebuf, "GuC capture stream unaligned!\n");
+		ret = -EIO;
+		goto unlock;
+	}
+
+	if (guc_capture_store_get_group_hdr(guc, &tmpstore, &numbytes, &ghdr)) {
+		PRINT(&i915->drm, ebuf, "GuC capture error getting next group-header!\n");
+		ret = -EIO;
+		goto unlock;
+	}
+
+	PRINT(&i915->drm, ebuf, "NumCaptures:  0x%08x\n", (uint32_t)
+	      FIELD_GET(CAP_GRP_HDR_NUM_CAPTURES, ghdr.info));
+	grptype = FIELD_GET(CAP_GRP_HDR_CAPTURE_TYPE, ghdr.info);
+	PRINT(&i915->drm, ebuf, "Coverage:  0x%08x = %s\n", grptype,
+	      grptypestr[grptype % GUC_STATE_CAPTURE_GROUP_TYPE_MAX]);
+
+	numgrps = FIELD_GET(CAP_GRP_HDR_NUM_CAPTURES, ghdr.info);
+	while (numgrps--) {
+		if (guc_capture_store_get_data_hdr(guc, &tmpstore, &numbytes, &hdr)) {
+			PRINT(&i915->drm, ebuf, "GuC capture error on next capture-header!\n");
+			ret = -EIO;
+			goto unlock;
+		}
+		datatype = FIELD_GET(CAP_HDR_CAPTURE_TYPE, hdr.info);
+		PRINT(&i915->drm, ebuf, "  RegListType: %s\n",
+		      datatypestr[datatype % GUC_CAPTURE_LIST_TYPE_MAX]);
+
+		eng = NULL;
+		guc_enginst = MAX_ENGINE_INSTANCE + 1;
+		guc_gucid = guc_lrca = 0;
+		engineclass = FIELD_GET(CAP_HDR_ENGINE_CLASS, hdr.info);
+		if (datatype != GUC_CAPTURE_LIST_TYPE_GLOBAL) {
+			PRINT(&i915->drm, ebuf, "    GuC-Engine-Class: %d\n",
+			      engineclass);
+			if (datatype == GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS &&
+			    engineclass <= GUC_LAST_ENGINE_CLASS)
+				PRINT(&i915->drm, ebuf, "    i915-Eng-Class: %d\n",
+				      guc_class_to_engine_class(engineclass));
+
+			if (datatype == GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE) {
+				guc_enginst = FIELD_GET(CAP_HDR_ENGINE_INSTANCE, hdr.info);
+				eng = guc_capture_lookup_engine(guc, engineclass, guc_enginst);
+				if (eng)
+					GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng);
+				else
+					PRINT(&i915->drm, ebuf,
+					      "    i915-Eng-Lookup Fail!\n");
+				guc_lrca = hdr.lrca;
+				guc_gucid = hdr.guc_id;
+				GCAP_PRINT_GUC_INST_INFO(i915, ebuf, hdr);
+			}
+		}
+		numregs = FIELD_GET(CAP_HDR_NUM_MMIOS, hdr.num_mmios);
+		PRINT(&i915->drm, ebuf, "    NumRegs: %d\n", numregs);
+
+		while (numregs--) {
+			if (guc_capture_store_get_register(guc, &tmpstore, &numbytes, &reg)) {
+				PRINT(&i915->drm, ebuf, "Error getting next register!\n");
+				ret = -EIO;
+				goto unlock;
+			}
+			str = REGSTR(guc, GUC_CAPTURE_LIST_INDEX_PF, datatype,
+				     engineclass, 0, reg.offset, &is_ext);
+			if (!str) {
+				snprintf(noname, sizeof(noname), "REG-0x%08x", reg.offset);
+				PRINT(&i915->drm, ebuf, "      %s", noname);
+			} else {
+				PRINT(&i915->drm, ebuf, "      %s", str);
+			}
+			if (is_ext)
+				PRINT(&i915->drm, ebuf, "[%ld][%ld]",
+				      FIELD_GET(GUC_REGSET_STEERING_GROUP, reg.flags),
+				      FIELD_GET(GUC_REGSET_STEERING_INSTANCE, reg.flags));
+			PRINT(&i915->drm, ebuf, ":  0x%08x\n", reg.value);
+		}
+		for (ee = gt->engine; ee; ee = ee->next) {
+			const struct i915_vma_coredump *vma;
+
+			if (ee->engine == eng && ee->gucinfo.eng_id == guc_enginst &&
+			    ee->gucinfo.guc_id == guc_gucid &&
+			    (ee->gucinfo.lrca & CTX_GTT_ADDRESS_MASK) ==
+			    (guc_lrca & CTX_GTT_ADDRESS_MASK)) {
+				PRINT(&i915->drm, ebuf, "i915-Ctx-VMA-Matched:\n");
+				GCAP_PRINT_BATCH(i915, ebuf, ee, batch);
+				PRINT(&i915->drm, ebuf, "  engine reset count: %u\n",
+				      ee->reset_count);
+				ctx = &ee->context;
+				GCAP_PRINT_CONTEXT(i915, ebuf, ctx);
+
+				for (vma = ee->vma; vma; vma = vma->next)
+					intel_gpu_error_print_vma(ebuf, ee->engine, vma);
+			}
+		}
+	}
+
+	store->tail = tmpstore.tail;
+unlock:
+	/* if we have a stream error, just drop everything */
+	if (ret == -EIO) {
+		drm_warn(&i915->drm, "Skip GuC capture header print due to stream error\n");
+		guc_capture_store_drop_data(store, tmpstore.head);
+	}
+
+	mutex_unlock(&store->lock);
+
+	return ret;
+}
+
+#undef REGSTR
+#undef PRINT
+
+#endif //CONFIG_DRM_I915_DEBUG_GUC
+
 static void guc_capture_store_insert(struct intel_guc *guc, struct guc_capture_out_store *store,
 				     unsigned char *new_data, size_t bytes)
 {
@@ -812,6 +1224,31 @@ void intel_guc_capture_destroy(struct intel_guc *guc)
 	guc->capture.priv = NULL;
 }
 
+void intel_guc_capture_copy_info(struct intel_engine_coredump *ee, struct intel_context *ce)
+{
+	if (!ee || !ce)
+		return;
+
+	/*
+	 * Store GuC relatable information pertaining to the faulting
+	 * context into the intel_engine_coredump structure that we can
+	 * reference later during the debugfs triggered printout function
+	 * to ensure we print the vma dumps matching that match
+	 * the GuC register dumps
+	 */
+	ee->gucinfo.lrca = ce->lrc.lrca;
+	ee->gucinfo.guc_id = ce->guc_id.id;
+	ee->gucinfo.eng_id = ee->engine->guc_id;
+}
+
+struct intel_guc_state_capture *
+intel_guc_capture_store_ptr(struct intel_guc *guc)
+{
+	if (!guc->capture.priv)
+		return NULL;
+	return &guc->capture;
+}
+
 int intel_guc_capture_init(struct intel_guc *guc)
 {
 	int ret;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
index c240a4cc046b..37e29f76cda8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
@@ -8,15 +8,23 @@
 
 #include <linux/types.h>
 
-struct intel_guc;
+struct drm_i915_error_state_buf;
 struct guc_ads;
 struct guc_gt_system_info;
+struct intel_gt_coredump;
+struct intel_guc;
+struct intel_engine_coredump;
+struct intel_context;
 
 int intel_guc_capture_prep_lists(struct intel_guc *guc, struct guc_ads *blob, u32 blob_ggtt,
 				 u32 capture_offset, struct guc_gt_system_info *sysinfo);
+int intel_guc_capture_out_print_next_group(struct drm_i915_error_state_buf *m,
+					   struct intel_gt_coredump *gt);
+void intel_guc_capture_copy_info(struct intel_engine_coredump *ee, struct intel_context *ce);
 void intel_guc_capture_store_snapshot(struct intel_guc *guc);
 int intel_guc_capture_output_min_size_est(struct intel_guc *guc);
 void intel_guc_capture_destroy(struct intel_guc *guc);
+struct intel_guc_state_capture *intel_guc_capture_store_ptr(struct intel_guc *guc);
 int intel_guc_capture_init(struct intel_guc *guc);
 
 #endif /* _INTEL_GUC_CAPTURE_H */
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 5ae812d60abe..84c47f87eb0d 100644
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
@@ -601,6 +601,16 @@ static void error_print_engine(struct drm_i915_error_state_buf *m,
 	error_print_context(m, "  Active context: ", &ee->context);
 }
 
+static void error_print_guc_captures(struct drm_i915_error_state_buf *m,
+				     struct intel_gt_coredump *gt)
+{
+	int ret;
+
+	do {
+		ret = intel_guc_capture_out_print_next_group(m, gt);
+	} while (!ret);
+}
+
 void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...)
 {
 	va_list args;
@@ -610,9 +620,9 @@ void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...)
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
@@ -681,7 +691,7 @@ static void err_print_uc(struct drm_i915_error_state_buf *m,
 
 	intel_uc_fw_dump(&error_uc->guc_fw, &p);
 	intel_uc_fw_dump(&error_uc->huc_fw, &p);
-	print_error_vma(m, NULL, error_uc->guc_log);
+	intel_gpu_error_print_vma(m, NULL, error_uc->guc_log);
 }
 
 static void err_free_sgl(struct scatterlist *sgl)
@@ -766,12 +776,17 @@ static void err_print_gt(struct drm_i915_error_state_buf *m,
 		err_printf(m, "  GAM_DONE: 0x%08x\n", gt->gam_done);
 	}
 
-	for (ee = gt->engine; ee; ee = ee->next) {
-		const struct i915_vma_coredump *vma;
+	if (gt->uc && gt->uc->capture) {
+		/* error capture was via GuC */
+		error_print_guc_captures(m, gt);
+	} else {
+		for (ee = gt->engine; ee; ee = ee->next) {
+			const struct i915_vma_coredump *vma;
 
-		error_print_engine(m, ee);
-		for (vma = ee->vma; vma; vma = vma->next)
-			print_error_vma(m, ee->engine, vma);
+			error_print_engine(m, ee);
+			for (vma = ee->vma; vma; vma = vma->next)
+				intel_gpu_error_print_vma(m, ee->engine, vma);
+		}
 	}
 
 	if (gt->uc)
@@ -1144,7 +1159,7 @@ static void gt_record_fences(struct intel_gt_coredump *gt)
 	gt->nfence = i;
 }
 
-static void engine_record_registers(struct intel_engine_coredump *ee)
+static void engine_record_registers_execlist(struct intel_engine_coredump *ee)
 {
 	const struct intel_engine_cs *engine = ee->engine;
 	struct drm_i915_private *i915 = engine->i915;
@@ -1449,8 +1464,10 @@ intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp)
 
 	ee->engine = engine;
 
-	engine_record_registers(ee);
-	engine_record_execlists(ee);
+	if (!intel_uc_uses_guc_submission(&engine->gt->uc)) {
+		engine_record_registers_execlist(ee);
+		engine_record_execlists(ee);
+	}
 
 	return ee;
 }
@@ -1521,11 +1538,14 @@ capture_engine(struct intel_engine_cs *engine,
 	struct intel_context *ce;
 	struct i915_request *rq = NULL;
 	unsigned long flags;
+	bool guc_submission = false;
 
 	ee = intel_engine_coredump_alloc(engine, GFP_KERNEL);
 	if (!ee)
 		return NULL;
 
+	guc_submission = intel_uc_uses_guc_submission(&engine->gt->uc);
+
 	ce = intel_engine_get_hung_context(engine);
 	if (ce) {
 		intel_engine_clear_hung_context(engine);
@@ -1537,7 +1557,7 @@ capture_engine(struct intel_engine_cs *engine,
 		 * Getting here with GuC enabled means it is a forced error capture
 		 * with no actual hang. So, no need to attempt the execlist search.
 		 */
-		if (!intel_uc_uses_guc_submission(&engine->gt->uc)) {
+		if (!guc_submission) {
 			spin_lock_irqsave(&engine->sched_engine->lock, flags);
 			rq = intel_engine_execlist_find_hung_request(engine);
 			spin_unlock_irqrestore(&engine->sched_engine->lock,
@@ -1555,6 +1575,8 @@ capture_engine(struct intel_engine_cs *engine,
 		i915_request_put(rq);
 		goto no_request_capture;
 	}
+	if (guc_submission)
+		intel_guc_capture_copy_info(ee, ce);
 
 	intel_engine_coredump_add_vma(ee, capture, compress);
 	i915_request_put(rq);
@@ -1623,8 +1645,8 @@ gt_record_uc(struct intel_gt_coredump *gt,
 	return error_uc;
 }
 
-/* Capture all registers which don't fit into another category. */
-static void gt_record_regs(struct intel_gt_coredump *gt)
+/* Capture all global registers which don't fit into another category. */
+static void gt_record_registers_execlist(struct intel_gt_coredump *gt)
 {
 	struct intel_uncore *uncore = gt->_gt->uncore;
 	struct drm_i915_private *i915 = uncore->i915;
@@ -1868,7 +1890,9 @@ intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp)
 	gc->_gt = gt;
 	gc->awake = intel_gt_pm_is_awake(gt);
 
-	gt_record_regs(gc);
+	if (!intel_uc_uses_guc_submission(&gt->uc))
+		gt_record_registers_execlist(gc);
+
 	gt_record_fences(gc);
 
 	return gc;
@@ -1933,6 +1957,9 @@ __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask)
 		if (INTEL_INFO(i915)->has_gt_uc)
 			error->gt->uc = gt_record_uc(error->gt, compress);
 
+		if (intel_uc_uses_guc_submission(&gt->uc))
+			error->gt->uc->capture = intel_guc_capture_store_ptr(&gt->uc.guc);
+
 		i915_vma_capture_finish(error->gt, compress);
 
 		error->simulated |= error->gt->simulated;
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 5aedf5129814..576677c2888e 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -17,6 +17,7 @@
 #include "gt/intel_engine.h"
 #include "gt/intel_gt_types.h"
 #include "gt/uc/intel_uc_fw.h"
+#include "gt/uc/intel_guc_capture.h"
 
 #include "intel_device_info.h"
 
@@ -84,6 +85,13 @@ struct intel_engine_coredump {
 	u32 rc_psmi; /* sleep state */
 	struct intel_instdone instdone;
 
+	/* GuC correlated info */
+	struct {
+		u32 lrca;
+		u16 guc_id;
+		u32 eng_id;
+	} gucinfo;
+
 	struct i915_gem_context_coredump {
 		char comm[TASK_COMM_LEN];
 
@@ -149,6 +157,7 @@ struct intel_gt_coredump {
 		struct intel_uc_fw guc_fw;
 		struct intel_uc_fw huc_fw;
 		struct i915_vma_coredump *guc_log;
+		struct intel_guc_state_capture *capture;
 	} *uc;
 
 	struct intel_gt_coredump *next;
@@ -214,6 +223,11 @@ struct drm_i915_error_state_buf {
 
 __printf(2, 3)
 void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...);
+void intel_gpu_error_print_vma(struct drm_i915_error_state_buf *m,
+			       const struct intel_engine_cs *engine,
+			       const struct i915_vma_coredump *vma);
+struct i915_vma_coredump *
+intel_gpu_error_find_batch(const struct intel_engine_coredump *ee);
 
 struct i915_gpu_coredump *i915_gpu_coredump(struct intel_gt *gt,
 					    intel_engine_mask_t engine_mask);
-- 
2.25.1

