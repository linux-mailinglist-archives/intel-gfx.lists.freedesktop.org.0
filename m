Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8221995AF
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 13:48:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D44476E81C;
	Tue, 31 Mar 2020 11:48:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF4B76E81C
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 11:48:26 +0000 (UTC)
IronPort-SDR: 0oxQHKIHTPpBgm0bnUvwvvLpX2qnMqO1SJ/dKKhHAp8VnhPrTYU9mhEEsA1hNEByZpQQduKYKM
 eK3Ozq/J080w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 04:48:26 -0700
IronPort-SDR: KTz+WgAvxLtPu7PyO8T6mZumhrEPasEkgqSwttbmNqYd0FVn7mVVnzpz/ayZldM6hW2ZmzrB0A
 O4nJj6gupTiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; d="scan'208";a="241890750"
Received: from dpohl-mobl.amr.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.252.59.74])
 by fmsmga008.fm.intel.com with ESMTP; 31 Mar 2020 04:48:24 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 14:48:19 +0300
Message-Id: <20200331114821.81957-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915/perf: break OA config buffer
 object in 2
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

We want to enable performance monitoring on multiple contexts to cover
the Iris use case of using 2 GEM contexts (3D & compute).

So start by breaking the OA configuration BO which contains global &
per context register writes.

NOA muxes & OA configurations are global, while FLEXEU register
configurations are per context.

v2: Use an offset into the same VMA (Chris)

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 176 ++++++++++++++++++++-----------
 1 file changed, 116 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index ae935b1b1ae3..8b28afb0526e 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -372,6 +372,7 @@ struct i915_oa_config_bo {
 
 	struct i915_oa_config *oa_config;
 	struct i915_vma *vma;
+	uint32_t per_context_offset;
 };
 
 static struct ctl_table_header *sysctl_header;
