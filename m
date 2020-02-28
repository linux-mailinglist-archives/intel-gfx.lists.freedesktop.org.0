Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5411732CF
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 09:24:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A19A06EE62;
	Fri, 28 Feb 2020 08:24:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE8056EE59
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 08:23:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20380876-1500050 
 for multiple; Fri, 28 Feb 2020 08:23:34 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2020 08:23:14 +0000
Message-Id: <20200228082330.2411941-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200228082330.2411941-1-chris@chris-wilson.co.uk>
References: <20200228082330.2411941-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/24] drm/i915/perf: Schedule oa_config after
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
 drivers/gpu/drm/i915/display/intel_overlay.c  |   8 +-
 drivers/gpu/drm/i915/gt/intel_context_param.c |   2 +-
 drivers/gpu/drm/i915/i915_active.c            |   6 +-
 drivers/gpu/drm/i915/i915_active.h            |   2 +-
 drivers/gpu/drm/i915/i915_perf.c              | 154 +++++++++++-------
 drivers/gpu/drm/i915/i915_perf_types.h        |   5 +-
 drivers/gpu/drm/i915/i915_vma.h               |   2 +-
 drivers/gpu/drm/i915/selftests/i915_active.c  |   4 +-
 8 files changed, 115 insertions(+), 68 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 3b0cb3534e2a..733dcfc28a05 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -272,7 +272,7 @@ static int intel_overlay_on(struct intel_overlay *overlay)
 
 	i915_request_add(rq);
 
