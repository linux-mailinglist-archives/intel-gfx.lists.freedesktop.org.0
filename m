Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3771995B0
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 13:48:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C15E86E823;
	Tue, 31 Mar 2020 11:48:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D30786E823
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 11:48:28 +0000 (UTC)
IronPort-SDR: Kixj5QS3KfD5n1YmZsZVQZ1wS0vDl00HUOTsC8UWie5PaSG4A0l1uQ9hE+Mh2mle60KvdpwdOO
 OxTR3NlKxnbA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 04:48:28 -0700
IronPort-SDR: xVEvSC+JS3MyjD4UlIXBiybtl9TbRRpg3tVZCaYayi3rrQSOQ7Zz7egd9RoRdvMHHF+uVWqUe3
 1bKNhfDwk/QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; d="scan'208";a="241890758"
Received: from dpohl-mobl.amr.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.252.59.74])
 by fmsmga008.fm.intel.com with ESMTP; 31 Mar 2020 04:48:26 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 14:48:20 +0300
Message-Id: <20200331114821.81957-2-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200331114821.81957-1-lionel.g.landwerlin@intel.com>
References: <20200331114821.81957-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/perf: prepare driver to receive
 multiple ctx handles
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

Make all the internal necessary changes before we flip the switch.

v2: Use an unlimited number of intel contexts (Chris)

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c       | 584 +++++++++++++++----------
 drivers/gpu/drm/i915/i915_perf_types.h |  23 +-
 2 files changed, 362 insertions(+), 245 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 8b28afb0526e..112bb5bd6665 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -192,6 +192,7 @@
  */
 
 #include <linux/anon_inodes.h>
+#include <linux/bsearch.h>
 #include <linux/sizes.h>
 #include <linux/uuid.h>
 
