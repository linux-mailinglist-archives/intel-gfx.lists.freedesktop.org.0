Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB571C36F6
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 12:31:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A766E35F;
	Mon,  4 May 2020 10:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A415B6E362
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 10:31:52 +0000 (UTC)
IronPort-SDR: nfk9sfdiq20Ze2KJXlZZoZyGJjOjJG5CGDNmdyQJdCCg+Imsys/oPI3xy7GToCDIViYzjfILno
 EScq9uQtJFbQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 03:31:52 -0700
IronPort-SDR: 3A6xwoWIZbGUmJcPP0DuY/rRa7PCVeJZSXQZJOD6razgv2NEISKC1tROj+MLWgYG3KyVars6Ms
 988e5pUQuzxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,351,1583222400"; d="scan'208";a="369054453"
Received: from flast-mobl2.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.249.47.245])
 by fmsmga001.fm.intel.com with ESMTP; 04 May 2020 03:31:51 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 May 2020 13:31:44 +0300
Message-Id: <20200504103146.1359515-3-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200504103146.1359515-1-lionel.g.landwerlin@intel.com>
References: <20200504103146.1359515-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v11 2/4] drm/i915/perf: stop using the kernel
 context
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
Cc: chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris doesn't like that.

v2: Don't forget to configure the kernel so that periodic reports are
    written appropriately (Lionel)

v3: Keep the configuration context pinned for the lifecycle of
    i915_perf_stream (Chris)

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c       | 153 +++++++++++++++++--------
 drivers/gpu/drm/i915/i915_perf_types.h |  10 +-
 2 files changed, 113 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index c17696058c20..44148b705a5a 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1354,9 +1354,31 @@ free_noa_wait(struct i915_perf_stream *stream)
 	i915_vma_unpin_and_release(&stream->noa_wait, 0);
 }
 
