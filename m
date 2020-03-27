Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A40D7195553
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 11:32:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B692E6E9FA;
	Fri, 27 Mar 2020 10:32:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03C006E084
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 10:32:08 +0000 (UTC)
IronPort-SDR: NTjdjGKIvCwa7C2Zqbuxk5V8SJZJWPmP7wLQoBxRDEV4yF/5yce378MuXZm8sRNAdVfi8zhwwa
 13NJnSr3jtHQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 03:32:08 -0700
IronPort-SDR: pmQ8s03RIkBAT2HxE0Yt13ev2T2WFRn6pZc1jTxj0a1eMJfdRb/tZqWi+5euJUlrvkRIanlD3l
 1zqymuJMKvvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,312,1580803200"; d="scan'208";a="394336248"
Received: from kdhanoa-mobl.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.249.34.55])
 by orsmga004.jf.intel.com with ESMTP; 27 Mar 2020 03:32:07 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 12:32:07 +0200
Message-Id: <20200327103209.3099292-2-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200327103209.3099292-1-lionel.g.landwerlin@intel.com>
References: <20200327103209.3099292-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/perf: break OA config buffer
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

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 194 ++++++++++++++++++++++---------
 1 file changed, 137 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 3222f6cd8255..f524f50abdef 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -376,7 +376,8 @@ struct i915_oa_config_bo {
 	struct llist_node node;
 
 	struct i915_oa_config *oa_config;
-	struct i915_vma *vma;
+	struct i915_vma *ctx_vma;
+	struct i915_vma *global_vma;
 };
 
 static struct ctl_table_header *sysctl_header;
@@ -412,7 +413,8 @@ i915_perf_get_oa_config(struct i915_perf *perf, int metrics_set)
 static void free_oa_config_bo(struct i915_oa_config_bo *oa_bo)
 {
 	i915_oa_config_put(oa_bo->oa_config);
-	i915_vma_put(oa_bo->vma);
+	i915_vma_put(oa_bo->ctx_vma);
+	i915_vma_put(oa_bo->global_vma);
 	kfree(oa_bo);
 }
 