-	return i915_active_wait(&overlay->last_flip);
+	return i915_active_wait(&overlay->last_flip, TASK_INTERRUPTIBLE);
 }
 
 static void intel_overlay_flip_prepare(struct intel_overlay *overlay,
@@ -429,14 +429,14 @@ static int intel_overlay_off(struct intel_overlay *overlay)
 	intel_overlay_flip_prepare(overlay, NULL);
 	i915_request_add(rq);
 
-	return i915_active_wait(&overlay->last_flip);
+	return i915_active_wait(&overlay->last_flip, TASK_INTERRUPTIBLE);
 }
 
 /* recover from an interruption due to a signal
  * We have to be careful not to repeat work forever an make forward progess. */
 static int intel_overlay_recover_from_interrupt(struct intel_overlay *overlay)
 {
-	return i915_active_wait(&overlay->last_flip);
+	return i915_active_wait(&overlay->last_flip, TASK_INTERRUPTIBLE);
 }
 
 /* Wait for pending overlay flip and release old frame.
@@ -477,7 +477,7 @@ static int intel_overlay_release_old_vid(struct intel_overlay *overlay)
 
 	i915_request_add(rq);
 
-	return i915_active_wait(&overlay->last_flip);
+	return i915_active_wait(&overlay->last_flip, TASK_INTERRUPTIBLE);
 }
 
 void intel_overlay_reset(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/gt/intel_context_param.c b/drivers/gpu/drm/i915/gt/intel_context_param.c
index 65dcd090245d..903cce8c23c4 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_param.c
+++ b/drivers/gpu/drm/i915/gt/intel_context_param.c
@@ -15,7 +15,7 @@ int intel_context_set_ring_size(struct intel_context *ce, long sz)
 	if (intel_context_lock_pinned(ce))
 		return -EINTR;
 
-	err = i915_active_wait(&ce->active);
+	err = i915_active_wait(&ce->active, TASK_INTERRUPTIBLE);
 	if (err < 0)
 		goto unlock;
 
diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 8904b58c3039..97cb195de86d 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -496,7 +496,7 @@ static int flush_lazy_signals(struct i915_active *ref)
 	return err;
 }
 
-int i915_active_wait(struct i915_active *ref)
+int i915_active_wait(struct i915_active *ref, int state)
 {
 	int err;
 
@@ -511,7 +511,9 @@ int i915_active_wait(struct i915_active *ref)
 	if (err)
 		return err;
 
-	if (wait_var_event_interruptible(ref, i915_active_is_idle(ref)))
+	if (!i915_active_is_idle(ref) &&
+	    ___wait_var_event(ref, i915_active_is_idle(ref),
+			      state, 0, 0, schedule()))
 		return -EINTR;
 
 	flush_work(&ref->work);
diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
index e3c13060c4c7..69b5f7a76488 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -181,7 +181,7 @@ static inline bool i915_active_has_exclusive(struct i915_active *ref)
 	return rcu_access_pointer(ref->excl.fence);
 }
 
-int i915_active_wait(struct i915_active *ref);
+int i915_active_wait(struct i915_active *ref, int state);
 
 int i915_request_await_active(struct i915_request *rq,
 			      struct i915_active *ref,
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 1b074bb4a7fe..214e72670738 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1972,10 +1972,11 @@ get_oa_vma(struct i915_perf_stream *stream, struct i915_oa_config *oa_config)
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
@@ -1983,7 +1984,7 @@ emit_oa_config(struct i915_perf_stream *stream,
 
 	vma = get_oa_vma(stream, oa_config);
 	if (IS_ERR(vma))
-		return ERR_CAST(vma);
+		return PTR_ERR(vma);
 
 	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
 	if (err)
@@ -1997,6 +1998,18 @@ emit_oa_config(struct i915_perf_stream *stream,
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
@@ -2011,14 +2024,13 @@ emit_oa_config(struct i915_perf_stream *stream,
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
@@ -2026,8 +2038,9 @@ static struct intel_context *oa_context(struct i915_perf_stream *stream)
 	return stream->pinned_ctx ?: stream->engine->kernel_context;
 }
 
-static struct i915_request *
-hsw_enable_metric_set(struct i915_perf_stream *stream)
+static int
+hsw_enable_metric_set(struct i915_perf_stream *stream,
+		      struct i915_active *active)
 {
 	struct intel_uncore *uncore = stream->uncore;
 
@@ -2046,7 +2059,9 @@ hsw_enable_metric_set(struct i915_perf_stream *stream)
 	intel_uncore_rmw(uncore, GEN6_UCGCTL1,
 			 0, GEN6_CSUNIT_CLOCK_GATE_DISABLE);
 
-	return emit_oa_config(stream, stream->oa_config, oa_context(stream));
+	return emit_oa_config(stream,
+			      stream->oa_config, oa_context(stream),
+			      active);
 }
 
 static void hsw_disable_metric_set(struct i915_perf_stream *stream)
@@ -2196,8 +2211,10 @@ static int gen8_modify_context(struct intel_context *ce,
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
@@ -2208,8 +2225,17 @@ static int gen8_modify_self(struct intel_context *ce,
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
@@ -2243,7 +2269,8 @@ static int gen8_configure_context(struct i915_gem_context *ctx,
 	return err;
 }
 
-static int gen12_configure_oar_context(struct i915_perf_stream *stream, bool enable)
+static int gen12_configure_oar_context(struct i915_perf_stream *stream,
+				       struct i915_active *active)
 {
 	int err;
 	struct intel_context *ce = stream->pinned_ctx;
@@ -2252,7 +2279,7 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream, bool ena
 		{
 			GEN8_OACTXCONTROL,
 			stream->perf->ctx_oactxctrl_offset + 1,
-			enable ? GEN8_OA_COUNTER_RESUME : 0,
+			active ? GEN8_OA_COUNTER_RESUME : 0,
 		},
 	};
 	/* Offsets in regs_lri are not used since this configuration is only
@@ -2264,13 +2291,13 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream, bool ena
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
@@ -2287,7 +2314,7 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream, bool ena
 		return err;
 
 	/* Apply regs_lri using LRI with pinned context */