@@ -329,7 +330,8 @@ static const struct i915_oa_format gen12_oa_formats[I915_OA_FORMAT_MAX] = {
  * @single_context: Whether a single or all gpu contexts should be monitored
  * @hold_preemption: Whether the preemption is disabled for the filtered
  *                   context
- * @ctx_handle: A gem ctx handle for use with @single_context
+ * @n_ctx_handles: Length of @ctx_handles
+ * @ctx_handles: An array of gem context handles
  * @metrics_set: An ID for an OA unit metric set advertised via sysfs
  * @oa_format: An OA unit HW report format
  * @oa_periodic: Whether to enable periodic OA unit sampling
@@ -349,9 +351,10 @@ static const struct i915_oa_format gen12_oa_formats[I915_OA_FORMAT_MAX] = {
 struct perf_open_properties {
 	u32 sample_flags;
 
-	u64 single_context:1;
 	u64 hold_preemption:1;
-	u64 ctx_handle;
+
+	u32 n_ctx_handles;
+	u32 *ctx_handles;
 
 	/* OA sampling state */
 	int metrics_set;
@@ -625,6 +628,21 @@ static int append_oa_sample(struct i915_perf_stream *stream,
 	return 0;
 }
 
+static int ctx_id_equal(const void *key, const void *elem)
+{
+	return *((int *) elem) - *((int *) key);
+}
+
+static inline bool ctx_id_match(struct i915_perf_stream *stream,
+				u32 masked_ctx_id)
+{
+	return bsearch(&masked_ctx_id,
+		       stream->ctx_ids,
+		       stream->n_ctxs,
+		       sizeof(*stream->ctx_ids),
+		       ctx_id_equal) != NULL;
+}
+
 /**
  * Copies all buffered OA reports into userspace read() buffer.
  * @stream: An i915-perf stream opened for OA metrics
@@ -736,7 +754,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 			continue;
 		}
 
-		ctx_id = report32[2] & stream->specific_ctx_id_mask;
+		ctx_id = report32[2] & stream->ctx_id_mask;
 
 		/*
 		 * Squash whatever is in the CTX_ID field if it's marked as
@@ -781,26 +799,33 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		 * switches since it's not-uncommon for periodic samples to
 		 * identify a switch before any 'context switch' report.
 		 */
-		if (!stream->perf->exclusive_stream->ctx ||
-		    stream->specific_ctx_id == ctx_id ||
-		    stream->oa_buffer.last_ctx_id == stream->specific_ctx_id ||
-		    reason & OAREPORT_REASON_CTX_SWITCH) {
-
-			/*
-			 * While filtering for a single context we avoid
-			 * leaking the IDs of other contexts.
-			 */
-			if (stream->perf->exclusive_stream->ctx &&
-			    stream->specific_ctx_id != ctx_id) {
-				report32[2] = INVALID_CTX_ID;
-			}
-
+		if (!stream->perf->exclusive_stream->n_ctxs) {
 			ret = append_oa_sample(stream, buf, count, offset,
 					       report);
 			if (ret)
 				break;
+		} else {
+			bool ctx_match = ctx_id != INVALID_CTX_ID &&
+				ctx_id_match(stream, ctx_id);
+
+			if (ctx_match ||
+			    stream->oa_buffer.last_ctx_match ||
+			    reason & OAREPORT_REASON_CTX_SWITCH) {
+
+				/*
+				 * While filtering for a single context we avoid
+				 * leaking the IDs of other contexts.
+				 */
+				if (!ctx_match)
+					report32[2] = INVALID_CTX_ID;
+
+				ret = append_oa_sample(stream, buf, count, offset,
+						       report);
+				if (ret)
+					break;
+			}
 
-			stream->oa_buffer.last_ctx_id = ctx_id;
+			stream->oa_buffer.last_ctx_match = ctx_match;
 		}
 
 		/*
@@ -1191,138 +1216,163 @@ static int i915_oa_read(struct i915_perf_stream *stream,
 	return stream->perf->ops.read(stream, buf, count, offset);
 }
 
-static struct intel_context *oa_pin_context(struct i915_perf_stream *stream)
+static u32 get_ctx_id_mask(struct intel_engine_cs *engine)
 {
-	struct i915_gem_engines_iter it;
-	struct i915_gem_context *ctx = stream->ctx;
-	struct intel_context *ce;
-	int err;
+	switch (INTEL_GEN(engine->i915)) {
+	case 7:
+		/*
+		 * On Haswell we don't do any post processing of the reports
+		 * and don't need to use the mask.
+		 */
+		return 0;
 
-	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
-		if (ce->engine != stream->engine) /* first match! */
-			continue;
+	case 8:
+	case 9:
+	case 10:
+		if (intel_engine_in_execlists_submission_mode(engine))
+			return (1U << GEN8_CTX_ID_WIDTH) - 1;
 
 		/*
-		 * As the ID is the gtt offset of the context's vma we
-		 * pin the vma to ensure the ID remains fixed.
+		 * GuC uses the top bit to signal proxy submission, so ignore
+		 * that bit.
 		 */
-		err = intel_context_pin(ce);
-		if (err == 0) {
-			stream->pinned_ctx = ce;
-			break;
-		}
-	}
-	i915_gem_context_unlock_engines(ctx);
+		return (1U << (GEN8_CTX_ID_WIDTH - 1)) - 1;
+
+	case 11:
+	case 12:
+		/*
+		 * 0x7ff is used by idle context.
+		 */
+		BUILD_BUG_ON((GEN12_MAX_CONTEXT_HW_ID - 1) < NUM_CONTEXT_TAG);
+		return ((1U << GEN11_SW_CTX_ID_WIDTH) - 1) << (GEN11_SW_CTX_ID_SHIFT - 32);
 
-	return stream->pinned_ctx;
+	default:
+		MISSING_CASE(INTEL_GEN(engine->i915));
+		return 0;
+	}
 }
 
-/**
- * oa_get_render_ctx_id - determine and hold ctx hw id
- * @stream: An i915-perf stream opened for OA metrics
- *
- * Determine the render context hw id, and ensure it remains fixed for the
- * lifetime of the stream. This ensures that we don't have to worry about
- * updating the context ID in OACONTROL on the fly.
- *
- * Returns: zero on success or a negative error code
- */
-static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
+static u32 get_ctx_id(struct intel_context *ce, int idx)
 {
-	struct intel_context *ce;
-
-	ce = oa_pin_context(stream);
-	if (IS_ERR(ce))
-		return PTR_ERR(ce);
 
 	switch (INTEL_GEN(ce->engine->i915)) {
-	case 7: {
-		/*
-		 * On Haswell we don't do any post processing of the reports
-		 * and don't need to use the mask.
-		 */
-		stream->specific_ctx_id = i915_ggtt_offset(ce->state);
-		stream->specific_ctx_id_mask = 0;
-		break;
-	}
+	case 7:
+		return i915_ggtt_offset(ce->state);
 
 	case 8:
 	case 9:
 	case 10:
-		if (intel_engine_in_execlists_submission_mode(ce->engine)) {
-			stream->specific_ctx_id_mask =
-				(1U << GEN8_CTX_ID_WIDTH) - 1;
-			stream->specific_ctx_id = stream->specific_ctx_id_mask;
-		} else {
-			/*
-			 * When using GuC, the context descriptor we write in
-			 * i915 is read by GuC and rewritten before it's
-			 * actually written into the hardware. The LRCA is
-			 * what is put into the context id field of the
-			 * context descriptor by GuC. Because it's aligned to
-			 * a page, the lower 12bits are always at 0 and
-			 * dropped by GuC. They won't be part of the context
-			 * ID in the OA reports, so squash those lower bits.
-			 */
-			stream->specific_ctx_id =
-				lower_32_bits(ce->lrc_desc) >> 12;
+		if (intel_engine_in_execlists_submission_mode(ce->engine))
+			return (1U << GEN8_CTX_ID_WIDTH) - 1 - idx;
 
-			/*
-			 * GuC uses the top bit to signal proxy submission, so
-			 * ignore that bit.
-			 */
-			stream->specific_ctx_id_mask =
-				(1U << (GEN8_CTX_ID_WIDTH - 1)) - 1;
-		}
-		break;
+		/*
+		 * When using GuC, the context descriptor we write in i915 is
+		 * read by GuC and rewritten before it's actually written into
+		 * the hardware. The LRCA is what is put into the context id
+		 * field of the context descriptor by GuC. Because it's
+		 * aligned to a page, the lower 12bits are always at 0 and
+		 * dropped by GuC. They won't be part of the context ID in the
+		 * OA reports, so squash those lower bits.
+		 */
+		return lower_32_bits(ce->lrc_desc) >> 12;
 
 	case 11:
-	case 12: {
-		stream->specific_ctx_id_mask =
-			((1U << GEN11_SW_CTX_ID_WIDTH) - 1) << (GEN11_SW_CTX_ID_SHIFT - 32);
+	case 12:
 		/*
-		 * Pick an unused context id
-		 * 0 - (NUM_CONTEXT_TAG - 1) are used by other contexts
-		 * GEN12_MAX_CONTEXT_HW_ID (0x7ff) is used by idle context
+		 * Pick an unused context id 0 -
+		 * (NUM_CONTEXT_TAG - 1) are used by other
+		 * contexts GEN12_MAX_CONTEXT_HW_ID (0x7ff) is
+		 * used by idle context
 		 */
-		stream->specific_ctx_id = (GEN12_MAX_CONTEXT_HW_ID - 1) << (GEN11_SW_CTX_ID_SHIFT - 32);
-		BUILD_BUG_ON((GEN12_MAX_CONTEXT_HW_ID - 1) < NUM_CONTEXT_TAG);
-		break;
-	}
+		return ((GEN12_MAX_CONTEXT_HW_ID - 1) - idx) << (GEN11_SW_CTX_ID_SHIFT - 32);
 
 	default:
 		MISSING_CASE(INTEL_GEN(ce->engine->i915));
+		return 0;
 	}
+}
+
+static int oa_get_render_ctx_ids(struct i915_perf_stream *stream)
+{
+	struct intel_context *ce;
+	int i, err;
+
+	stream->ctx_id_mask = get_ctx_id_mask(stream->engine);
+
+	for (i = 0; i < stream->n_ctxs; i++) {
+		struct i915_gem_context *ctx = stream->ctxs[i];
+		struct i915_gem_engines_iter it;
 
-	ce->tag = stream->specific_ctx_id;
+		for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
+			if (ce->engine != stream->engine) /* first match! */
+				continue;
 
-	drm_dbg(&stream->perf->i915->drm,
-		"filtering on ctx_id=0x%x ctx_id_mask=0x%x\n",
-		stream->specific_ctx_id,
-		stream->specific_ctx_id_mask);
+			/*
+			 * As the ID is the gtt offset of the context's vma we
+			 * pin the vma to ensure the ID remains fixed.
+			 */
+			err = intel_context_pin(ce);
+			if (err) {
+				i915_gem_context_unlock_engines(ctx);
+				goto err;
+			}
+
+			stream->pinned_ctxs[i] = ce;
+			stream->ctx_ids[i] = get_ctx_id(ce, i);
+
+			drm_dbg(&stream->perf->i915->drm,
+				"filtering on ctx_id%i=0x%x ctx_id_mask=0x%x\n",
+				i, stream->ctx_ids[i], stream->ctx_id_mask);
+
+			ce->tag = stream->ctx_ids[i];
+
+			break;
+		}
+		i915_gem_context_unlock_engines(ctx);
+	}
 
 	return 0;
+
+err:
+	while (i--) {
+		ce = fetch_and_zero(&stream->pinned_ctxs[i]);
+		if (ce) {
+			ce->tag = 0; /* recomputed on next submission after parking */
+			intel_context_unpin(ce);
+		}
+
+		stream->ctx_ids[i] = INVALID_CTX_ID;
+	}
+
+	stream->ctx_id_mask = 0;
+
+	return err;
 }
 
 /**
- * oa_put_render_ctx_id - counterpart to oa_get_render_ctx_id releases hold
+ * oa_put_render_ctx_id - counterpart to oa_get_render_ctx_ids releases hold
  * @stream: An i915-perf stream opened for OA metrics
  *
  * In case anything needed doing to ensure the context HW ID would remain valid
  * for the lifetime of the stream, then that can be undone here.
  */
