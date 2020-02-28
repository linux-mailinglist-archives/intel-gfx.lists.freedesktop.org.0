Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 974C0172D82
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 01:40:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D40CF6EDA3;
	Fri, 28 Feb 2020 00:40:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 157146EDA3
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 00:40:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20378272-1500050 
 for multiple; Fri, 28 Feb 2020 00:40:00 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2020 00:39:58 +0000
Message-Id: <20200228003958.2347965-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200228003958.2347965-1-chris@chris-wilson.co.uk>
References: <20200228003958.2347965-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/perf: Schedule oa_config after
 modifying the contexts
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

We wish that the scheduler emit the context modification commands prior
to enabling the oa_config, for which we must explicitly inform it of the
ordering constraints. This is especially important as we now wait for
the final oa_config setup to be completed and as this wait may be on a
distinct context to the state modifications, we need that command packet
to be always last in the queue.

We borrow the i915_active for its ability to track multiple timelines
and the last dma_fence on each; a flexible dma_resv. Keeping track of
each dma_fence is important for us so that we can efficiently schedule
the requests and reprioritise as required.

Reported-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c       | 154 ++++++++++++++++---------
 drivers/gpu/drm/i915/i915_perf_types.h |   5 +-
 2 files changed, 102 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 79391d92ab7e..7a1ccf61f8fa 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1970,10 +1970,11 @@ get_oa_vma(struct i915_perf_stream *stream, struct i915_oa_config *oa_config)
 	return i915_vma_get(oa_bo->vma);
 }
 