@@ -1868,9 +1870,9 @@ static struct i915_oa_config_bo *
 alloc_oa_config_buffer(struct i915_perf_stream *stream,
 		       struct i915_oa_config *oa_config)
 {
-	struct drm_i915_gem_object *obj;
 	struct i915_oa_config_bo *oa_bo;
-	size_t config_length = 0;
+	struct drm_i915_gem_object *global_obj, *ctx_obj;
+	size_t global_config_length = 0, ctx_config_length;
 	u32 *cs;
 	int err;
 
@@ -1878,27 +1880,26 @@ alloc_oa_config_buffer(struct i915_perf_stream *stream,
 	if (!oa_bo)
 		return ERR_PTR(-ENOMEM);
 
-	config_length += num_lri_dwords(oa_config->mux_regs_len);
-	config_length += num_lri_dwords(oa_config->b_counter_regs_len);
-	config_length += num_lri_dwords(oa_config->flex_regs_len);
-	config_length += 3; /* MI_BATCH_BUFFER_START */
-	config_length = ALIGN(sizeof(u32) * config_length, I915_GTT_PAGE_SIZE);
-
-	obj = i915_gem_object_create_shmem(stream->perf->i915, config_length);
-	if (IS_ERR(obj)) {
-		err = PTR_ERR(obj);
+	/* Global configuration requires a wait for it to apply. */
+	global_config_length += num_lri_dwords(oa_config->mux_regs_len);
+	global_config_length += num_lri_dwords(oa_config->b_counter_regs_len);
+	global_config_length += 3; /* MI_BATCH_BUFFER_START */
+	global_config_length = ALIGN(sizeof(u32) * global_config_length,
+				     I915_GTT_PAGE_SIZE);
+
+	global_obj = i915_gem_object_create_shmem(stream->perf->i915,
+						  global_config_length);
+	if (IS_ERR(global_obj)) {
+		err = PTR_ERR(global_obj);
 		goto err_free;
 	}
 
-	cs = i915_gem_object_pin_map(obj, I915_MAP_WB);
+	cs = i915_gem_object_pin_map(global_obj, I915_MAP_WB);
 	if (IS_ERR(cs)) {
 		err = PTR_ERR(cs);
-		goto err_oa_bo;
+		goto err_global_bo;
 	}
 
-	cs = write_cs_mi_lri(cs,
-			     oa_config->mux_regs,
-			     oa_config->mux_regs_len);
 	cs = write_cs_mi_lri(cs,
 			     oa_config->b_counter_regs,
 			     oa_config->b_counter_regs_len);
@@ -1913,15 +1914,51 @@ alloc_oa_config_buffer(struct i915_perf_stream *stream,
 	*cs++ = i915_ggtt_offset(stream->noa_wait);
 	*cs++ = 0;
 
-	i915_gem_object_flush_map(obj);
-	i915_gem_object_unpin_map(obj);
+	i915_gem_object_flush_map(global_obj);
+	i915_gem_object_unpin_map(global_obj);
+
+	oa_bo->global_vma = i915_vma_instance(global_obj,
+					      &stream->engine->gt->ggtt->vm,
+					      NULL);
+	if (IS_ERR(oa_bo->global_vma)) {
+		err = PTR_ERR(oa_bo->global_vma);
+		goto err_global_bo;
+	}
+
+	/* There is no known delay needed for the per context registers. */
+	ctx_config_length = 1 /* MI_BATCH_BUFFER_END */ +
+		num_lri_dwords(oa_config->flex_regs_len);
+	ctx_config_length = ALIGN(sizeof(u32) * ctx_config_length,
+				  I915_GTT_PAGE_SIZE);
+
+	ctx_obj = i915_gem_object_create_shmem(stream->perf->i915,
+					       ctx_config_length);
+	if (IS_ERR(ctx_obj)) {
+		err = PTR_ERR(ctx_obj);
+		goto err_global_vma;
+	}
+
+	cs = i915_gem_object_pin_map(ctx_obj, I915_MAP_WB);
+	if (IS_ERR(cs)) {
+		err = PTR_ERR(cs);
+		goto err_global_vma;
+	}
+
+	cs = write_cs_mi_lri(cs,
+			     oa_config->mux_regs,
+			     oa_config->mux_regs_len);
+
+	*cs++ = MI_BATCH_BUFFER_END;
+
+	i915_gem_object_flush_map(ctx_obj);
+	i915_gem_object_unpin_map(ctx_obj);
 
-	oa_bo->vma = i915_vma_instance(obj,
-				       &stream->engine->gt->ggtt->vm,
-				       NULL);
-	if (IS_ERR(oa_bo->vma)) {
-		err = PTR_ERR(oa_bo->vma);
-		goto err_oa_bo;
+	oa_bo->ctx_vma = i915_vma_instance(ctx_obj,
+					   &stream->engine->gt->ggtt->vm,
+					   NULL);
+	if (IS_ERR(oa_bo->ctx_vma)) {
+		err = PTR_ERR(oa_bo->ctx_vma);
+		goto err_ctx_bo;
 	}
 
 	oa_bo->oa_config = i915_oa_config_get(oa_config);
@@ -1929,15 +1966,19 @@ alloc_oa_config_buffer(struct i915_perf_stream *stream,
 
 	return oa_bo;
 
-err_oa_bo:
-	i915_gem_object_put(obj);
+err_ctx_bo:
+	i915_gem_object_put(ctx_obj);
+err_global_vma:
+	i915_vma_put(oa_bo->global_vma);
+err_global_bo:
+	i915_gem_object_put(global_obj);
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
 
@@ -1950,29 +1991,29 @@ get_oa_vma(struct i915_perf_stream *stream, struct i915_oa_config *oa_config)
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
 
 static struct i915_request *
 emit_oa_config(struct i915_perf_stream *stream,
 	       struct i915_oa_config *oa_config,
-	       struct intel_context *ce)
+	       struct intel_context *ce,
+	       bool global)
 {
+	struct i915_oa_config_bo *oa_bo;
 	struct i915_request *rq;
 	struct i915_vma *vma;
 	int err;
 
-	vma = get_oa_vma(stream, oa_config);
-	if (IS_ERR(vma))
-		return ERR_CAST(vma);
+	oa_bo = get_oa_bo(stream, oa_config);
+	if (IS_ERR(oa_bo))
+		return ERR_CAST(oa_bo);
+
+	vma = global ? i915_vma_get(oa_bo->global_vma) :
+		i915_vma_get(oa_bo->ctx_vma);
 
 	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
 	if (err)
@@ -2019,6 +2060,7 @@ static struct i915_request *
 hsw_enable_metric_set(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
+	struct i915_request *rq;
 
 	/*
 	 * PRM:
@@ -2035,7 +2077,15 @@ hsw_enable_metric_set(struct i915_perf_stream *stream)
 	intel_uncore_rmw(uncore, GEN6_UCGCTL1,
 			 0, GEN6_CSUNIT_CLOCK_GATE_DISABLE);
 
-	return emit_oa_config(stream, stream->oa_config, oa_context(stream));
+	rq = emit_oa_config(stream, stream->oa_config,
+			    stream->engine->kernel_context,
+			    false /* global */);
+	if (IS_ERR(rq))
+		return rq;
+
+	return emit_oa_config(stream, stream->oa_config,
+			      stream->engine->kernel_context,
+			      true /* global */);
 }
 
 static void hsw_disable_metric_set(struct i915_perf_stream *stream)
@@ -2423,6 +2473,7 @@ gen8_enable_metric_set(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
 	struct i915_oa_config *oa_config = stream->oa_config;
+	struct i915_request *rq;
 	int ret;
 
 	/*
@@ -2463,7 +2514,15 @@ gen8_enable_metric_set(struct i915_perf_stream *stream)
 	if (ret)
 		return ERR_PTR(ret);
 
-	return emit_oa_config(stream, oa_config, oa_context(stream));
+	rq = emit_oa_config(stream, oa_config,
+			    stream->engine->kernel_context,
+			    false /* global */);
+	if (IS_ERR(rq))
+		return rq;
+
+	return emit_oa_config(stream, stream->oa_config,
+			      stream->engine->kernel_context,
+			      true /* global */);
 }
 
 static u32 oag_report_ctx_switches(const struct i915_perf_stream *stream)
@@ -2480,6 +2539,7 @@ gen12_enable_metric_set(struct i915_perf_stream *stream)
 	struct i915_oa_config *oa_config = stream->oa_config;
 	bool periodic = stream->periodic;
 	u32 period_exponent = stream->period_exponent;
+	struct i915_request *rq;
 	int ret;
 
 	intel_uncore_write(uncore, GEN12_OAG_OA_DEBUG,
@@ -2508,17 +2568,23 @@ gen12_enable_metric_set(struct i915_perf_stream *stream)
 		return ERR_PTR(ret);
 
 	/*
-	 * For Gen12, performance counters are context
-	 * saved/restored. Only enable it for the context that
-	 * requested this.
+	 * For Gen12, performance counters are also context saved/restored on
+	 * another set of performance registers. Configure the unit dealing
+	 * with those.
 	 */
-	if (stream->ctx) {
-		ret = gen12_configure_oar_context(stream, true);
-		if (ret)
-			return ERR_PTR(ret);
-	}
+	ret = gen12_configure_oar_context(stream, true);
+	if (ret)
+		return ERR_PTR(ret);
+
+	rq = emit_oa_config(stream, oa_config,
+			    stream->engine->kernel_context,
+			    false /* global */);
+	if (IS_ERR(rq))
+		return rq;
 
-	return emit_oa_config(stream, oa_config, oa_context(stream));
+	return emit_oa_config(stream, stream->oa_config,
+			      stream->engine->kernel_context,
+			      true /* global */);
 }
 
 static void gen8_disable_metric_set(struct i915_perf_stream *stream)
@@ -3228,15 +3294,29 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
 		 * When set globally, we use a low priority kernel context,
 		 * so it will effectively take effect when idle.
 		 */
-		rq = emit_oa_config(stream, config, oa_context(stream));
-		if (!IS_ERR(rq)) {
-			config = xchg(&stream->oa_config, config);
-			i915_request_put(rq);
-		} else {
+		rq = emit_oa_config(stream, config,
+				    oa_context(stream),
+				    false /* global */);
+		if (IS_ERR(rq)) {
 			ret = PTR_ERR(rq);
+			goto err;
 		}
+
+		i915_request_put(rq);
+
+		rq = emit_oa_config(stream, config,
+				    oa_context(stream),
+				    true /* global */);
+		if (IS_ERR(rq)) {
+			ret = PTR_ERR(rq);
+			goto err;
+		}
+
+		config = xchg(&stream->oa_config, config);
+		i915_request_put(rq);
 	}
 
+err:
 	i915_oa_config_put(config);
 
 	return ret;
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