-static void oa_put_render_ctx_id(struct i915_perf_stream *stream)
+static void oa_put_render_ctx_ids(struct i915_perf_stream *stream)
 {
-	struct intel_context *ce;
+	int i;
 
-	ce = fetch_and_zero(&stream->pinned_ctx);
-	if (ce) {
-		ce->tag = 0; /* recomputed on next submission after parking */
-		intel_context_unpin(ce);
+	for (i = 0; i < stream->n_ctxs; i++) {
+		struct intel_context *ce;
+
+		ce = fetch_and_zero(&stream->pinned_ctxs[i]);
+		if (ce) {
+			ce->tag = 0; /* recomputed on next submission after parking */
+			intel_context_unpin(ce);
+		}
+
+		stream->ctx_ids[i] = INVALID_CTX_ID;
 	}
 
-	stream->specific_ctx_id = INVALID_CTX_ID;
-	stream->specific_ctx_id_mask = 0;
+	stream->ctx_id_mask = 0;
 }
 
 static void
@@ -1370,8 +1420,7 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 	intel_uncore_forcewake_put(stream->uncore, FORCEWAKE_ALL);
 	intel_engine_pm_put(stream->engine);
 
-	if (stream->ctx)
-		oa_put_render_ctx_id(stream);
+	oa_put_render_ctx_ids(stream);
 
 	free_oa_configs(stream);
 	free_noa_wait(stream);
@@ -1464,7 +1513,7 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
 	 * reports we will forward to userspace while filtering for a single
 	 * context.
 	 */
-	stream->oa_buffer.last_ctx_id = INVALID_CTX_ID;
+	stream->oa_buffer.last_ctx_match = false;
 
 	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
 
@@ -1519,7 +1568,7 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 	 * reports we will forward to userspace while filtering for a single
 	 * context.
 	 */
-	stream->oa_buffer.last_ctx_id = INVALID_CTX_ID;
+	stream->oa_buffer.last_ctx_match = false;
 
 	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
 
@@ -1995,11 +2044,6 @@ emit_oa_config(struct i915_perf_stream *stream,
 	return err;
 }
 
-static struct intel_context *oa_context(struct i915_perf_stream *stream)
-{
-	return stream->pinned_ctx ?: stream->engine->kernel_context;
-}
-
 static int
 hsw_enable_metric_set(struct i915_perf_stream *stream,
 		      struct i915_active *active)
@@ -2023,14 +2067,14 @@ hsw_enable_metric_set(struct i915_perf_stream *stream,
 			 0, GEN6_CSUNIT_CLOCK_GATE_DISABLE);
 
 	err = emit_oa_config(stream, stream->oa_config,
-			     oa_context(stream),
+			     stream->engine->kernel_context,
 			     active,
 			     false /* global */);
 	if (err)
 		return err;
 
 	return emit_oa_config(stream, stream->oa_config,
-			      oa_context(stream),
+			      stream->engine->kernel_context,
 			      active,
 			      true /* global */);
 }
