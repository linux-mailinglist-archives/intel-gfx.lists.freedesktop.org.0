Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E8E1BFAB5
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 15:55:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86F8D6E8E1;
	Thu, 30 Apr 2020 13:55:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15B876E8C5
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 13:55:43 +0000 (UTC)
IronPort-SDR: SHeIrH4nz2m4izWozcsaOzVwa+nOja04LxrnaIgkpI5kSGhGuwP1sjpYJKONl5x6rFOeN4epiB
 DHpbUCxEIZuA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 06:55:42 -0700
IronPort-SDR: loTxsD3YvjSSyWze61XD5VYuoclEV6hgxYMPT7rktj2MZWXiNlXeCpDCxSk4BEdNpqSgjYqNdU
 ii+pBKp4Wnbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,336,1583222400"; d="scan'208";a="294514717"
Received: from pbukanox-mobl.ccr.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.55.69])
 by orsmga008.jf.intel.com with ESMTP; 30 Apr 2020 06:55:41 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 16:55:33 +0300
Message-Id: <20200430135536.1141443-2-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430135536.1141443-1-lionel.g.landwerlin@intel.com>
References: <20200430135536.1141443-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 1/4] drm/i915/perf: break OA config buffer
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
Cc: chris@chris-wilson.co.uk
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

v3: Use a bitfield to select config parts to emit (Umesh)

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 177 ++++++++++++++++++++-----------
 1 file changed, 114 insertions(+), 63 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index c533f569dd42..c17696058c20 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -367,11 +367,18 @@ struct perf_open_properties {
 	u64 poll_oa_period;
 };
 
+enum i915_oa_config_part {
+	I915_OA_CONFIG_PART_PER_CONTEXT,
+	I915_OA_CONFIG_PART_GLOBAL,
+	I915_OA_CONFIG_PART_MAX,
+};
+
 struct i915_oa_config_bo {
 	struct llist_node node;
 
 	struct i915_oa_config *oa_config;
 	struct i915_vma *vma;
+	u32 per_context_offset;
 };
 
 static struct ctl_table_header *sysctl_header;
@@ -1824,37 +1831,43 @@ static struct i915_oa_config_bo *
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
@@ -1869,6 +1882,14 @@ alloc_oa_config_buffer(struct i915_perf_stream *stream,
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
 
@@ -1877,7 +1898,7 @@ alloc_oa_config_buffer(struct i915_perf_stream *stream,
 				       NULL);
 	if (IS_ERR(oa_bo->vma)) {
 		err = PTR_ERR(oa_bo->vma);
-		goto err_oa_bo;
+		goto err_bo;
 	}
 
 	oa_bo->oa_config = i915_oa_config_get(oa_config);
@@ -1885,15 +1906,15 @@ alloc_oa_config_buffer(struct i915_perf_stream *stream,
 
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
 
@@ -1906,34 +1927,31 @@ get_oa_vma(struct i915_perf_stream *stream, struct i915_oa_config *oa_config)
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
+	       unsigned long config_part_mask)
 {
+	struct i915_oa_config_bo *oa_bo;
 	struct i915_request *rq;
-	struct i915_vma *vma;
+	enum i915_oa_config_part config_part;
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
@@ -1955,26 +1973,41 @@ emit_oa_config(struct i915_perf_stream *stream,
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
-					I915_DISPATCH_SECURE);
-	if (err)
-		goto err_add_request;
+	for_each_set_bit(config_part, &config_part_mask,
+			 I915_OA_CONFIG_PART_MAX) {
+		u64 vma_offset;
+
+		switch (config_part) {
+		case I915_OA_CONFIG_PART_PER_CONTEXT:
+			vma_offset = oa_bo->vma->node.start;
+			break;
+		case I915_OA_CONFIG_PART_GLOBAL:
+			vma_offset = oa_bo->vma->node.start +
+				oa_bo->per_context_offset;
+			break;
+		default:
+			MISSING_CASE(config_part);
+			goto err_add_request;
+		}
+
+		err = rq->engine->emit_bb_start(rq, vma_offset, 0,
+						I915_DISPATCH_SECURE);
+		if (err)
+			goto err_add_request;
+	}
 
 err_add_request:
 	i915_request_add(rq);
 err_vma_unpin:
-	i915_vma_unpin(vma);
-err_vma_put:
-	i915_vma_put(vma);
+	i915_vma_unpin(oa_bo->vma);
 	return err;
 }
 
@@ -2004,9 +2037,11 @@ hsw_enable_metric_set(struct i915_perf_stream *stream,
 	intel_uncore_rmw(uncore, GEN6_UCGCTL1,
 			 0, GEN6_CSUNIT_CLOCK_GATE_DISABLE);
 
-	return emit_oa_config(stream,
-			      stream->oa_config, oa_context(stream),
-			      active);
+	return emit_oa_config(stream, stream->oa_config,
+			      oa_context(stream),
+			      active,
+			      BIT(I915_OA_CONFIG_PART_GLOBAL) |
+			      BIT(I915_OA_CONFIG_PART_PER_CONTEXT));
 }
 
 static void hsw_disable_metric_set(struct i915_perf_stream *stream)
@@ -2417,7 +2452,7 @@ gen8_enable_metric_set(struct i915_perf_stream *stream,
 {
 	struct intel_uncore *uncore = stream->uncore;
 	struct i915_oa_config *oa_config = stream->oa_config;
-	int ret;
+	int err;
 
 	/*
 	 * We disable slice/unslice clock ratio change reports on SKL since
@@ -2453,13 +2488,15 @@ gen8_enable_metric_set(struct i915_perf_stream *stream,
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
+	return emit_oa_config(stream, oa_config,
+			      oa_context(stream),
+			      active,
+			      BIT(I915_OA_CONFIG_PART_GLOBAL) |
+			      BIT(I915_OA_CONFIG_PART_PER_CONTEXT));
 }
 
 static u32 oag_report_ctx_switches(const struct i915_perf_stream *stream)
@@ -2505,9 +2542,9 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
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
@@ -2515,9 +2552,11 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 			return ret;
 	}
 
-	return emit_oa_config(stream,
-			      stream->oa_config, oa_context(stream),
-			      active);
+	return emit_oa_config(stream, oa_config,
+			      oa_context(stream),
+			      active,
+			      BIT(I915_OA_CONFIG_PART_GLOBAL) |
+			      BIT(I915_OA_CONFIG_PART_PER_CONTEXT));
 }
 
 static void gen8_disable_metric_set(struct i915_perf_stream *stream)
@@ -3172,6 +3211,7 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
 				    unsigned long metrics_set)
 {
 	struct i915_oa_config *config;
+	struct i915_active *active = NULL;
 	long ret = stream->oa_config->id;
 
 	config = i915_perf_get_oa_config(stream->perf, metrics_set);
@@ -3179,7 +3219,11 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
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
@@ -3190,13 +3234,20 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
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
+				     BIT(I915_OA_CONFIG_PART_GLOBAL) |
+				     BIT(I915_OA_CONFIG_PART_PER_CONTEXT));
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
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