+static int i915_perf_stream_sync(struct i915_perf_stream *stream,
+				 bool enable)
+{
+	struct i915_active *active;
+	int err = 0;
+
+	active = i915_active_create();
+	if (!active)
+		return -ENOMEM;
+
+	if (enable)
+		err = stream->perf->ops.enable_metric_set(stream, active);
+	else
+		stream->perf->ops.disable_metric_set(stream, active);
+	if (err == 0)
+		__i915_active_wait(active, TASK_UNINTERRUPTIBLE);
+
+	i915_active_put(active);
+	return err;
+}
+
 static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 {
 	struct i915_perf *perf = stream->perf;
+	int err;
 
 	BUG_ON(stream != perf->exclusive_stream);
 
@@ -1367,7 +1389,14 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 	 * See i915_oa_init_reg_state() and lrc_configure_all_contexts()
 	 */
 	WRITE_ONCE(perf->exclusive_stream, NULL);
-	perf->ops.disable_metric_set(stream);
+	err = i915_perf_stream_sync(stream, false /* enable */);
+	if (err) {
+		drm_err(&perf->i915->drm,
+			"Error while disabling OA stream\n");
+	}
+
+	intel_context_unpin(stream->config_context);
+	intel_context_put(stream->config_context);
 
 	free_oa_buffer(stream);
 
@@ -2011,11 +2040,6 @@ emit_oa_config(struct i915_perf_stream *stream,
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
@@ -2038,13 +2062,14 @@ hsw_enable_metric_set(struct i915_perf_stream *stream,
 			 0, GEN6_CSUNIT_CLOCK_GATE_DISABLE);
 
 	return emit_oa_config(stream, stream->oa_config,
-			      oa_context(stream),
+			      stream->config_context,
 			      active,
 			      BIT(I915_OA_CONFIG_PART_GLOBAL) |
 			      BIT(I915_OA_CONFIG_PART_PER_CONTEXT));
 }
 
-static void hsw_disable_metric_set(struct i915_perf_stream *stream)
+static void hsw_disable_metric_set(struct i915_perf_stream *stream,
+				   struct i915_active *active)
 {
 	struct intel_uncore *uncore = stream->uncore;
 
@@ -2169,13 +2194,14 @@ gen8_load_flex(struct i915_request *rq,
 	return 0;
 }
 
-static int gen8_modify_context(struct intel_context *ce,
+static int gen8_modify_context(struct i915_perf_stream *stream,
+			       struct intel_context *ce,
 			       const struct flex *flex, unsigned int count)
 {
 	struct i915_request *rq;
 	int err;
 
-	rq = intel_engine_create_kernel_request(ce->engine);
+	rq = intel_context_create_request(stream->config_context);
 	if (IS_ERR(rq))
 		return PTR_ERR(rq);
 
@@ -2217,7 +2243,8 @@ gen8_modify_self(struct intel_context *ce,
 	return err;
 }
 
-static int gen8_configure_context(struct i915_gem_context *ctx,
+static int gen8_configure_context(struct i915_perf_stream *stream,
+				  struct i915_gem_context *ctx,
 				  struct flex *flex, unsigned int count)
 {
 	struct i915_gem_engines_iter it;
@@ -2235,7 +2262,7 @@ static int gen8_configure_context(struct i915_gem_context *ctx,
 			continue;
 
 		flex->value = intel_sseu_make_rpcs(ctx->i915, &ce->sseu);
-		err = gen8_modify_context(ce, flex, count);
+		err = gen8_modify_context(stream, ce, flex, count);
 
 		intel_context_unpin(ce);
 		if (err)
@@ -2285,7 +2312,7 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
 	if (err)
 		return err;
 
-	err = gen8_modify_context(ce, regs_context, ARRAY_SIZE(regs_context));
+	err = gen8_modify_context(stream, ce, regs_context, ARRAY_SIZE(regs_context));
 	intel_context_unlock_pinned(ce);
 	if (err)
 		return err;
@@ -2328,6 +2355,7 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
 	struct drm_i915_private *i915 = stream->perf->i915;
 	struct intel_engine_cs *engine;
 	struct i915_gem_context *ctx, *cn;
+	struct intel_context *kernel_context;
 	int err;
 
 	lockdep_assert_held(&stream->perf->lock);
@@ -2355,7 +2383,7 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
 
 		spin_unlock(&i915->gem.contexts.lock);
 
-		err = gen8_configure_context(ctx, regs, num_regs);
+		err = gen8_configure_context(stream, ctx, regs, num_regs);
 		if (err) {
 			i915_gem_context_put(ctx);
 			return err;
@@ -2368,12 +2396,23 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
 	spin_unlock(&i915->gem.contexts.lock);
 
 	/*
-	 * After updating all other contexts, we need to modify ourselves.
-	 * If we don't modify the kernel_context, we do not get events while
-	 * idle.
+	 * Modify the kernel context has this is where we're parked, we want
+	 * the periodic ticking on idle to be consistent with what the perf
+	 * stream was configured with.
+	 */
+	kernel_context = stream->engine->kernel_context;
+	regs[0].value = intel_sseu_make_rpcs(i915, &kernel_context->sseu);
+	err = gen8_modify_context(stream, kernel_context, regs, num_regs);
+	if (err)
+		return err;
+
+	/*
+	 * After updating all other contexts, we need to modify ourselves. If
+	 * we don't modify the stream->perf_context, we do not get events
+	 * while idle.
 	 */
 	for_each_uabi_engine(engine, i915) {
-		struct intel_context *ce = engine->kernel_context;
+		struct intel_context *ce = stream->config_context;
 
 		if (engine->class != RENDER_CLASS)
 			continue;
@@ -2492,8 +2531,9 @@ gen8_enable_metric_set(struct i915_perf_stream *stream,
 	if (err)
 		return err;
 
-	return emit_oa_config(stream, oa_config,
-			      oa_context(stream),
+
+	return emit_oa_config(stream, stream->oa_config,
+			      stream->config_context,
 			      active,
 			      BIT(I915_OA_CONFIG_PART_GLOBAL) |
 			      BIT(I915_OA_CONFIG_PART_PER_CONTEXT));
@@ -2552,44 +2592,47 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 			return ret;
 	}
 
-	return emit_oa_config(stream, oa_config,
-			      oa_context(stream),
+	return emit_oa_config(stream, stream->oa_config,
+			      stream->config_context,
 			      active,
 			      BIT(I915_OA_CONFIG_PART_GLOBAL) |
 			      BIT(I915_OA_CONFIG_PART_PER_CONTEXT));
 }
 
-static void gen8_disable_metric_set(struct i915_perf_stream *stream)
+static void gen8_disable_metric_set(struct i915_perf_stream *stream,
+				    struct i915_active *active)
 {
 	struct intel_uncore *uncore = stream->uncore;
 
 	/* Reset all contexts' slices/subslices configurations. */
-	lrc_configure_all_contexts(stream, NULL, NULL);
+	lrc_configure_all_contexts(stream, NULL, active);
 
 	intel_uncore_rmw(uncore, GDT_CHICKEN_BITS, GT_NOA_ENABLE, 0);
 }
 
-static void gen10_disable_metric_set(struct i915_perf_stream *stream)
+static void gen10_disable_metric_set(struct i915_perf_stream *stream,
+				     struct i915_active *active)
 {
 	struct intel_uncore *uncore = stream->uncore;
 
 	/* Reset all contexts' slices/subslices configurations. */
-	lrc_configure_all_contexts(stream, NULL, NULL);
+	lrc_configure_all_contexts(stream, NULL, active);
 
 	/* Make sure we disable noa to save power. */
 	intel_uncore_rmw(uncore, RPM_CONFIG1, GEN10_GT_NOA_ENABLE, 0);
 }
 
-static void gen12_disable_metric_set(struct i915_perf_stream *stream)
+static void gen12_disable_metric_set(struct i915_perf_stream *stream,
+				     struct i915_active *active)
 {
 	struct intel_uncore *uncore = stream->uncore;
 
 	/* Reset all contexts' slices/subslices configurations. */
-	gen12_configure_all_contexts(stream, NULL, NULL);
+	gen12_configure_all_contexts(stream, NULL, active);
 
 	/* disable the context save/restore or OAR counters */
 	if (stream->ctx)
-		gen12_configure_oar_context(stream, NULL);
+		gen12_configure_oar_context(stream, active);
 
 	/* Make sure we disable noa to save power. */
 	intel_uncore_rmw(uncore, RPM_CONFIG1, GEN10_GT_NOA_ENABLE, 0);
@@ -2761,23 +2804,6 @@ static const struct i915_perf_stream_ops i915_oa_stream_ops = {
 	.read = i915_oa_read,
 };
 
-static int i915_perf_stream_enable_sync(struct i915_perf_stream *stream)
-{
-	struct i915_active *active;
-	int err;
-
-	active = i915_active_create();
-	if (!active)
-		return -ENOMEM;
-
-	err = stream->perf->ops.enable_metric_set(stream, active);
-	if (err == 0)
-		__i915_active_wait(active, TASK_UNINTERRUPTIBLE);
-
-	i915_active_put(active);
-	return err;
-}
-
 static void
 get_default_sseu_config(struct intel_sseu *out_sseu,
 			struct intel_engine_cs *engine)
@@ -2835,6 +2861,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 {
 	struct drm_i915_private *i915 = stream->perf->i915;
 	struct i915_perf *perf = stream->perf;
+	struct intel_timeline *timeline;
 	int format_size;
 	int ret;
 
@@ -2944,10 +2971,30 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 
 	stream->ops = &i915_oa_stream_ops;
 
+	timeline = intel_timeline_create(stream->engine->gt, NULL);
+	if (IS_ERR(timeline)) {
+		ret = PTR_ERR(timeline);
+		goto err_timeline;
+	}
+
+	stream->config_context = intel_context_create(stream->engine);
+	if (IS_ERR(stream->config_context)) {
+		intel_timeline_put(timeline);
+		ret = PTR_ERR(stream->config_context);
+		goto err_timeline;
+	}
+
+	stream->config_context->sseu = props->sseu;
+	stream->config_context->timeline = timeline;
+
+	ret = intel_context_pin(stream->config_context);
+	if (ret)
+		goto err_context_pin;
+
 	perf->sseu = props->sseu;
 	WRITE_ONCE(perf->exclusive_stream, stream);
 
-	ret = i915_perf_stream_enable_sync(stream);
+	ret = i915_perf_stream_sync(stream, true /* enable */);
 	if (ret) {
 		DRM_DEBUG("Unable to enable metric set\n");
 		goto err_enable;
@@ -2966,8 +3013,14 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 
 err_enable:
 	WRITE_ONCE(perf->exclusive_stream, NULL);
-	perf->ops.disable_metric_set(stream);
+	i915_perf_stream_sync(stream, false /* enable */);
 
+	intel_context_unpin(stream->config_context);
+
+err_context_pin:
+	intel_context_put(stream->config_context);
+
+err_timeline:
 	free_oa_buffer(stream);
 
 err_oa_buf_alloc:
@@ -3219,6 +3272,8 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
 		return -EINVAL;
 
 	if (config != stream->oa_config) {
+		struct intel_context *ce = stream->pinned_ctx ?: stream->config_context;
+
 		active = i915_active_create();
 		if (!active) {
 			ret = -ENOMEM;
@@ -3235,7 +3290,7 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
 		 * so it will effectively take effect when idle.
 		 */
 		ret = emit_oa_config(stream, config,
-				     oa_context(stream),
+				     ce,
 				     active,
 				     BIT(I915_OA_CONFIG_PART_GLOBAL) |
 				     BIT(I915_OA_CONFIG_PART_PER_CONTEXT));
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index a36a455ae336..a8b903592a39 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -16,6 +16,7 @@
 #include <linux/uuid.h>
 #include <linux/wait.h>
 
+#include "gt/intel_context_types.h"
 #include "gt/intel_sseu.h"
 #include "i915_reg.h"
 #include "intel_wakeref.h"
@@ -311,6 +312,12 @@ struct i915_perf_stream {
 	 * buffer should be checked for available data.
 	 */
 	u64 poll_oa_period;
+
+	/**
+	 * @config_context: A logical context for use by the perf stream for
+	 * configuring the HW.
+	 */
+	struct intel_context *config_context;
 };
 
 /**
@@ -348,7 +355,8 @@ struct i915_oa_ops {
 	 * @disable_metric_set: Remove system constraints associated with using
 	 * the OA unit.
 	 */
-	void (*disable_metric_set)(struct i915_perf_stream *stream);
+	void (*disable_metric_set)(struct i915_perf_stream *stream,
+				   struct i915_active *active);
 
 	/**
 	 * @oa_enable: Enable periodic sampling
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