@@ -2237,11 +2281,10 @@ static int gen8_configure_context(struct i915_gem_context *ctx,
 	return err;
 }
 
-static int gen12_configure_oar_context(struct i915_perf_stream *stream,
-				       struct i915_active *active)
+static int gen12_configure_oar_contexts(struct i915_perf_stream *stream,
+					struct i915_active *active)
 {
-	int err;
-	struct intel_context *ce = stream->pinned_ctx;
+	int i;
 	u32 format = stream->oa_buffer.format;
 	struct flex regs_context[] = {
 		{
@@ -2262,7 +2305,7 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
 			(active ? GEN12_OAR_OACONTROL_COUNTER_ENABLE : 0)
 		},
 		{
-			RING_CONTEXT_CONTROL(ce->engine->mmio_base),
+			RING_CONTEXT_CONTROL(stream->engine->mmio_base),
 			CTX_CONTEXT_CONTROL,
 			_MASKED_FIELD(GEN12_CTX_CTRL_OAR_CONTEXT_ENABLE,
 				      active ?
@@ -2271,18 +2314,28 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
 		},
 	};
 
-	/* Modify the context image of pinned context with regs_context*/
-	err = intel_context_lock_pinned(ce);
-	if (err)
-		return err;
+	for (i = 0; i < stream->n_ctxs; i++) {
+		struct intel_context *ce = stream->pinned_ctxs[i];
+		int err;
 
-	err = gen8_modify_context(ce, regs_context, ARRAY_SIZE(regs_context));
-	intel_context_unlock_pinned(ce);
-	if (err)
-		return err;
+		/* Modify the context image of pinned context with regs_context*/
+		err = intel_context_lock_pinned(ce);
+		if (err)
+			return err;
+
+		err = gen8_modify_context(ce, regs_context, ARRAY_SIZE(regs_context));
+		intel_context_unlock_pinned(ce);
+		if (err)
+			return err;
+
+		/* Apply regs_lri using LRI with pinned context */
+		err = gen8_modify_self(ce, regs_lri, ARRAY_SIZE(regs_lri),
+				       active);
+		if (err)
+			return err;
+	}
 
-	/* Apply regs_lri using LRI with pinned context */
-	return gen8_modify_self(ce, regs_lri, ARRAY_SIZE(regs_lri), active);
+	return 0;
 }
 
 /*
@@ -2484,14 +2537,14 @@ gen8_enable_metric_set(struct i915_perf_stream *stream,
 		return err;
 
 	err = emit_oa_config(stream, oa_config,
-			     oa_context(stream),
+			     stream->engine->kernel_context,
 			     active,
 			     false /* global */);
 	if (err)
 		return err;
 
 	return emit_oa_config(stream, stream->oa_config,
-			      oa_context(stream),
+			      stream->engine->kernel_context,
 			      active,
 			      true /* global */);
 }