-static struct i915_request *
+static int
 emit_oa_config(struct i915_perf_stream *stream,
 	       struct i915_oa_config *oa_config,
-	       struct intel_context *ce)
+	       struct intel_context *ce,
+	       struct i915_active *active)
 {
 	struct i915_request *rq;
 	struct i915_vma *vma;
@@ -1981,7 +1982,7 @@ emit_oa_config(struct i915_perf_stream *stream,
 
 	vma = get_oa_vma(stream, oa_config);
 	if (IS_ERR(vma))
-		return ERR_CAST(vma);
+		return PTR_ERR(vma);
 
 	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
 	if (err)
@@ -1995,6 +1996,18 @@ emit_oa_config(struct i915_perf_stream *stream,
 		goto err_vma_unpin;
 	}
 
+	if (!IS_ERR_OR_NULL(active)) {
+		/* After all individual context modifications */
+		err = i915_request_await_active(rq, active,
+						I915_ACTIVE_AWAIT_ALL);
+		if (err)
+			goto err_add_request;
+
+		err = i915_active_add_request(active, rq);
+		if (err)
+			goto err_add_request;
+	}
+
 	i915_vma_lock(vma);
 	err = i915_request_await_object(rq, vma->obj, 0);
 	if (!err)
@@ -2009,14 +2022,13 @@ emit_oa_config(struct i915_perf_stream *stream,
 	if (err)
 		goto err_add_request;
 
-	i915_request_get(rq);
 err_add_request:
 	i915_request_add(rq);
 err_vma_unpin:
 	i915_vma_unpin(vma);
 err_vma_put:
 	i915_vma_put(vma);
-	return err ? ERR_PTR(err) : rq;
+	return err;
 }
 
 static struct intel_context *oa_context(struct i915_perf_stream *stream)
@@ -2024,8 +2036,9 @@ static struct intel_context *oa_context(struct i915_perf_stream *stream)
 	return stream->pinned_ctx ?: stream->engine->kernel_context;
 }
 
-static struct i915_request *
-hsw_enable_metric_set(struct i915_perf_stream *stream)
+static int
+hsw_enable_metric_set(struct i915_perf_stream *stream,
+		      struct i915_active *active)
 {
 	struct intel_uncore *uncore = stream->uncore;
 
@@ -2044,7 +2057,9 @@ hsw_enable_metric_set(struct i915_perf_stream *stream)
 	intel_uncore_rmw(uncore, GEN6_UCGCTL1,
 			 0, GEN6_CSUNIT_CLOCK_GATE_DISABLE);
 
-	return emit_oa_config(stream, stream->oa_config, oa_context(stream));
+	return emit_oa_config(stream,
+			      stream->oa_config, oa_context(stream),
+			      active);
 }
 
 static void hsw_disable_metric_set(struct i915_perf_stream *stream)
@@ -2194,8 +2209,10 @@ static int gen8_modify_context(struct intel_context *ce,
 	return err;
 }
 
-static int gen8_modify_self(struct intel_context *ce,
-			    const struct flex *flex, unsigned int count)
+static int
+gen8_modify_self(struct intel_context *ce,
+		 const struct flex *flex, unsigned int count,
+		 struct i915_active *active)
 {
 	struct i915_request *rq;
 	int err;
@@ -2204,8 +2221,17 @@ static int gen8_modify_self(struct intel_context *ce,
 	if (IS_ERR(rq))
 		return PTR_ERR(rq);
 
+	if (!IS_ERR_OR_NULL(active)) {
+		err = i915_active_add_request(active, rq);
+		if (err)
+			goto err_add_request;
+	}
+
 	err = gen8_load_flex(rq, ce, flex, count);
+	if (err)
+		goto err_add_request;
 
+err_add_request:
 	i915_request_add(rq);
 	return err;
 }
@@ -2239,7 +2265,8 @@ static int gen8_configure_context(struct i915_gem_context *ctx,
 	return err;
 }
 
-static int gen12_configure_oar_context(struct i915_perf_stream *stream, bool enable)
+static int gen12_configure_oar_context(struct i915_perf_stream *stream,
+				       struct i915_active *active)
 {
 	int err;
 	struct intel_context *ce = stream->pinned_ctx;
@@ -2248,7 +2275,7 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream, bool ena
 		{
 			GEN8_OACTXCONTROL,
 			stream->perf->ctx_oactxctrl_offset + 1,
-			enable ? GEN8_OA_COUNTER_RESUME : 0,
+			active ? GEN8_OA_COUNTER_RESUME : 0,
 		},
 	};
 	/* Offsets in regs_lri are not used since this configuration is only
@@ -2260,13 +2287,13 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream, bool ena
 			GEN12_OAR_OACONTROL,
 			GEN12_OAR_OACONTROL_OFFSET + 1,
 			(format << GEN12_OAR_OACONTROL_COUNTER_FORMAT_SHIFT) |
-			(enable ? GEN12_OAR_OACONTROL_COUNTER_ENABLE : 0)
+			(active ? GEN12_OAR_OACONTROL_COUNTER_ENABLE : 0)
 		},
 		{
 			RING_CONTEXT_CONTROL(ce->engine->mmio_base),
 			CTX_CONTEXT_CONTROL,
 			_MASKED_FIELD(GEN12_CTX_CTRL_OAR_CONTEXT_ENABLE,
-				      enable ?
+				      active ?
 				      GEN12_CTX_CTRL_OAR_CONTEXT_ENABLE :
 				      0)
 		},
@@ -2283,7 +2310,7 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream, bool ena
 		return err;
 
 	/* Apply regs_lri using LRI with pinned context */
-	return gen8_modify_self(ce, regs_lri, ARRAY_SIZE(regs_lri));
+	return gen8_modify_self(ce, regs_lri, ARRAY_SIZE(regs_lri), active);
 }
 
 /*
@@ -2311,9 +2338,11 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream, bool ena
  * Note: it's only the RCS/Render context that has any OA state.
  * Note: the first flex register passed must always be R_PWR_CLK_STATE
  */
-static int oa_configure_all_contexts(struct i915_perf_stream *stream,
-				     struct flex *regs,
-				     size_t num_regs)
+static int
+oa_configure_all_contexts(struct i915_perf_stream *stream,
+			  struct flex *regs,
+			  size_t num_regs,
+			  struct i915_active *active)
 {
 	struct drm_i915_private *i915 = stream->perf->i915;
 	struct intel_engine_cs *engine;
@@ -2370,7 +2399,7 @@ static int oa_configure_all_contexts(struct i915_perf_stream *stream,
 
 		regs[0].value = intel_sseu_make_rpcs(i915, &ce->sseu);
 
-		err = gen8_modify_self(ce, regs, num_regs);
+		err = gen8_modify_self(ce, regs, num_regs, active);
 		if (err)
 			return err;
 	}
@@ -2378,8 +2407,10 @@ static int oa_configure_all_contexts(struct i915_perf_stream *stream,
 	return 0;
 }
 
-static int gen12_configure_all_contexts(struct i915_perf_stream *stream,
-					const struct i915_oa_config *oa_config)
+static int
+gen12_configure_all_contexts(struct i915_perf_stream *stream,
+			     const struct i915_oa_config *oa_config,
+			     struct i915_active *active)
 {
 	struct flex regs[] = {
 		{
@@ -2388,11 +2419,15 @@ static int gen12_configure_all_contexts(struct i915_perf_stream *stream,
 		},
 	};
 
-	return oa_configure_all_contexts(stream, regs, ARRAY_SIZE(regs));
+	return oa_configure_all_contexts(stream,
+					 regs, ARRAY_SIZE(regs),
+					 active);
 }
 
-static int lrc_configure_all_contexts(struct i915_perf_stream *stream,
-				      const struct i915_oa_config *oa_config)
+static int
+lrc_configure_all_contexts(struct i915_perf_stream *stream,
+			   const struct i915_oa_config *oa_config,
+			   struct i915_active *active)
 {
 	/* The MMIO offsets for Flex EU registers aren't contiguous */
 	const u32 ctx_flexeu0 = stream->perf->ctx_flexeu0_offset;
@@ -2425,11 +2460,14 @@ static int lrc_configure_all_contexts(struct i915_perf_stream *stream,
 	for (i = 2; i < ARRAY_SIZE(regs); i++)
 		regs[i].value = oa_config_flex_reg(oa_config, regs[i].reg);
 
-	return oa_configure_all_contexts(stream, regs, ARRAY_SIZE(regs));
+	return oa_configure_all_contexts(stream,
+					 regs, ARRAY_SIZE(regs),
+					 active);
 }
 
-static struct i915_request *
-gen8_enable_metric_set(struct i915_perf_stream *stream)
+static int
+gen8_enable_metric_set(struct i915_perf_stream *stream,
+		       struct i915_active *active)
 {
 	struct intel_uncore *uncore = stream->uncore;
 	struct i915_oa_config *oa_config = stream->oa_config;
@@ -2469,11 +2507,13 @@ gen8_enable_metric_set(struct i915_perf_stream *stream)
 	 * to make sure all slices/subslices are ON before writing to NOA
 	 * registers.
 	 */
-	ret = lrc_configure_all_contexts(stream, oa_config);
+	ret = lrc_configure_all_contexts(stream, oa_config, active);
 	if (ret)
-		return ERR_PTR(ret);
+		return ret;
 
-	return emit_oa_config(stream, oa_config, oa_context(stream));
+	return emit_oa_config(stream,
+			      stream->oa_config, oa_context(stream),
+			      active);
 }
 
 static u32 oag_report_ctx_switches(const struct i915_perf_stream *stream)
@@ -2483,8 +2523,9 @@ static u32 oag_report_ctx_switches(const struct i915_perf_stream *stream)
 			     0 : GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS);
 }
 
-static struct i915_request *
-gen12_enable_metric_set(struct i915_perf_stream *stream)
+static int
+gen12_enable_metric_set(struct i915_perf_stream *stream,
+			struct i915_active *active)
 {
 	struct intel_uncore *uncore = stream->uncore;
 	struct i915_oa_config *oa_config = stream->oa_config;
@@ -2513,9 +2554,9 @@ gen12_enable_metric_set(struct i915_perf_stream *stream)
 	 * to make sure all slices/subslices are ON before writing to NOA
 	 * registers.
 	 */
-	ret = gen12_configure_all_contexts(stream, oa_config);
+	ret = gen12_configure_all_contexts(stream, oa_config, active);
 	if (ret)
-		return ERR_PTR(ret);
+		return ret;
 
 	/*
 	 * For Gen12, performance counters are context
@@ -2523,12 +2564,14 @@ gen12_enable_metric_set(struct i915_perf_stream *stream)
 	 * requested this.
 	 */
 	if (stream->ctx) {
-		ret = gen12_configure_oar_context(stream, true);
+		ret = gen12_configure_oar_context(stream, active);
 		if (ret)
-			return ERR_PTR(ret);
+			return ret;
 	}
 
-	return emit_oa_config(stream, oa_config, oa_context(stream));
+	return emit_oa_config(stream,
+			      stream->oa_config, oa_context(stream),
+			      active);
 }
 
 static void gen8_disable_metric_set(struct i915_perf_stream *stream)
@@ -2536,7 +2579,7 @@ static void gen8_disable_metric_set(struct i915_perf_stream *stream)
 	struct intel_uncore *uncore = stream->uncore;
 
 	/* Reset all contexts' slices/subslices configurations. */
-	lrc_configure_all_contexts(stream, NULL);
+	lrc_configure_all_contexts(stream, NULL, NULL);
 
 	intel_uncore_rmw(uncore, GDT_CHICKEN_BITS, GT_NOA_ENABLE, 0);
 }
@@ -2546,7 +2589,7 @@ static void gen10_disable_metric_set(struct i915_perf_stream *stream)
 	struct intel_uncore *uncore = stream->uncore;
 
 	/* Reset all contexts' slices/subslices configurations. */
-	lrc_configure_all_contexts(stream, NULL);
+	lrc_configure_all_contexts(stream, NULL, NULL);
 
 	/* Make sure we disable noa to save power. */
 	intel_uncore_rmw(uncore, RPM_CONFIG1, GEN10_GT_NOA_ENABLE, 0);
@@ -2557,11 +2600,11 @@ static void gen12_disable_metric_set(struct i915_perf_stream *stream)
 	struct intel_uncore *uncore = stream->uncore;
 
 	/* Reset all contexts' slices/subslices configurations. */
-	gen12_configure_all_contexts(stream, NULL);
+	gen12_configure_all_contexts(stream, NULL, NULL);
 
 	/* disable the context save/restore or OAR counters */
 	if (stream->ctx)
-		gen12_configure_oar_context(stream, false);
+		gen12_configure_oar_context(stream, NULL);
 
 	/* Make sure we disable noa to save power. */
 	intel_uncore_rmw(uncore, RPM_CONFIG1, GEN10_GT_NOA_ENABLE, 0);
@@ -2725,16 +2768,19 @@ static const struct i915_perf_stream_ops i915_oa_stream_ops = {
 
 static int i915_perf_stream_enable_sync(struct i915_perf_stream *stream)
 {
-	struct i915_request *rq;
+	struct i915_active *active;
+	int err;
 
-	rq = stream->perf->ops.enable_metric_set(stream);
-	if (IS_ERR(rq))
-		return PTR_ERR(rq);
+	active = i915_active_create();
+	if (!active)
+		return -ENOMEM;
 
-	i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
-	i915_request_put(rq);
+	err = stream->perf->ops.enable_metric_set(stream, active);
+	if (err == 0)
+		i915_active_wait(active);
 
-	return 0;
+	i915_active_put(active);
+	return err;
 }
 
 /**
@@ -3189,7 +3235,7 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
 		return -EINVAL;
 
 	if (config != stream->oa_config) {
-		struct i915_request *rq;
+		int err;
 
 		/*
 		 * If OA is bound to a specific context, emit the
@@ -3200,13 +3246,11 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
 		 * When set globally, we use a low priority kernel context,
 		 * so it will effectively take effect when idle.
 		 */
-		rq = emit_oa_config(stream, config, oa_context(stream));
-		if (!IS_ERR(rq)) {
+		err = emit_oa_config(stream, config, oa_context(stream), NULL);
+		if (!err)
 			config = xchg(&stream->oa_config, config);
-			i915_request_put(rq);
-		} else {
-			ret = PTR_ERR(rq);
-		}
+		else
+			ret = err;
 	}
 
 	i915_oa_config_put(config);
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index a0e22f00f6cf..5eaf874a0d25 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -21,6 +21,7 @@
 
 struct drm_i915_private;
 struct file;
+struct i915_active;
 struct i915_gem_context;
 struct i915_perf;
 struct i915_vma;
@@ -339,8 +340,8 @@ struct i915_oa_ops {
 	 * counter reports being sampled. May apply system constraints such as
 	 * disabling EU clock gating as required.
 	 */
-	struct i915_request *
-		(*enable_metric_set)(struct i915_perf_stream *stream);
+	int (*enable_metric_set)(struct i915_perf_stream *stream,
+				 struct i915_active *active);
 
 	/**
 	 * @disable_metric_set: Remove system constraints associated with using
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