-	return gen8_modify_self(ce, regs_lri, ARRAY_SIZE(regs_lri));
+	return gen8_modify_self(ce, regs_lri, ARRAY_SIZE(regs_lri), active);
 }
 
 /*
@@ -2315,9 +2342,11 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream, bool ena
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
@@ -2374,7 +2403,7 @@ static int oa_configure_all_contexts(struct i915_perf_stream *stream,
 
 		regs[0].value = intel_sseu_make_rpcs(i915, &ce->sseu);
 
-		err = gen8_modify_self(ce, regs, num_regs);
+		err = gen8_modify_self(ce, regs, num_regs, active);
 		if (err)
 			return err;
 	}
@@ -2382,8 +2411,10 @@ static int oa_configure_all_contexts(struct i915_perf_stream *stream,
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
@@ -2392,11 +2423,15 @@ static int gen12_configure_all_contexts(struct i915_perf_stream *stream,
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
@@ -2429,11 +2464,14 @@ static int lrc_configure_all_contexts(struct i915_perf_stream *stream,
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
@@ -2473,11 +2511,13 @@ gen8_enable_metric_set(struct i915_perf_stream *stream)
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
@@ -2487,8 +2527,9 @@ static u32 oag_report_ctx_switches(const struct i915_perf_stream *stream)
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
@@ -2517,9 +2558,9 @@ gen12_enable_metric_set(struct i915_perf_stream *stream)
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
@@ -2527,12 +2568,14 @@ gen12_enable_metric_set(struct i915_perf_stream *stream)
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
@@ -2540,7 +2583,7 @@ static void gen8_disable_metric_set(struct i915_perf_stream *stream)
 	struct intel_uncore *uncore = stream->uncore;
 
 	/* Reset all contexts' slices/subslices configurations. */
-	lrc_configure_all_contexts(stream, NULL);
+	lrc_configure_all_contexts(stream, NULL, NULL);
 
 	intel_uncore_rmw(uncore, GDT_CHICKEN_BITS, GT_NOA_ENABLE, 0);
 }
@@ -2550,7 +2593,7 @@ static void gen10_disable_metric_set(struct i915_perf_stream *stream)
 	struct intel_uncore *uncore = stream->uncore;
 
 	/* Reset all contexts' slices/subslices configurations. */
-	lrc_configure_all_contexts(stream, NULL);
+	lrc_configure_all_contexts(stream, NULL, NULL);
 
 	/* Make sure we disable noa to save power. */
 	intel_uncore_rmw(uncore, RPM_CONFIG1, GEN10_GT_NOA_ENABLE, 0);
@@ -2561,11 +2604,11 @@ static void gen12_disable_metric_set(struct i915_perf_stream *stream)
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
@@ -2729,16 +2772,19 @@ static const struct i915_perf_stream_ops i915_oa_stream_ops = {
 
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
+		i915_active_wait(active, TASK_UNINTERRUPTIBLE);
 
-	return 0;
+	i915_active_put(active);
+	return err;
 }
 
 /**
@@ -3192,7 +3238,7 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
 		return -EINVAL;
 
 	if (config != stream->oa_config) {
-		struct i915_request *rq;
+		int err;
 
 		/*
 		 * If OA is bound to a specific context, emit the
@@ -3203,13 +3249,11 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
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
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index e1ced1df13e1..3baa98fa5009 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -380,7 +380,7 @@ int i915_vma_wait_for_bind(struct i915_vma *vma);
 static inline int i915_vma_sync(struct i915_vma *vma)
 {
 	/* Wait for the asynchronous bindings and pending GPU reads */
-	return i915_active_wait(&vma->active);
+	return i915_active_wait(&vma->active, TASK_INTERRUPTIBLE);
 }
 
 #endif
diff --git a/drivers/gpu/drm/i915/selftests/i915_active.c b/drivers/gpu/drm/i915/selftests/i915_active.c
index 067e30b8927f..035816eccbda 100644
--- a/drivers/gpu/drm/i915/selftests/i915_active.c
+++ b/drivers/gpu/drm/i915/selftests/i915_active.c
@@ -153,7 +153,7 @@ static int live_active_wait(void *arg)
 	if (IS_ERR(active))
 		return PTR_ERR(active);
 
-	i915_active_wait(&active->base);
+	i915_active_wait(&active->base, TASK_UNINTERRUPTIBLE);
 	if (!READ_ONCE(active->retired)) {
 		struct drm_printer p = drm_err_printer(__func__);
 
@@ -230,7 +230,7 @@ static int live_active_barrier(void *arg)
 	i915_active_release(&active->base);
 
 	if (err == 0)
-		err = i915_active_wait(&active->base);
+		err = i915_active_wait(&active->base, TASK_UNINTERRUPTIBLE);
 
 	if (err == 0 && !READ_ONCE(active->retired)) {
 		pr_err("i915_active not retired after flushing barriers!\n");
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