@@ -2543,21 +2596,19 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 	 * another set of performance registers. Configure the unit dealing
 	 * with those.
 	 */
-	if (stream->ctx) {
-		ret = gen12_configure_oar_context(stream, active);
-		if (ret)
-			return ret;
-	}
+	ret = gen12_configure_oar_contexts(stream, active);
+	if (ret)
+		return ret;
 
 	ret = emit_oa_config(stream, oa_config,
-			     oa_context(stream),
+			     stream->engine->kernel_context,
 			     active,
 			     false /* global */);
 	if (ret)
 		return ret;
 
 	return emit_oa_config(stream, stream->oa_config,
-			      oa_context(stream),
+			      stream->engine->kernel_context,
 			      active,
 			      true /* global */);
 }
@@ -2591,8 +2642,7 @@ static void gen12_disable_metric_set(struct i915_perf_stream *stream)
 	gen12_configure_all_contexts(stream, NULL, NULL);
 
 	/* disable the context save/restore or OAR counters */
-	if (stream->ctx)
-		gen12_configure_oar_context(stream, NULL);
+	gen12_configure_oar_contexts(stream, NULL);
 
 	/* Make sure we disable noa to save power. */
 	intel_uncore_rmw(uncore, RPM_CONFIG1, GEN10_GT_NOA_ENABLE, 0);
@@ -2601,8 +2651,7 @@ static void gen12_disable_metric_set(struct i915_perf_stream *stream)
 static void gen7_oa_enable(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
-	struct i915_gem_context *ctx = stream->ctx;
-	u32 ctx_id = stream->specific_ctx_id;
+	u32 ctx_id = stream->ctx_ids[0];
 	bool periodic = stream->periodic;
 	u32 period_exponent = stream->period_exponent;
 	u32 report_format = stream->oa_buffer.format;
@@ -2624,7 +2673,7 @@ static void gen7_oa_enable(struct i915_perf_stream *stream)
 			    GEN7_OACONTROL_TIMER_PERIOD_SHIFT) |
 			   (periodic ? GEN7_OACONTROL_TIMER_ENABLE : 0) |
 			   (report_format << GEN7_OACONTROL_FORMAT_SHIFT) |
-			   (ctx ? GEN7_OACONTROL_PER_CTX_ENABLE : 0) |
+			   (stream->n_ctxs ? GEN7_OACONTROL_PER_CTX_ENABLE : 0) |
 			   GEN7_OACONTROL_ENABLE);
 }
 
@@ -2857,7 +2906,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	}
 
 	if (!(props->sample_flags & SAMPLE_OA_REPORT) &&
-	    (INTEL_GEN(perf->i915) < 12 || !stream->ctx)) {
+	    (INTEL_GEN(perf->i915) < 12 || !stream->n_ctxs)) {
 		DRM_DEBUG("Only OA report sampling supported\n");
 		return -EINVAL;
 	}
@@ -2905,12 +2954,10 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	if (stream->periodic)
 		stream->period_exponent = props->oa_period_exponent;
 
-	if (stream->ctx) {
-		ret = oa_get_render_ctx_id(stream);
-		if (ret) {
-			DRM_DEBUG("Invalid context id to filter with\n");
-			return ret;
-		}
+	ret = oa_get_render_ctx_ids(stream);
+	if (ret) {
+		DRM_DEBUG("Invalid context id to filter with\n");
+		return ret;
 	}
 
 	ret = alloc_noa_wait(stream);
@@ -2983,8 +3030,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	free_noa_wait(stream);
 
 err_noa_wait_alloc:
-	if (stream->ctx)
-		oa_put_render_ctx_id(stream);
+	oa_put_render_ctx_ids(stream);
 
 	return ret;
 }
@@ -3216,8 +3262,12 @@ static void i915_perf_enable_locked(struct i915_perf_stream *stream)
 	if (stream->ops->enable)
 		stream->ops->enable(stream);
 
-	if (stream->hold_preemption)
-		intel_context_set_nopreempt(stream->pinned_ctx);
+	if (stream->hold_preemption) {
+		int i;
+
+		for (i = 0; i < stream->n_ctxs; i++)
+			intel_context_set_nopreempt(stream->pinned_ctxs[i]);
+	}
 }
 
 /**
@@ -3242,8 +3292,12 @@ static void i915_perf_disable_locked(struct i915_perf_stream *stream)
 	/* Allow stream->ops->disable() to refer to this */
 	stream->enabled = false;
 
