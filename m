Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9AB4D5A9C
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 06:26:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C339E10E1CE;
	Fri, 11 Mar 2022 05:26:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C13B10E1CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 05:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646976388; x=1678512388;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=BUJFcpfZ0tPli5yf6g8VNob2TBlgg8UwPjOkyoEtKPg=;
 b=fx41sisqgnrKSCNK4SQ9yqTUraAZu0oIx2fA1g/PALxuj4a3OyHV38X4
 sxLPvOVw1tUzzK6ChFOUTfT42EzIeFPHZWMObaycsh0T3jMYR3IjpZqEw
 Bcs4QIRCj1wkCaAX/TADZijVhzHx1+t2OqmsQiryLygIER36EAEj3Yw7U
 ABi+h2TEL3n5IXI12IQ6MzDUIKgR3PewkVuDKOWLLhgtpkS+eVb4yqZWW
 d9iaIxnXZCP94YkvaF4phGolf+7Bdnde/hT4oQiZQPdWwqgG1mJtBfRhr
 e/MQAlRTTxspwvg62jRy+d9qComSnV+r7eiDLQ0h8uf88BaIFxlbn/LGx g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="254331586"
X-IronPort-AV: E=Sophos;i="5.90,172,1643702400"; d="scan'208";a="254331586"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 21:26:27 -0800
X-IronPort-AV: E=Sophos;i="5.90,172,1643702400"; d="scan'208";a="511278581"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154)
 ([10.165.21.154])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 21:26:27 -0800
Date: Thu, 10 Mar 2022 21:26:27 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <20220311052627.GE23794@unerlige-ril-10.165.21.154>
References: <20220226095541.1010534-1-alan.previn.teres.alexis@intel.com>
 <20220226095541.1010534-14-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20220226095541.1010534-14-alan.previn.teres.alexis@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v7 13/13] drm/i915/guc: Print the GuC error
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Feb 26, 2022 at 01:55:41AM -0800, Alan Previn wrote:
>Print the GuC captured error state register list (string names
>and values) when gpu_coredump_state printout is invoked via
>the i915 debugfs for flushing the gpu error-state that was
>captured prior.
>
>Since GuC could have reported multiple engine register dumps
>in a single notification event, parse the captured data
>(appearing as a stream of structures) to identify each dump as
>a different 'engine-capture-group-output'.
>
>Finally, for each 'engine-capture-group-output' that is found,
>verify if the engine register dump corresponds to the
>engine_coredump content that was previously populated by the
>i915_gpu_coredump function. That function would have copied
>the context's vma's including the bacth buffer during the
>G2H-context-reset notification that occurred earlier. Perform
>this verification check by comparing guc_id, lrca and engine-
>instance obtained from the 'engine-capture-group-output' vs a
>copy of that same info taken during i915_gpu_coredump. If
>they match, then print those vma's as well (such as the batch
>buffers).
>
>Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>