@@ -1828,37 +1829,43 @@ static struct i915_oa_config_bo *
 alloc_oa_config_buffer(struct i915_perf_stream *stream,
 		       struct i915_oa_config *oa_config)
 {
-	struct drm_i915_gem_object *obj;
 	struct i915_oa_config_bo *oa_bo;
+	struct drm_i915_gem_object *obj;
 	size_t config_length = 0;
-	u32 *cs;
+	u32 *cs_start, *cs;
 	int err;
 
 	oa_bo = kzalloc(sizeof(*oa_bo), GFP_KERNEL);
 	if (!oa_bo)
 		return ERR_PTR(-ENOMEM);
 
+	/*
+	 * Global configuration requires a jump into the NOA wait BO for it to
+	 * apply.
+	 */
 	config_length += num_lri_dwords(oa_config->mux_regs_len);
 	config_length += num_lri_dwords(oa_config->b_counter_regs_len);
-	config_length += num_lri_dwords(oa_config->flex_regs_len);
 	config_length += 3; /* MI_BATCH_BUFFER_START */
+
+	config_length += num_lri_dwords(oa_config->flex_regs_len);
+	config_length += 1 /* MI_BATCH_BUFFER_END */;
+
 	config_length = ALIGN(sizeof(u32) * config_length, I915_GTT_PAGE_SIZE);
 
-	obj = i915_gem_object_create_shmem(stream->perf->i915, config_length);
+	obj = i915_gem_object_create_shmem(stream->perf->i915,
+					   config_length);
 	if (IS_ERR(obj)) {
 		err = PTR_ERR(obj);
 		goto err_free;
 	}
 
-	cs = i915_gem_object_pin_map(obj, I915_MAP_WB);
-	if (IS_ERR(cs)) {
-		err = PTR_ERR(cs);
-		goto err_oa_bo;
+	cs_start = i915_gem_object_pin_map(obj, I915_MAP_WB);
+	if (IS_ERR(cs_start)) {
+		err = PTR_ERR(cs_start);
+		goto err_bo;
 	}
 
-	cs = write_cs_mi_lri(cs,
-			     oa_config->mux_regs,
-			     oa_config->mux_regs_len);
+	cs = cs_start;
 	cs = write_cs_mi_lri(cs,
 			     oa_config->b_counter_regs,
 			     oa_config->b_counter_regs_len);
@@ -1873,6 +1880,14 @@ alloc_oa_config_buffer(struct i915_perf_stream *stream,
 	*cs++ = i915_ggtt_offset(stream->noa_wait);
 	*cs++ = 0;
 
+	oa_bo->per_context_offset = 4 * (cs - cs_start);
+
+	cs = write_cs_mi_lri(cs,
+			     oa_config->mux_regs,
+			     oa_config->mux_regs_len);
+
+	*cs++ = MI_BATCH_BUFFER_END;
+
 	i915_gem_object_flush_map(obj);
 	i915_gem_object_unpin_map(obj);
 
@@ -1881,7 +1896,7 @@ alloc_oa_config_buffer(struct i915_perf_stream *stream,
 				       NULL);
 	if (IS_ERR(oa_bo->vma)) {
 		err = PTR_ERR(oa_bo->vma);
-		goto err_oa_bo;
+		goto err_bo;
 	}
 
 	oa_bo->oa_config = i915_oa_config_get(oa_config);
@@ -1889,15 +1904,15 @@ alloc_oa_config_buffer(struct i915_perf_stream *stream,
 
 	return oa_bo;
 
-err_oa_bo:
+err_bo:
 	i915_gem_object_put(obj);
 err_free:
 	kfree(oa_bo);
 	return ERR_PTR(err);
 }
 
-static struct i915_vma *
-get_oa_vma(struct i915_perf_stream *stream, struct i915_oa_config *oa_config)
+static struct i915_oa_config_bo *
+get_oa_bo(struct i915_perf_stream *stream, struct i915_oa_config *oa_config)
 {
 	struct i915_oa_config_bo *oa_bo;
 
@@ -1910,34 +1925,31 @@ get_oa_vma(struct i915_perf_stream *stream, struct i915_oa_config *oa_config)
 		    memcmp(oa_bo->oa_config->uuid,
 			   oa_config->uuid,
 			   sizeof(oa_config->uuid)) == 0)
-			goto out;
+			return oa_bo;
 	}
 
-	oa_bo = alloc_oa_config_buffer(stream, oa_config);
-	if (IS_ERR(oa_bo))
-		return ERR_CAST(oa_bo);
-
-out:
-	return i915_vma_get(oa_bo->vma);
+	return alloc_oa_config_buffer(stream, oa_config);
 }
 
 static int
 emit_oa_config(struct i915_perf_stream *stream,
 	       struct i915_oa_config *oa_config,
 	       struct intel_context *ce,
-	       struct i915_active *active)
+	       struct i915_active *active,
+	       bool global)
 {
+	struct i915_oa_config_bo *oa_bo;
 	struct i915_request *rq;
-	struct i915_vma *vma;
+	u64 vma_offset;
 	int err;
 
-	vma = get_oa_vma(stream, oa_config);
-	if (IS_ERR(vma))
-		return PTR_ERR(vma);
+	oa_bo = get_oa_bo(stream, oa_config);
+	if (IS_ERR(oa_bo))
+		return PTR_ERR(oa_bo);
 
-	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
+	err = i915_vma_pin(oa_bo->vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
 	if (err)
-		goto err_vma_put;
+		return err;
 
 	intel_engine_pm_get(ce->engine);
 	rq = i915_request_create(ce);
@@ -1959,16 +1971,19 @@ emit_oa_config(struct i915_perf_stream *stream,
 			goto err_add_request;
 	}
 
-	i915_vma_lock(vma);
-	err = i915_request_await_object(rq, vma->obj, 0);
+	i915_vma_lock(oa_bo->vma);
+	err = i915_request_await_object(rq, oa_bo->vma->obj, 0);
 	if (!err)
-		err = i915_vma_move_to_active(vma, rq, 0);
-	i915_vma_unlock(vma);
+		err = i915_vma_move_to_active(oa_bo->vma, rq, 0);
+	i915_vma_unlock(oa_bo->vma);
 	if (err)
 		goto err_add_request;
 
-	err = rq->engine->emit_bb_start(rq,
-					vma->node.start, 0,
+	vma_offset = oa_bo->vma->node.start;
+	if (!global)
+		vma_offset += oa_bo->per_context_offset;
+
+	err = rq->engine->emit_bb_start(rq, vma_offset, 0,
 					I915_DISPATCH_SECURE);
 	if (err)
 		goto err_add_request;
@@ -1976,9 +1991,7 @@ emit_oa_config(struct i915_perf_stream *stream,
 err_add_request:
 	i915_request_add(rq);
 err_vma_unpin:
-	i915_vma_unpin(vma);
-err_vma_put:
-	i915_vma_put(vma);
+	i915_vma_unpin(oa_bo->vma);
 	return err;
 }
 
@@ -1992,6 +2005,7 @@ hsw_enable_metric_set(struct i915_perf_stream *stream,
 		      struct i915_active *active)
 {
 	struct intel_uncore *uncore = stream->uncore;
+	int err;
 
 	/*
 	 * PRM:
@@ -2008,9 +2022,17 @@ hsw_enable_metric_set(struct i915_perf_stream *stream,
 	intel_uncore_rmw(uncore, GEN6_UCGCTL1,
 			 0, GEN6_CSUNIT_CLOCK_GATE_DISABLE);
 
-	return emit_oa_config(stream,
-			      stream->oa_config, oa_context(stream),
-			      active);
+	err = emit_oa_config(stream, stream->oa_config,
+			     oa_context(stream),
+			     active,
+			     false /* global */);
+	if (err)
+		return err;
+
+	return emit_oa_config(stream, stream->oa_config,
+			      oa_context(stream),
+			      active,
+			      true /* global */);
 }
 
 static void hsw_disable_metric_set(struct i915_perf_stream *stream)
@@ -2421,7 +2443,7 @@ gen8_enable_metric_set(struct i915_perf_stream *stream,
 {
 	struct intel_uncore *uncore = stream->uncore;
 	struct i915_oa_config *oa_config = stream->oa_config;
-	int ret;
+	int err;
 
 	/*
 	 * We disable slice/unslice clock ratio change reports on SKL since
@@ -2457,13 +2479,21 @@ gen8_enable_metric_set(struct i915_perf_stream *stream,
 	 * to make sure all slices/subslices are ON before writing to NOA
 	 * registers.
 	 */
-	ret = lrc_configure_all_contexts(stream, oa_config, active);
-	if (ret)
-		return ret;
+	err = lrc_configure_all_contexts(stream, oa_config, active);
+	if (err)
+		return err;
 
-	return emit_oa_config(stream,
-			      stream->oa_config, oa_context(stream),
-			      active);
+	err = emit_oa_config(stream, oa_config,
+			     oa_context(stream),
+			     active,
+			     false /* global */);
+	if (err)
+		return err;
+
+	return emit_oa_config(stream, stream->oa_config,
+			      oa_context(stream),
+			      active,
+			      true /* global */);
 }
 
 static u32 oag_report_ctx_switches(const struct i915_perf_stream *stream)
@@ -2509,9 +2539,9 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 		return ret;
 
 	/*
-	 * For Gen12, performance counters are context
-	 * saved/restored. Only enable it for the context that
-	 * requested this.
+	 * For Gen12, performance counters are also context saved/restored on
+	 * another set of performance registers. Configure the unit dealing
+	 * with those.
 	 */
 	if (stream->ctx) {
 		ret = gen12_configure_oar_context(stream, active);
@@ -2519,9 +2549,17 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 			return ret;
 	}
 
-	return emit_oa_config(stream,
-			      stream->oa_config, oa_context(stream),
-			      active);
+	ret = emit_oa_config(stream, oa_config,
+			     oa_context(stream),
+			     active,
+			     false /* global */);
+	if (ret)
+		return ret;
+
+	return emit_oa_config(stream, stream->oa_config,
+			      oa_context(stream),
+			      active,
+			      true /* global */);
 }
 
 static void gen8_disable_metric_set(struct i915_perf_stream *stream)
@@ -3215,6 +3253,7 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
 				    unsigned long metrics_set)
 {
 	struct i915_oa_config *config;
+	struct i915_active *active = NULL;
 	long ret = stream->oa_config->id;
 
 	config = i915_perf_get_oa_config(stream->perf, metrics_set);
@@ -3222,7 +3261,11 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
 		return -EINVAL;
 
 	if (config != stream->oa_config) {
-		int err;
+		active = i915_active_create();
+		if (!active) {
+			ret = -ENOMEM;
+			goto err_config;
+		}
 
 		/*
 		 * If OA is bound to a specific context, emit the
@@ -3233,13 +3276,26 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
 		 * When set globally, we use a low priority kernel context,
 		 * so it will effectively take effect when idle.
 		 */
-		err = emit_oa_config(stream, config, oa_context(stream), NULL);
-		if (!err)
-			config = xchg(&stream->oa_config, config);
-		else
-			ret = err;
+		ret = emit_oa_config(stream, config,
+				     oa_context(stream),
+				     active,
+				     false /* global */);
+		if (ret)
+			goto err_active;
+
+		ret = emit_oa_config(stream, config,
+				     oa_context(stream),
+				     active,
+				     true /* global */);
+		if (ret)
+			goto err_active;
+
+		config = xchg(&stream->oa_config, config);
 	}
 
+err_active:
+	i915_active_put(active);
+err_config:
 	i915_oa_config_put(config);
 
 	return ret;
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