-	if (stream->hold_preemption)
-		intel_context_clear_nopreempt(stream->pinned_ctx);
+	if (stream->hold_preemption) {
+		int i;
+
+		for (i = 0; i < stream->n_ctxs; i++)
+			intel_context_clear_nopreempt(stream->pinned_ctxs[i]);
+	}
 
 	if (stream->ops->disable)
 		stream->ops->disable(stream);
@@ -3261,32 +3315,41 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
 		return -EINVAL;
 
 	if (config != stream->oa_config) {
+		struct intel_context *ce = stream->n_ctxs ?
+			stream->pinned_ctxs[0] : stream->engine->kernel_context;
+		int i;
+
 		active = i915_active_create();
 		if (!active) {
 			ret = -ENOMEM;
 			goto err_config;
 		}
 
-		/*
-		 * If OA is bound to a specific context, emit the
-		 * reconfiguration inline from that context. The update
-		 * will then be ordered with respect to submission on that
-		 * context.
-		 *
-		 * When set globally, we use a low priority kernel context,
-		 * so it will effectively take effect when idle.
-		 */
-		ret = emit_oa_config(stream, config,
-				     oa_context(stream),
-				     active,
-				     false /* global */);
+		for (i = 1; i < stream->n_ctxs; i++) {
+			/*
+			 * If OA is bound to a specific context, emit the
+			 * reconfiguration inline from that context. The
+			 * update will then be ordered with respect to
+			 * submission on that context.
+			 *
+			 * When set globally, we use a low priority kernel
+			 * context, so it will effectively take effect when
+			 * idle.
+			 */
+			ret = emit_oa_config(stream, config,
+					     stream->pinned_ctxs[i],
+					     active, false /* global */);
+			if (ret)
+				goto err_active;
+		}
+
+		ret = emit_oa_config(stream, config, ce,
+				     active, false /* global */);
 		if (ret)
 			goto err_active;
 
-		ret = emit_oa_config(stream, config,
-				     oa_context(stream),
-				     active,
-				     true /* global */);
+		ret = emit_oa_config(stream, config, ce,
+				     active, true /* global */);
 		if (ret)
 			goto err_active;
 
@@ -3375,9 +3438,12 @@ static void i915_perf_destroy_locked(struct i915_perf_stream *stream)
 	if (stream->ops->destroy)
 		stream->ops->destroy(stream);
 
-	if (stream->ctx)
-		i915_gem_context_put(stream->ctx);
+	while (stream->n_ctxs--)
+		i915_gem_context_put(stream->ctxs[stream->n_ctxs]);
 
+	kfree(stream->ctxs);
+	kfree(stream->pinned_ctxs);
+	kfree(stream->ctx_ids);
 	kfree(stream);
 }
 
