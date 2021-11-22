Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E31C745982B
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 00:03:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E264089F3B;
	Mon, 22 Nov 2021 23:02:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93DC189ECD
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 23:02:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10176"; a="222123297"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="222123297"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 15:02:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="674237090"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga005.jf.intel.com with ESMTP; 22 Nov 2021 15:02:52 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Nov 2021 15:04:02 -0800
Message-Id: <20211122230402.2023576-8-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 7/7] drm/i915/guc: Print the GuC error capture
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

Print the GuC captured error state register list (offsets
and values) when gpu_coredump_state printout is invoked.

Also, since the GuC can report multiple engine class registers in a
single notification event, parse the captured data (appearing as a
stream of structures) to identify multiple captures of different
'engine-capture-group-outputs'.

Finally, for each 'engine-capture-group-output', identify the last
running context and print already-identified vma's so that user's
output report follows the same layout as execlist submission. I.e.
engine1-registers, engine1-context-vmas, engine2-registers,
engine2-context-vmas, etc.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   4 +-
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 389 ++++++++++++++++++
 .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |   6 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |  53 ++-
 drivers/gpu/drm/i915/i915_gpu_error.h         |   5 +
 5 files changed, 439 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 332756036007..5806e2c05212 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1595,9 +1595,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
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
index 459fe81c77ae..998ce1b474ed 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -415,8 +415,389 @@ int intel_guc_capture_output_min_size_est(struct intel_guc *guc)
  *                   L--> intel_guc_capture_store_snapshot
  *                        L--> queue(__guc_capture_store_snapshot_work)
  *                             Copies from B (head->tail) into C
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
+static char *
+guc_capture_register_string(const struct intel_guc *guc, u32 owner, u32 type,
+			    u32 class, u32 id, u32 offset)
+{
+	struct __guc_mmio_reg_descr_group *reglists = guc->capture.reglists;
+	struct __guc_mmio_reg_descr_group *match;
+	int num_regs, j = 0;
+
+	if (!reglists)
+		return NULL;
+
+	match = guc_capture_get_one_list(reglists, owner, type, id);
+	if (match) {
+		num_regs = match->num_regs;
+		while (num_regs--) {
+			if (offset == match->list[j].reg.reg)
+				return match->list[j].regname;
+			++j;
+		}
+	}
+
+	return NULL;
+}
+
+static inline int
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
+capture_store_get_group_hdr(const struct intel_guc *guc,
+			    struct guc_capture_out_store *store, u32 *bytesleft,
+			    struct intel_guc_capture_out_group_header *group)
+{
+	int read = 0;
+	int fullsize = sizeof(struct intel_guc_capture_out_group_header);
+
+	if (fullsize > *bytesleft)
+		return -1;
+
+	if (CIRC_CNT_TO_END(store->head, store->tail, store->size) >= fullsize) {
+		    memcpy(group, (store->addr + store->tail), fullsize);
+			store->tail = (store->tail + fullsize) & (store->size - 1);
+			*bytesleft -= fullsize;
+		return 0;
+	}
+
+	read += guc_capture_store_remove_dw(store, bytesleft, &group->reserved1);
+	read += guc_capture_store_remove_dw(store, bytesleft, &group->info);
+	if (read != sizeof(*group))
+		return -1;
+
+	return 0;
+}
+
+static int
+capture_store_get_data_hdr(const struct intel_guc *guc,
+			   struct guc_capture_out_store *store, u32 *bytesleft,
+			   struct intel_guc_capture_out_data_header *data)
+{
+	int read = 0;
+	int fullsize = sizeof(struct intel_guc_capture_out_data_header);
+
+	if (fullsize > *bytesleft)
+		return -1;
+
+	if (CIRC_CNT_TO_END(store->head, store->tail, store->size) >= fullsize) {
+		    memcpy(data, (store->addr + store->tail), fullsize);
+			store->tail = (store->tail + fullsize) & (store->size - 1);
+			*bytesleft -= fullsize;
+		return 0;
+	}
+
+	read += guc_capture_store_remove_dw(store, bytesleft, &data->reserved1);
+	read += guc_capture_store_remove_dw(store, bytesleft, &data->info);
+	read += guc_capture_store_remove_dw(store, bytesleft, &data->lrca);
+	read += guc_capture_store_remove_dw(store, bytesleft, &data->guc_ctx_id);
+	read += guc_capture_store_remove_dw(store, bytesleft, &data->num_mmios);
+	if (read != sizeof(*data))
+		return -1;
+
+	return 0;
+}
+
+static int
+capture_store_get_register(const struct intel_guc *guc,
+			   struct guc_capture_out_store *store, u32 *bytesleft,
+			   struct guc_mmio_reg *reg)
+{
+	int read = 0;
+	int fullsize = sizeof(struct guc_mmio_reg);
+
+	if (fullsize > *bytesleft)
+		return -1;
+
+	if (CIRC_CNT_TO_END(store->head, store->tail, store->size) >= fullsize) {
+		    memcpy(reg, (store->addr + store->tail), fullsize);
+			store->tail = (store->tail + fullsize) & (store->size - 1);
+			*bytesleft -= fullsize;
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
+guc_lookup_engine(struct intel_guc *guc, u8 guc_class, u8 instance)
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
+static inline struct intel_context *
+guc_context_lookup(struct intel_guc *guc, u32 guc_ctx_id)
+{
+	struct intel_context *ce;
+
+	if (unlikely(guc_ctx_id >= GUC_MAX_LRC_DESCRIPTORS)) {
+		drm_dbg(&guc_to_gt(guc)->i915->drm, "Invalid guc_ctx_id 0x%X, max 0x%X",
+			guc_ctx_id, GUC_MAX_LRC_DESCRIPTORS);
+		return NULL;
+	}
+
+	ce = xa_load(&guc->context_lookup, guc_ctx_id);
+	if (unlikely(!ce)) {
+		drm_dbg(&guc_to_gt(guc)->i915->drm, "Context is NULL, guc_ctx_id 0x%X",
+			guc_ctx_id);
+		return NULL;
+	}
+
+	return ce;
+}
+
+
+#define PRINT guc_capt_err_print
+#define REGSTR guc_capture_register_string
+
+#define GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng) \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Name: %s\n", (eng)->name); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Class: 0x%02x\n", (eng)->class); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Inst: 0x%02x\n", (eng)->instance); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-LogicalMask: 0x%08x\n", (eng)->logical_mask)
+
+#define GCAP_PRINT_GUC_INST_INFO(i915, ebuf, data) \
+	PRINT(&(i915->drm), (ebuf), "    LRCA: 0x%08x\n", (data).lrca); \
+	PRINT(&(i915->drm), (ebuf), "    GuC-ContextID: 0x%08x\n", (data).guc_ctx_id); \
+	PRINT(&(i915->drm), (ebuf), "    GuC-Engine-Instance: 0x%08x\n", \
+	      (uint32_t) FIELD_GET(GUC_CAPTURE_DATAHDR_SRC_INSTANCE, (data).info));
+
+#define GCAP_PRINT_INTEL_CTX_INFO(i915, ebuf, ce) \
+	PRINT(&(i915->drm), (ebuf), "    i915-Ctx-Flags: 0x%016lx\n", (ce)->flags); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Ctx-GuC-ID: 0x%016x\n", (ce)->guc_id.id);
+
+int intel_guc_capture_out_print_next_group(struct drm_i915_error_state_buf *ebuf,
+					   struct intel_gt_coredump *gt)
+{
+	/* constant qualifier for data-pointers we shouldn't change mid of error dump printing */
+	struct intel_guc_state_capture *cap = gt->uc->capture;
+	struct intel_guc *guc = container_of(cap, struct intel_guc, capture);
+	struct drm_i915_private *i915 = (container_of(guc, struct intel_gt,
+						   uc.guc))->i915;
+	struct guc_capture_out_store *store = &cap->out_store;
+	struct guc_capture_out_store tmpstore;
+	struct intel_guc_capture_out_group_header group;
+	struct intel_guc_capture_out_data_header data;
+	struct guc_mmio_reg reg;
+	const char *grptypestr[GUC_STATE_CAPTURE_GROUP_TYPE_MAX] = {"full-capture",
+								    "partial-capture"};
+	const char *datatypestr[GUC_CAPTURE_LIST_TYPE_MAX] = {"Global", "Engine-Class",
+							      "Engine-Instance"};
+	enum guc_capture_group_types grptype;
+	enum guc_capture_type datatype;
+	int numgrps, numregs;
+	char *str, noname[16];
+	u32 numbytes, engineclass, eng_inst, ret = 0;
+	struct intel_engine_cs *eng;
+	struct intel_context *ce;
+
+	if (!cap->enabled)
+		return -ENODEV;
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
+	if (capture_store_get_group_hdr(guc, &tmpstore, &numbytes, &group)) {
+		PRINT(&i915->drm, ebuf, "GuC capture error getting next group-header!\n");
+		ret = -EIO;
+		goto unlock;
+	}
+
+	PRINT(&i915->drm, ebuf, "NumCaptures:  0x%08x\n", (uint32_t)
+	      FIELD_GET(GUC_CAPTURE_GRPHDR_SRC_NUMCAPTURES, group.info));
+	grptype = FIELD_GET(GUC_CAPTURE_GRPHDR_SRC_CAPTURE_TYPE, group.info);
+	PRINT(&i915->drm, ebuf, "Coverage:  0x%08x = %s\n", grptype,
+	      grptypestr[grptype % GUC_STATE_CAPTURE_GROUP_TYPE_MAX]);
+
+	numgrps = FIELD_GET(GUC_CAPTURE_GRPHDR_SRC_NUMCAPTURES, group.info);
+	while (numgrps--) {
+		eng = NULL;
+		ce = NULL;
+
+		if (capture_store_get_data_hdr(guc, &tmpstore, &numbytes, &data)) {
+			PRINT(&i915->drm, ebuf, "GuC capture error on next data-header!\n");
+			ret = -EIO;
+			goto unlock;
+		}
+		datatype = FIELD_GET(GUC_CAPTURE_DATAHDR_SRC_TYPE, data.info);
+		PRINT(&i915->drm, ebuf, "  RegListType: %s\n",
+		      datatypestr[datatype % GUC_CAPTURE_LIST_TYPE_MAX]);
+
+		engineclass = FIELD_GET(GUC_CAPTURE_DATAHDR_SRC_CLASS, data.info);
+		if (datatype != GUC_CAPTURE_LIST_TYPE_GLOBAL) {
+			PRINT(&i915->drm, ebuf, "    GuC-Engine-Class: %d\n",
+			      engineclass);
+			if (engineclass <= GUC_LAST_ENGINE_CLASS)
+				PRINT(&i915->drm, ebuf, "    i915-Eng-Class: %d\n",
+				      guc_class_to_engine_class(engineclass));
+
+			if (datatype == GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE) {
+				GCAP_PRINT_GUC_INST_INFO(i915, ebuf, data);
+				eng_inst = FIELD_GET(GUC_CAPTURE_DATAHDR_SRC_INSTANCE, data.info);
+				eng = guc_lookup_engine(guc, engineclass, eng_inst);
+				if (eng) {
+					GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng);
+				} else {
+					PRINT(&i915->drm, ebuf, "    i915-Eng-Lookup Fail!\n");
+				}
+				ce = guc_context_lookup(guc, data.guc_ctx_id);
+				if (ce) {
+					GCAP_PRINT_INTEL_CTX_INFO(i915, ebuf, ce);
+				} else {
+					PRINT(&i915->drm, ebuf, "    i915-Ctx-Lookup Fail!\n");
+				}
+			}
+		}
+		numregs = FIELD_GET(GUC_CAPTURE_DATAHDR_NUM_MMIOS, data.num_mmios);
+		PRINT(&i915->drm, ebuf, "     NumRegs: 0x%08x\n", numregs);
+
+		while (numregs--) {
+			if (capture_store_get_register(guc, &tmpstore, &numbytes, &reg)) {
+				PRINT(&i915->drm, ebuf, "Error getting next register!\n");
+				ret = -EIO;
+				goto unlock;
+			}
+			str = REGSTR(guc, GUC_CAPTURE_LIST_INDEX_PF, datatype,
+				     engineclass, 0, reg.offset);
+			if (!str) {
+				snprintf(noname, sizeof(noname), "REG-0x%08x", reg.offset);
+				str = noname;
+			}
+			PRINT(&i915->drm, ebuf, "      %s:  0x%08x\n", str, reg.value);
+
+		}
+		if (eng) {
+			const struct intel_engine_coredump *ee;
+			for (ee = gt->engine; ee; ee = ee->next) {
+				const struct i915_vma_coredump *vma;
+				if (ee->engine == eng) {
+					for (vma = ee->vma; vma; vma = vma->next)
+						i915_print_error_vma(ebuf, ee->engine, vma);
+				}
+			}
+		}
+	}
+
+	store->tail = tmpstore.tail;
+unlock:
+	/* if we have a stream error, just drop everything */
+	if (ret == -EIO) {
+		drm_warn(&i915->drm, "Skip GuC capture data print due to stream error\n");
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
@@ -587,6 +968,14 @@ void intel_guc_capture_destroy(struct intel_guc *guc)
 	guc_capture_clear_ext_regs(guc->capture.reglists);
 }
 
+struct intel_guc_state_capture *
+intel_guc_capture_store_ptr(struct intel_guc *guc)
+{
+	if (!guc->capture.enabled)
+		return NULL;
+	return &guc->capture;
+}
+
 int intel_guc_capture_init(struct intel_guc *guc)
 {
 	struct drm_i915_private *dev_priv = (guc_to_gt(guc))->i915;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
index 7031de12f3a1..7d048a8f6efe 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
@@ -88,6 +88,11 @@ struct intel_guc_state_capture {
 	struct work_struct store_work;
 };
 
+struct drm_i915_error_state_buf;
+struct intel_gt_coredump;
+
+int intel_guc_capture_out_print_next_group(struct drm_i915_error_state_buf *m,
+					   struct intel_gt_coredump *gt);
 void intel_guc_capture_store_snapshot(struct intel_guc *guc);
 int intel_guc_capture_list_count(struct intel_guc *guc, u32 owner, u32 type, u32 class,
 				 u16 *num_entries);
@@ -96,6 +101,7 @@ int intel_guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32
 int intel_guc_capture_output_min_size_est(struct intel_guc *guc);
 void intel_guc_capture_destroy(struct intel_guc *guc);
 void intel_guc_capture_store_snapshot_immediate(struct intel_guc *guc);
+struct intel_guc_state_capture *intel_guc_capture_store_ptr(struct intel_guc *guc);
 int intel_guc_capture_init(struct intel_guc *guc);
 
 #endif /* _INTEL_GUC_CAPTURE_H */
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 2a2d7643b551..47016059c65d 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -600,6 +600,16 @@ static void error_print_engine(struct drm_i915_error_state_buf *m,
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
@@ -609,9 +619,9 @@ void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...)
 	va_end(args);
 }
 
-static void print_error_vma(struct drm_i915_error_state_buf *m,
-			    const struct intel_engine_cs *engine,
-			    const struct i915_vma_coredump *vma)
+void i915_print_error_vma(struct drm_i915_error_state_buf *m,
+			  const struct intel_engine_cs *engine,
+			  const struct i915_vma_coredump *vma)
 {
 	char out[ASCII85_BUFSZ];
 	int page;
@@ -679,7 +689,7 @@ static void err_print_uc(struct drm_i915_error_state_buf *m,
 
 	intel_uc_fw_dump(&error_uc->guc_fw, &p);
 	intel_uc_fw_dump(&error_uc->huc_fw, &p);
-	print_error_vma(m, NULL, error_uc->guc_log);
+	i915_print_error_vma(m, NULL, error_uc->guc_log);
 }
 
 static void err_free_sgl(struct scatterlist *sgl)
@@ -764,12 +774,16 @@ static void err_print_gt(struct drm_i915_error_state_buf *m,
 		err_printf(m, "  GAM_DONE: 0x%08x\n", gt->gam_done);
 	}
 
-	for (ee = gt->engine; ee; ee = ee->next) {
-		const struct i915_vma_coredump *vma;
+	if (gt->uc->capture) /* error capture was via GuC */
+		error_print_guc_captures(m, gt);
+	else {
+		for (ee = gt->engine; ee; ee = ee->next) {
+			const struct i915_vma_coredump *vma;
 
-		error_print_engine(m, ee);
-		for (vma = ee->vma; vma; vma = vma->next)
-			print_error_vma(m, ee->engine, vma);
+			error_print_engine(m, ee);
+			for (vma = ee->vma; vma; vma = vma->next)
+				i915_print_error_vma(m, ee->engine, vma);
+		}
 	}
 
 	if (gt->uc)
@@ -1140,7 +1154,7 @@ static void gt_record_fences(struct intel_gt_coredump *gt)
 	gt->nfence = i;
 }
 
-static void engine_record_registers(struct intel_engine_coredump *ee)
+static void engine_record_registers_execlist(struct intel_engine_coredump *ee)
 {
 	const struct intel_engine_cs *engine = ee->engine;
 	struct drm_i915_private *i915 = engine->i915;
@@ -1384,8 +1398,10 @@ intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp)
 
 	ee->engine = engine;
 
-	engine_record_registers(ee);
-	engine_record_execlists(ee);
+	if (!intel_uc_uses_guc_submission(&engine->gt->uc)) {
+		engine_record_registers_execlist(ee);
+		engine_record_execlists(ee);
+	}
 
 	return ee;
 }
@@ -1558,8 +1574,8 @@ gt_record_uc(struct intel_gt_coredump *gt,
 	return error_uc;
 }
 
-/* Capture all registers which don't fit into another category. */
-static void gt_record_regs(struct intel_gt_coredump *gt)
+/* Capture all global registers which don't fit into another category. */
+static void gt_record_registers_execlist(struct intel_gt_coredump *gt)
 {
 	struct intel_uncore *uncore = gt->_gt->uncore;
 	struct drm_i915_private *i915 = uncore->i915;
@@ -1806,7 +1822,9 @@ intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp)
 	gc->_gt = gt;
 	gc->awake = intel_gt_pm_is_awake(gt);
 
-	gt_record_regs(gc);
+	if (!intel_uc_uses_guc_submission(&gt->uc))
+		gt_record_registers_execlist(gc);
+
 	gt_record_fences(gc);
 
 	return gc;
@@ -1871,6 +1889,11 @@ i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask)
 		if (INTEL_INFO(i915)->has_gt_uc)
 			error->gt->uc = gt_record_uc(error->gt, compress);
 
+		if (intel_uc_uses_guc_submission(&gt->uc))
+			error->gt->uc->capture = intel_guc_capture_store_ptr(&gt->uc.guc);
+		else
+			error->gt->uc->capture = NULL;
+
 		i915_vma_capture_finish(error->gt, compress);
 
 		error->simulated |= error->gt->simulated;
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index b98d8cdbe4f2..b55369b245ee 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -17,6 +17,7 @@
 #include "gt/intel_engine.h"
 #include "gt/intel_gt_types.h"
 #include "gt/uc/intel_uc_fw.h"
+#include "gt/uc/intel_guc_capture.h"
 
 #include "intel_device_info.h"
 
@@ -151,6 +152,7 @@ struct intel_gt_coredump {
 		struct intel_uc_fw guc_fw;
 		struct intel_uc_fw huc_fw;
 		struct i915_vma_coredump *guc_log;
+		struct intel_guc_state_capture *capture;
 	} *uc;
 
 	struct intel_gt_coredump *next;
@@ -216,6 +218,9 @@ struct drm_i915_error_state_buf {
 
 __printf(2, 3)
 void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...);
+void i915_print_error_vma(struct drm_i915_error_state_buf *m,
+			  const struct intel_engine_cs *engine,
+			  const struct i915_vma_coredump *vma);
 
 struct i915_gpu_coredump *i915_gpu_coredump(struct intel_gt *gt,
 					    intel_engine_mask_t engine_mask);
-- 
2.25.1