Looks intricate since you are plugging this in to existing code. This 
looks fine. Can you also please share the igt tests that you are using 
for this?

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Thanks,
Umesh
>---
> drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   4 +-
> drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   3 +
> .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 162 ++++++++++++++++++
> .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |   2 +-
> .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   6 +-
> drivers/gpu/drm/i915/i915_debugfs.c           |   1 +
> drivers/gpu/drm/i915/i915_gpu_error.c         |  16 +-
> drivers/gpu/drm/i915/i915_gpu_error.h         |   5 +
> 8 files changed, 184 insertions(+), 15 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>index e855c801ba28..4643745e5d09 100644
>--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>@@ -1629,9 +1629,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
> 		drm_printf(m, "\tIPEHR: 0x%08x\n", ENGINE_READ(engine, IPEHR));
> 	}
>
>-	if (intel_engine_uses_guc(engine)) {
>-		/* nothing to print yet */
>-	} else if (HAS_EXECLISTS(dev_priv)) {
>+	if (HAS_EXECLISTS(dev_priv) && !intel_engine_uses_guc(engine)) {
> 		struct i915_request * const *port, *rq;
> 		const u32 *hws =
> 			&engine->status_page.addr[I915_HWS_CSB_BUF0_INDEX];
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>index 908c6b1dd51a..08327294c1e3 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>@@ -438,6 +438,9 @@ int intel_guc_engine_failure_process_msg(struct intel_guc *guc,
> int intel_guc_error_capture_process_msg(struct intel_guc *guc,
> 					const u32 *msg, u32 len);
>
>+struct intel_engine_cs *
>+intel_guc_lookup_engine(struct intel_guc *guc, u8 guc_class, u8 instance);
>+
> void intel_guc_find_hung_context(struct intel_engine_cs *engine);
>
> int intel_guc_global_policies_update(struct intel_guc *guc);
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>index 621c0b4537a9..2f96bdf2b90f 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>@@ -746,6 +746,21 @@ int intel_guc_capture_output_min_size_est(struct intel_guc *guc)
>  *                                    intel_engine_coredump struct (if the context and
>  *                                    engine of the event notification matches a node
>  *                                    in the link list).
>+ *
>+ * User Sysfs / Debugfs
>+ * --------------------
>+ *      --> i915_gpu_coredump_copy_to_buffer->
>+ *                   L--> err_print_to_sgl --> err_print_gt
>+ *                        L--> error_print_guc_captures
>+ *                             L--> intel_guc_capture_print_node prints the
>+ *                                  register lists values of the attached node
>+ *                                  on the error-engine-dump being reported.
>+ *                   L--> i915_reset_error_state ... -->__i915_gpu_coredump_free
>+ *                        L--> ... cleanup_gt -->
>+ *                             L--> intel_guc_capture_free_node returns the
>+ *                                  capture-output-node back to the internal
>+ *                                  cachelist for reuse.
>+ *
>  */
>
> static int guc_capture_buf_cnt(struct __guc_capture_bufstate *buf)
>@@ -1346,9 +1361,156 @@ static void __guc_capture_process_output(struct intel_guc *guc)
>
> #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
>
>+static const char *
>+guc_capture_reg_to_str(const struct intel_guc *guc, u32 owner, u32 type,
>+		       u32 class, u32 id, u32 offset, u32 *is_ext)
>+{
>+	const struct __guc_mmio_reg_descr_group *reglists = guc->capture.priv->reglists;
>+	struct __guc_mmio_reg_descr_group *extlists = guc->capture.priv->extlists;
>+	const struct __guc_mmio_reg_descr_group *match;
>+	struct __guc_mmio_reg_descr_group *matchext;
>+	int j;
>+
>+	*is_ext = 0;
>+	if (!reglists)
>+		return NULL;
>+
>+	match = guc_capture_get_one_list(reglists, owner, type, id);
>+	if (!match)
>+		return NULL;
>+
>+	for (j = 0; j < match->num_regs; ++j) {
>+		if (offset == match->list[j].reg.reg)
>+			return match->list[j].regname;
>+	}
>+	if (extlists) {
>+		matchext = guc_capture_get_one_ext_list(extlists, owner, type, id);
>+		if (!matchext)
>+			return NULL;
>+		for (j = 0; j < matchext->num_regs; ++j) {
>+			if (offset == matchext->extlist[j].reg.reg) {
>+				*is_ext = 1;
>+				return matchext->extlist[j].regname;
>+			}
>+		}
>+	}
>+
>+	return NULL;
>+}
>+
>+#ifdef CONFIG_DRM_I915_DEBUG_GUC
>+#define __out(a, ...) \
>+	do { \
>+		drm_warn((&(a)->drm), __VA_ARGS__); \
>+		i915_error_printf((a), __VA_ARGS__); \
>+	} while (0)
>+#else
>+#define __out(a, ...) \
>+	i915_error_printf(a, __VA_ARGS__)
>+#endif
>+
>+#define GCAP_PRINT_INTEL_ENG_INFO(ebuf, eng) \
>+	do { \
>+		__out(ebuf, "    i915-Eng-Name: %s command stream\n", \
>+		      (eng)->name); \
>+		__out(ebuf, "    i915-Eng-Inst-Class: 0x%02x\n", (eng)->class); \
>+		__out(ebuf, "    i915-Eng-Inst-Id: 0x%02x\n", (eng)->instance); \
>+		__out(ebuf, "    i915-Eng-LogicalMask: 0x%08x\n", \
>+		      (eng)->logical_mask); \
>+	} while (0)
>+
>+#define GCAP_PRINT_GUC_INST_INFO(ebuf, node) \
>+	do { \
>+		__out(ebuf, "    GuC-Engine-Inst-Id: 0x%08x\n", \
>+		      (node)->eng_inst); \
>+		__out(ebuf, "    GuC-Context-Id: 0x%08x\n", (node)->guc_id); \
>+		__out(ebuf, "    LRCA: 0x%08x\n", (node)->lrca); \
>+	} while (0)
>+
> int intel_guc_capture_print_engine_node(struct drm_i915_error_state_buf *ebuf,
> 					const struct intel_engine_coredump *ee)
> {
>+	const char *grptype[GUC_STATE_CAPTURE_GROUP_TYPE_MAX] = {
>+		"full-capture",
>+		"partial-capture"
>+	};
>+	const char *datatype[GUC_CAPTURE_LIST_TYPE_MAX] = {
>+		"Global",
>+		"Engine-Class",
>+		"Engine-Instance"
>+	};
>+	struct intel_guc_state_capture *cap;
>+	struct __guc_capture_parsed_output *node;
>+	struct drm_i915_private *i915;
>+	struct guc_mmio_reg *regs;
>+	struct intel_guc *guc;
>+	struct intel_engine_cs *eng;
>+	const char *str;
>+	int numregs, i, j;
>+	u32 is_ext;
>+
>+	if (!ebuf || !ee)
>+		return -EINVAL;
>+	cap = ee->capture;
>+	if (!cap->priv || !ee->engine)
>+		return -ENODEV;
>+
>+	guc = container_of(cap, struct intel_guc, capture);
>+	i915 = (container_of(guc, struct intel_gt, uc.guc))->i915;
>+	__out(ebuf, "global --- GuC Error Capture on %s command stream:\n",
>+	      ee->engine->name);
>+
>+	node = ee->guc_capture_node;
>+	if (!node) {
>+		__out(ebuf, "  No matching ee-node\n");
>+		return 0;
>+	}
>+
>+	__out(ebuf, "Coverage:  %s\n", grptype[node->is_partial]);
>+
>+	for (i = GUC_CAPTURE_LIST_TYPE_GLOBAL; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>+		__out(ebuf, "  RegListType: %s\n",
>+		      datatype[i % GUC_CAPTURE_LIST_TYPE_MAX]);
>+		__out(ebuf, "    Owner-Id: %d\n", node->reginfo[i].vfid);
>+
>+		switch (i) {
>+		case GUC_CAPTURE_LIST_TYPE_GLOBAL:
>+		default:
>+			break;
>+		case GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS:
>+			__out(ebuf, "    GuC-Eng-Class: %d\n", node->eng_class);
>+			__out(ebuf, "    i915-Eng-Class: %d\n",
>+			      guc_class_to_engine_class(node->eng_class));
>+			break;
>+		case GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE:
>+			eng = intel_guc_lookup_engine(guc, node->eng_class, node->eng_inst);
>+			if (eng)
>+				GCAP_PRINT_INTEL_ENG_INFO(ebuf, eng);
>+			else
>+				__out(ebuf, "    i915-Eng-Lookup Fail!\n");
>+			GCAP_PRINT_GUC_INST_INFO(ebuf, node);
>+			break;
>+		}
>+
>+		numregs = node->reginfo[i].num_regs;
>+		__out(ebuf, "    NumRegs: %d\n", numregs);
>+		j = 0;
>+		while (numregs--) {
>+			regs = node->reginfo[i].regs;
>+			str = guc_capture_reg_to_str(guc, GUC_CAPTURE_LIST_INDEX_PF, i,
>+						     node->eng_class, 0, regs[j].offset, &is_ext);
>+			if (!str)
>+				__out(ebuf, "      REG-0x%08x", regs[j].offset);
>+			else
>+				__out(ebuf, "      %s", str);
>+			if (is_ext)
>+				__out(ebuf, "[%ld][%ld]",
>+				      FIELD_GET(GUC_REGSET_STEERING_GROUP, regs[j].flags),
>+				      FIELD_GET(GUC_REGSET_STEERING_INSTANCE, regs[j].flags));
>+			__out(ebuf, ":  0x%08x\n", regs[j].value);
>+			++j;
>+		}
>+	}
> 	return 0;
> }
>
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
>index ae527c98e2f6..d544efcf0e9f 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
>@@ -12,8 +12,8 @@ struct drm_i915_error_state_buf;
> struct file;
> struct guc_ads;
> struct guc_gt_system_info;
>-struct intel_context;
> struct intel_engine_coredump;
>+struct intel_context;
> struct intel_gt;
> struct intel_guc;
>
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>index 5d41dc95f066..29f35f9f3c6d 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>@@ -4087,8 +4087,8 @@ int intel_guc_error_capture_process_msg(struct intel_guc *guc,
> 	return 0;
> }
>
>-static struct intel_engine_cs *
>-guc_lookup_engine(struct intel_guc *guc, u8 guc_class, u8 instance)
>+struct intel_engine_cs *
>+intel_guc_lookup_engine(struct intel_guc *guc, u8 guc_class, u8 instance)
> {
> 	struct intel_gt *gt = guc_to_gt(guc);
> 	u8 engine_class = guc_class_to_engine_class(guc_class);
>@@ -4137,7 +4137,7 @@ int intel_guc_engine_failure_process_msg(struct intel_guc *guc,
> 	instance = msg[1];
> 	reason = msg[2];
>
>-	engine = guc_lookup_engine(guc, guc_class, instance);
>+	engine = intel_guc_lookup_engine(guc, guc_class, instance);
> 	if (unlikely(!engine)) {
> 		drm_err(&gt->i915->drm,
> 			"Invalid engine %d:%d", guc_class, instance);
>diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
>index 274abf267f35..71489ce52746 100644
>--- a/drivers/gpu/drm/i915/i915_debugfs.c
>+++ b/drivers/gpu/drm/i915/i915_debugfs.c
>@@ -308,6 +308,7 @@ static int i915_gpu_info_open(struct inode *inode, struct file *file)
> 	gpu = NULL;
> 	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
> 		gpu = i915_gpu_coredump(to_gt(i915), ALL_ENGINES, CORE_DUMP_FLAG_NONE);
>+
> 	if (IS_ERR(gpu))
> 		return PTR_ERR(gpu);
>
>diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
>index 3d566bbe228d..3c7b9d0e8627 100644
>--- a/drivers/gpu/drm/i915/i915_gpu_error.c
>+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>@@ -530,8 +530,8 @@ __find_vma(struct i915_vma_coredump *vma, const char *name)
> 	return NULL;
> }
>
>-static struct i915_vma_coredump *
>-find_batch(const struct intel_engine_coredump *ee)
>+struct i915_vma_coredump *
>+intel_gpu_error_find_batch(const struct intel_engine_coredump *ee)
> {
> 	return __find_vma(ee->vma, "batch");
> }
>@@ -559,7 +559,7 @@ static void error_print_engine(struct drm_i915_error_state_buf *m,
>
> 	error_print_instdone(m, ee);
>
>-	batch = find_batch(ee);
>+	batch = intel_gpu_error_find_batch(ee);
> 	if (batch) {
> 		u64 start = batch->gtt_offset;
> 		u64 end = start + batch->gtt_size;
>@@ -610,9 +610,9 @@ void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...)
> 	va_end(args);
> }
>
>-static void print_error_vma(struct drm_i915_error_state_buf *m,
>-			    const struct intel_engine_cs *engine,
>-			    const struct i915_vma_coredump *vma)
>+void intel_gpu_error_print_vma(struct drm_i915_error_state_buf *m,
>+			       const struct intel_engine_cs *engine,
>+			       const struct i915_vma_coredump *vma)
> {
> 	char out[ASCII85_BUFSZ];
> 	struct page *page;
>@@ -681,7 +681,7 @@ static void err_print_uc(struct drm_i915_error_state_buf *m,
>
> 	intel_uc_fw_dump(&error_uc->guc_fw, &p);
> 	intel_uc_fw_dump(&error_uc->huc_fw, &p);
>-	print_error_vma(m, NULL, error_uc->guc_log);
>+	intel_gpu_error_print_vma(m, NULL, error_uc->guc_log);
> }
>
> static void err_free_sgl(struct scatterlist *sgl)
>@@ -801,7 +801,7 @@ static void err_print_gt_engines(struct drm_i915_error_state_buf *m,
> 		error_print_context(m, "  Active context: ", &ee->context);
>
> 		for (vma = ee->vma; vma; vma = vma->next)
>-			print_error_vma(m, ee->engine, vma);
>+			intel_gpu_error_print_vma(m, ee->engine, vma);
> 	}
>
> }
>diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
>index 64b999d8ac27..9554ce7a71ef 100644
>--- a/drivers/gpu/drm/i915/i915_gpu_error.h
>+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
>@@ -237,6 +237,11 @@ static inline u32 i915_reset_engine_count(struct i915_gpu_error *error,
>
> __printf(2, 3)
> void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...);
>+void intel_gpu_error_print_vma(struct drm_i915_error_state_buf *m,
>+			       const struct intel_engine_cs *engine,
>+			       const struct i915_vma_coredump *vma);
>+struct i915_vma_coredump *
>+intel_gpu_error_find_batch(const struct intel_engine_coredump *ee);
>
> struct i915_gpu_coredump *i915_gpu_coredump(struct intel_gt *gt,
> 					    intel_engine_mask_t engine_mask, u32 dump_flags);
>-- 
>2.25.1
>