@@ -3452,25 +3518,12 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 			    struct perf_open_properties *props,
 			    struct drm_file *file)
 {
-	struct i915_gem_context *specific_ctx = NULL;
+	struct drm_i915_file_private *file_priv = file->driver_priv;
 	struct i915_perf_stream *stream = NULL;
 	unsigned long f_flags = 0;
 	bool privileged_op = true;
 	int stream_fd;
-	int ret;
-
-	if (props->single_context) {
-		u32 ctx_handle = props->ctx_handle;
-		struct drm_i915_file_private *file_priv = file->driver_priv;
-
-		specific_ctx = i915_gem_context_lookup(file_priv, ctx_handle);
-		if (!specific_ctx) {
-			DRM_DEBUG("Failed to look up context with ID %u for opening perf stream\n",
-				  ctx_handle);
-			ret = -ENOENT;
-			goto err;
-		}
-	}
+	int i, ret;
 
 	/*
 	 * On Haswell the OA unit supports clock gating off for a specific
@@ -3491,17 +3544,16 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 	 * doesn't request global stream access (i.e. query based sampling
 	 * using MI_RECORD_PERF_COUNT.
 	 */
-	if (IS_HASWELL(perf->i915) && specific_ctx)
+	if (IS_HASWELL(perf->i915) && props->n_ctx_handles > 0)
 		privileged_op = false;
-	else if (IS_GEN(perf->i915, 12) && specific_ctx &&
+	else if (IS_GEN(perf->i915, 12) && (props->n_ctx_handles > 0) &&
 		 (props->sample_flags & SAMPLE_OA_REPORT) == 0)
 		privileged_op = false;
 
 	if (props->hold_preemption) {
-		if (!props->single_context) {
+		if (!props->n_ctx_handles) {
 			DRM_DEBUG("preemption disable with no context\n");
-			ret = -EINVAL;
-			goto err;
+			return -EINVAL;
 		}
 		privileged_op = true;
 	}
@@ -3522,23 +3574,57 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 	if (privileged_op &&
 	    i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
 		DRM_DEBUG("Insufficient privileges to open i915 perf stream\n");
-		ret = -EACCES;
-		goto err_ctx;
+		return -EACCES;
 	}
 
 	stream = kzalloc(sizeof(*stream), GFP_KERNEL);
-	if (!stream) {
-		ret = -ENOMEM;
-		goto err_ctx;
+	if (!stream)
+		return -ENOMEM;
+
+	if (props->n_ctx_handles) {
+		gfp_t alloc_flags = GFP_KERNEL | __GFP_ZERO;
+
+		stream->ctxs = kmalloc_array(props->n_ctx_handles,
+					     sizeof(*stream->ctxs),
+					     alloc_flags);
+		if (!stream->ctxs)
+			goto err_ctx;
+
+		stream->pinned_ctxs =
+			kmalloc_array(props->n_ctx_handles,
+				      sizeof(*stream->pinned_ctxs),
+				      alloc_flags);
+		if (!stream->pinned_ctxs)
+			goto err_ctx;
+
+		stream->ctx_ids =
+			kmalloc_array(props->n_ctx_handles,
+				      sizeof(*stream->ctx_ids),
+				      alloc_flags);
+		if (!stream->ctx_ids)
+			goto err_ctx;
 	}
 
 	stream->perf = perf;
-	stream->ctx = specific_ctx;
 	stream->poll_oa_period = props->poll_oa_period;
 
+	for (i = 0; i < props->n_ctx_handles; i++) {
+		stream->ctxs[i] = i915_gem_context_lookup(file_priv,
+							  props->ctx_handles[i]);
+		if (!stream->ctxs[i]) {
+			DRM_DEBUG("Failed to look up context with ID %u for opening perf stream\n",
+				  props->ctx_handles[i]);
+
+			ret = -ENOENT;
+			goto err_ctx;
+		}
+
+		stream->n_ctxs++;
+	}
+
 	ret = i915_oa_stream_init(stream, param, props);
 	if (ret)
-		goto err_alloc;
+		goto err_ctx;
 
 	/* we avoid simply assigning stream->sample_flags = props->sample_flags
 	 * to have _stream_init check the combination of sample flags more
@@ -3573,12 +3659,13 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 err_flags:
 	if (stream->ops->destroy)
 		stream->ops->destroy(stream);
-err_alloc:
-	kfree(stream);
 err_ctx:
-	if (specific_ctx)
-		i915_gem_context_put(specific_ctx);
-err:
+	while (stream->n_ctxs--)
+		i915_gem_context_put(stream->ctxs[stream->n_ctxs]);
+	kfree(stream->ctxs);
+	kfree(stream->pinned_ctxs);
+	kfree(stream->ctx_ids);
+	kfree(stream);
 	return ret;
 }
 
@@ -3610,7 +3697,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 {
 	u64 __user *uprop = uprops;
 	u32 i;
-	int ret;
+	int err;
 
 	memset(props, 0, sizeof(struct perf_open_properties));
 	props->poll_oa_period = DEFAULT_POLL_PERIOD_NS;
@@ -3644,23 +3731,34 @@ static int read_properties_unlocked(struct i915_perf *perf,
 		u64 oa_period, oa_freq_hz;
 		u64 id, value;
 
-		ret = get_user(id, uprop);
-		if (ret)
-			return ret;
+		err = get_user(id, uprop);
+		if (err)
+			goto error;
 
-		ret = get_user(value, uprop + 1);
-		if (ret)
-			return ret;
+		err = get_user(value, uprop + 1);
+		if (err)
+			goto error;
 
 		if (id == 0 || id >= DRM_I915_PERF_PROP_MAX) {
 			DRM_DEBUG("Unknown i915 perf property ID\n");
-			return -EINVAL;
+			err = -EINVAL;
+			goto error;
 		}
 
 		switch ((enum drm_i915_perf_property_id)id) {
 		case DRM_I915_PERF_PROP_CTX_HANDLE:
-			props->single_context = 1;
-			props->ctx_handle = value;
+			if (props->n_ctx_handles > 0) {
+				DRM_DEBUG("Context handle specified multiple times\n");
+				err = -EINVAL;
+				goto error;
+			}
+			props->ctx_handles = kmalloc_array(1, sizeof(*props->ctx_handles), GFP_KERNEL);
+			if (!props->ctx_handles) {
+				err = -ENOMEM;
+				goto error;
+			}
+			props->ctx_handles[0] = value;
+			props->n_ctx_handles = 1;
 			break;
 		case DRM_I915_PERF_PROP_SAMPLE_OA:
 			if (value)
@@ -3669,7 +3767,8 @@ static int read_properties_unlocked(struct i915_perf *perf,
 		case DRM_I915_PERF_PROP_OA_METRICS_SET:
 			if (value == 0) {
 				DRM_DEBUG("Unknown OA metric set ID\n");
-				return -EINVAL;
+				err = -EINVAL;
+				goto error;
 			}
 			props->metrics_set = value;
 			break;
@@ -3677,12 +3776,14 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			if (value == 0 || value >= I915_OA_FORMAT_MAX) {
 				DRM_DEBUG("Out-of-range OA report format %llu\n",
 					  value);
-				return -EINVAL;
+				err = -EINVAL;
+				goto error;
 			}
 			if (!perf->oa_formats[value].size) {
 				DRM_DEBUG("Unsupported OA report format %llu\n",
 					  value);
-				return -EINVAL;
+				err = -EINVAL;
+				goto error;
 			}
 			props->oa_format = value;
 			break;
@@ -3690,7 +3791,8 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			if (value > OA_EXPONENT_MAX) {
 				DRM_DEBUG("OA timer exponent too high (> %u)\n",
 					 OA_EXPONENT_MAX);
-				return -EINVAL;
+				err = -EINVAL;
+				goto error;
 			}
 
 			/* Theoretically we can program the OA unit to sample
@@ -3719,7 +3821,8 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			    !capable(CAP_SYS_ADMIN)) {
 				DRM_DEBUG("OA exponent would exceed the max sampling frequency (sysctl dev.i915.oa_max_sample_rate) %uHz without root privileges\n",
 					  i915_oa_max_sample_rate);
-				return -EACCES;
+				err = -EACCES;
+				goto error;
 			}
 
 			props->oa_periodic = true;
@@ -3735,13 +3838,14 @@ static int read_properties_unlocked(struct i915_perf *perf,
 					   u64_to_user_ptr(value),
 					   sizeof(user_sseu))) {
 				DRM_DEBUG("Unable to copy global sseu parameter\n");
-				return -EFAULT;
+				err = -EFAULT;
+				goto error;
 			}
 
-			ret = get_sseu_config(&props->sseu, props->engine, &user_sseu);
-			if (ret) {
+			err = get_sseu_config(&props->sseu, props->engine, &user_sseu);
+			if (err) {
 				DRM_DEBUG("Invalid SSEU configuration\n");
-				return ret;
+				goto error;
 			}
 			props->has_sseu = true;
 			break;
@@ -3750,19 +3854,25 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			if (value < 100000 /* 100us */) {
 				DRM_DEBUG("OA availability timer too small (%lluns < 100us)\n",
 					  value);
-				return -EINVAL;
+				err = -EINVAL;
+				goto error;
 			}
 			props->poll_oa_period = value;
 			break;
 		case DRM_I915_PERF_PROP_MAX:
 			MISSING_CASE(id);
-			return -EINVAL;
+			err = -EINVAL;
+			goto error;
 		}
 
 		uprop += 2;
 	}
 
 	return 0;
+
+error:
+	kfree(props->ctx_handles);
+	return err;
 }
 
 /**
@@ -3822,6 +3932,8 @@ int i915_perf_open_ioctl(struct drm_device *dev, void *data,
 	ret = i915_perf_open_ioctl_locked(perf, param, &props, file);
 	mutex_unlock(&perf->lock);
 
+	kfree(props.ctx_handles);
+
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index a36a455ae336..e010ae2d9d66 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -160,10 +160,15 @@ struct i915_perf_stream {
 	int sample_size;
 
 	/**
-	 * @ctx: %NULL if measuring system-wide across all contexts or a
-	 * specific context that is being monitored.
+	 * @n_ctxs: Number of contexts pinned for the recording.
 	 */
-	struct i915_gem_context *ctx;
+	u32 n_ctxs;
+
+	/**
+	 * @ctxs: All to %NULL if measuring system-wide across all contexts or
+	 * a list specific contexts that are being monitored.
+	 */
+	struct i915_gem_context **ctxs;
 
 	/**
 	 * @enabled: Whether the stream is currently enabled, considering
@@ -200,17 +205,17 @@ struct i915_perf_stream {
 	/**
 	 * @pinned_ctx: The OA context specific information.
 	 */
-	struct intel_context *pinned_ctx;
+	struct intel_context **pinned_ctxs;
 
 	/**
-	 * @specific_ctx_id: The id of the specific context.
+	 * @ctx_id: The ids of the specific contexts.
 	 */
-	u32 specific_ctx_id;
+	u32 *ctx_ids;
 
 	/**
-	 * @specific_ctx_id_mask: The mask used to masking specific_ctx_id bits.
+	 * @ctx_id_mask: The mask used to masking specific_ctx_id bits.
 	 */
-	u32 specific_ctx_id_mask;
+	u32 ctx_id_mask;
 
 	/**
 	 * @poll_check_timer: High resolution timer that will periodically
@@ -246,7 +251,7 @@ struct i915_perf_stream {
 	struct {
 		struct i915_vma *vma;
 		u8 *vaddr;
-		u32 last_ctx_id;
+		bool last_ctx_match;
 		int format;
 		int format_size;
 		int size_exponent;
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
