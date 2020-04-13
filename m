Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE471A6FCD
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 01:24:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 364F489D5F;
	Mon, 13 Apr 2020 23:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B886B89D5F
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2020 23:24:33 +0000 (UTC)
IronPort-SDR: CXuc5KQBaObGRZ4DwMe6FEH9bt0e1/JPkcNbV8fLIekCbh1VqEjd4PNnGTYMi9UHwTH+sx00Ci
 buRU9cZwoJpQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 16:24:31 -0700
IronPort-SDR: /PK/g+0QBWE8CSFCwvHVShglCMZfKEZM3K9xzPM7gPcDTDk0ngsI2CALaSW35ygXdbvdgMsfu4
 Wwd8BDOGjEBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,380,1580803200"; d="scan'208";a="241805148"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by orsmga007.jf.intel.com with ESMTP; 13 Apr 2020 16:24:31 -0700
Date: Mon, 13 Apr 2020 16:24:31 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20200413232431.GB61072@orsosgc001.amr.corp.intel.com>
References: <20200409091706.690045-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409091706.690045-1-lionel.g.landwerlin@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH v5 1/4] drm/i915/perf: break OA config
 buffer object in 2
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Lionel,

What's the implication of using separate contexts for 3d and compute on 
perf OA? Is it only context-filtering? If so, have you considered 
disabling context filtering with a parameter instead of actually 
filtering for specific contexts? Is this privileged use case?

Thanks,
Umesh

On Thu, Apr 09, 2020 at 12:17:03PM +0300, Lionel Landwerlin wrote:
>We want to enable performance monitoring on multiple contexts to cover
>the Iris use case of using 2 GEM contexts (3D & compute).
>
>So start by breaking the OA configuration BO which contains global &
>per context register writes.
>
>NOA muxes & OA configurations are global, while FLEXEU register
>configurations are per context.
>
>v2: Use an offset into the same VMA (Chris)
>
>Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>---
> drivers/gpu/drm/i915/i915_perf.c | 176 ++++++++++++++++++++-----------
> 1 file changed, 116 insertions(+), 60 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>index 5cde3e4e7be6..d2183fd701a3 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -372,6 +372,7 @@ struct i915_oa_config_bo {
>
> 	struct i915_oa_config *oa_config;
> 	struct i915_vma *vma;
>+	u32 per_context_offset;
> };
>
> static struct ctl_table_header *sysctl_header;
>@@ -1826,37 +1827,43 @@ static struct i915_oa_config_bo *
> alloc_oa_config_buffer(struct i915_perf_stream *stream,
> 		       struct i915_oa_config *oa_config)
> {
>-	struct drm_i915_gem_object *obj;
> 	struct i915_oa_config_bo *oa_bo;
>+	struct drm_i915_gem_object *obj;
> 	size_t config_length = 0;
>-	u32 *cs;
>+	u32 *cs_start, *cs;
> 	int err;
>
> 	oa_bo = kzalloc(sizeof(*oa_bo), GFP_KERNEL);
> 	if (!oa_bo)
> 		return ERR_PTR(-ENOMEM);
>
>+	/*
>+	 * Global configuration requires a jump into the NOA wait BO for it to
>+	 * apply.
>+	 */
> 	config_length += num_lri_dwords(oa_config->mux_regs_len);
> 	config_length += num_lri_dwords(oa_config->b_counter_regs_len);
>-	config_length += num_lri_dwords(oa_config->flex_regs_len);
> 	config_length += 3; /* MI_BATCH_BUFFER_START */
>+
>+	config_length += num_lri_dwords(oa_config->flex_regs_len);
>+	config_length += 1 /* MI_BATCH_BUFFER_END */;
>+
> 	config_length = ALIGN(sizeof(u32) * config_length, I915_GTT_PAGE_SIZE);
>
>-	obj = i915_gem_object_create_shmem(stream->perf->i915, config_length);
>+	obj = i915_gem_object_create_shmem(stream->perf->i915,
>+					   config_length);
> 	if (IS_ERR(obj)) {
> 		err = PTR_ERR(obj);
> 		goto err_free;
> 	}
>
>-	cs = i915_gem_object_pin_map(obj, I915_MAP_WB);
>-	if (IS_ERR(cs)) {
>-		err = PTR_ERR(cs);
>-		goto err_oa_bo;
>+	cs_start = i915_gem_object_pin_map(obj, I915_MAP_WB);
>+	if (IS_ERR(cs_start)) {
>+		err = PTR_ERR(cs_start);
>+		goto err_bo;
> 	}
>
>-	cs = write_cs_mi_lri(cs,
>-			     oa_config->mux_regs,
>-			     oa_config->mux_regs_len);
>+	cs = cs_start;
> 	cs = write_cs_mi_lri(cs,
> 			     oa_config->b_counter_regs,
> 			     oa_config->b_counter_regs_len);
>@@ -1871,6 +1878,14 @@ alloc_oa_config_buffer(struct i915_perf_stream *stream,
> 	*cs++ = i915_ggtt_offset(stream->noa_wait);
> 	*cs++ = 0;
>
>+	oa_bo->per_context_offset = 4 * (cs - cs_start);
>+
>+	cs = write_cs_mi_lri(cs,
>+			     oa_config->mux_regs,
>+			     oa_config->mux_regs_len);
>+
>+	*cs++ = MI_BATCH_BUFFER_END;
>+
> 	i915_gem_object_flush_map(obj);
> 	i915_gem_object_unpin_map(obj);
>
>@@ -1879,7 +1894,7 @@ alloc_oa_config_buffer(struct i915_perf_stream *stream,
> 				       NULL);
> 	if (IS_ERR(oa_bo->vma)) {
> 		err = PTR_ERR(oa_bo->vma);
>-		goto err_oa_bo;
>+		goto err_bo;
> 	}
>
> 	oa_bo->oa_config = i915_oa_config_get(oa_config);
>@@ -1887,15 +1902,15 @@ alloc_oa_config_buffer(struct i915_perf_stream *stream,
>
> 	return oa_bo;
>
>-err_oa_bo:
>+err_bo:
> 	i915_gem_object_put(obj);
> err_free:
> 	kfree(oa_bo);
> 	return ERR_PTR(err);
> }
>
>-static struct i915_vma *
>-get_oa_vma(struct i915_perf_stream *stream, struct i915_oa_config *oa_config)
>+static struct i915_oa_config_bo *
>+get_oa_bo(struct i915_perf_stream *stream, struct i915_oa_config *oa_config)
> {
> 	struct i915_oa_config_bo *oa_bo;
>
>@@ -1908,34 +1923,31 @@ get_oa_vma(struct i915_perf_stream *stream, struct i915_oa_config *oa_config)
> 		    memcmp(oa_bo->oa_config->uuid,
> 			   oa_config->uuid,
> 			   sizeof(oa_config->uuid)) == 0)
>-			goto out;
>+			return oa_bo;
> 	}
>
>-	oa_bo = alloc_oa_config_buffer(stream, oa_config);
>-	if (IS_ERR(oa_bo))
>-		return ERR_CAST(oa_bo);
>-
>-out:
>-	return i915_vma_get(oa_bo->vma);
>+	return alloc_oa_config_buffer(stream, oa_config);
> }
>
> static int
> emit_oa_config(struct i915_perf_stream *stream,
> 	       struct i915_oa_config *oa_config,
> 	       struct intel_context *ce,
>-	       struct i915_active *active)
>+	       struct i915_active *active,
>+	       bool global)
> {
>+	struct i915_oa_config_bo *oa_bo;
> 	struct i915_request *rq;
>-	struct i915_vma *vma;
>+	u64 vma_offset;
> 	int err;
>
>-	vma = get_oa_vma(stream, oa_config);
>-	if (IS_ERR(vma))
>-		return PTR_ERR(vma);
>+	oa_bo = get_oa_bo(stream, oa_config);
>+	if (IS_ERR(oa_bo))
>+		return PTR_ERR(oa_bo);
>
>-	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
>+	err = i915_vma_pin(oa_bo->vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
> 	if (err)
>-		goto err_vma_put;
>+		return err;
>
> 	intel_engine_pm_get(ce->engine);
> 	rq = i915_request_create(ce);
>@@ -1957,16 +1969,19 @@ emit_oa_config(struct i915_perf_stream *stream,
> 			goto err_add_request;
> 	}
>
>-	i915_vma_lock(vma);
>-	err = i915_request_await_object(rq, vma->obj, 0);
>+	i915_vma_lock(oa_bo->vma);
>+	err = i915_request_await_object(rq, oa_bo->vma->obj, 0);
> 	if (!err)
>-		err = i915_vma_move_to_active(vma, rq, 0);
>-	i915_vma_unlock(vma);
>+		err = i915_vma_move_to_active(oa_bo->vma, rq, 0);
>+	i915_vma_unlock(oa_bo->vma);
> 	if (err)
> 		goto err_add_request;
>
>-	err = rq->engine->emit_bb_start(rq,
>-					vma->node.start, 0,
>+	vma_offset = oa_bo->vma->node.start;
>+	if (!global)
>+		vma_offset += oa_bo->per_context_offset;
>+
>+	err = rq->engine->emit_bb_start(rq, vma_offset, 0,
> 					I915_DISPATCH_SECURE);
> 	if (err)
> 		goto err_add_request;
>@@ -1974,9 +1989,7 @@ emit_oa_config(struct i915_perf_stream *stream,
> err_add_request:
> 	i915_request_add(rq);
> err_vma_unpin:
>-	i915_vma_unpin(vma);
>-err_vma_put:
>-	i915_vma_put(vma);
>+	i915_vma_unpin(oa_bo->vma);
> 	return err;
> }
>
>@@ -1990,6 +2003,7 @@ hsw_enable_metric_set(struct i915_perf_stream *stream,
> 		      struct i915_active *active)
> {
> 	struct intel_uncore *uncore = stream->uncore;
>+	int err;
>
> 	/*
> 	 * PRM:
>@@ -2006,9 +2020,17 @@ hsw_enable_metric_set(struct i915_perf_stream *stream,
> 	intel_uncore_rmw(uncore, GEN6_UCGCTL1,
> 			 0, GEN6_CSUNIT_CLOCK_GATE_DISABLE);
>
>-	return emit_oa_config(stream,
>-			      stream->oa_config, oa_context(stream),
>-			      active);
>+	err = emit_oa_config(stream, stream->oa_config,
>+			     oa_context(stream),
>+			     active,
>+			     false /* global */);
>+	if (err)
>+		return err;
>+
>+	return emit_oa_config(stream, stream->oa_config,
>+			      oa_context(stream),
>+			      active,
>+			      true /* global */);
> }
>
> static void hsw_disable_metric_set(struct i915_perf_stream *stream)
>@@ -2419,7 +2441,7 @@ gen8_enable_metric_set(struct i915_perf_stream *stream,
> {
> 	struct intel_uncore *uncore = stream->uncore;
> 	struct i915_oa_config *oa_config = stream->oa_config;
>-	int ret;
>+	int err;
>
> 	/*
> 	 * We disable slice/unslice clock ratio change reports on SKL since
>@@ -2455,13 +2477,21 @@ gen8_enable_metric_set(struct i915_perf_stream *stream,
> 	 * to make sure all slices/subslices are ON before writing to NOA
> 	 * registers.
> 	 */
>-	ret = lrc_configure_all_contexts(stream, oa_config, active);
>-	if (ret)
>-		return ret;
>+	err = lrc_configure_all_contexts(stream, oa_config, active);
>+	if (err)
>+		return err;
>
>-	return emit_oa_config(stream,
>-			      stream->oa_config, oa_context(stream),
>-			      active);
>+	err = emit_oa_config(stream, oa_config,
>+			     oa_context(stream),
>+			     active,
>+			     false /* global */);
>+	if (err)
>+		return err;
>+
>+	return emit_oa_config(stream, stream->oa_config,
>+			      oa_context(stream),
>+			      active,
>+			      true /* global */);
> }
>
> static u32 oag_report_ctx_switches(const struct i915_perf_stream *stream)
>@@ -2507,9 +2537,9 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
> 		return ret;
>
> 	/*
>-	 * For Gen12, performance counters are context
>-	 * saved/restored. Only enable it for the context that
>-	 * requested this.
>+	 * For Gen12, performance counters are also context saved/restored on
>+	 * another set of performance registers. Configure the unit dealing
>+	 * with those.
> 	 */
> 	if (stream->ctx) {
> 		ret = gen12_configure_oar_context(stream, active);
>@@ -2517,9 +2547,17 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
> 			return ret;
> 	}
>
>-	return emit_oa_config(stream,
>-			      stream->oa_config, oa_context(stream),
>-			      active);
>+	ret = emit_oa_config(stream, oa_config,
>+			     oa_context(stream),
>+			     active,
>+			     false /* global */);
>+	if (ret)
>+		return ret;
>+
>+	return emit_oa_config(stream, stream->oa_config,
>+			      oa_context(stream),
>+			      active,
>+			      true /* global */);
> }
>
> static void gen8_disable_metric_set(struct i915_perf_stream *stream)
>@@ -3174,6 +3212,7 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
> 				    unsigned long metrics_set)
> {
> 	struct i915_oa_config *config;
>+	struct i915_active *active = NULL;
> 	long ret = stream->oa_config->id;
>
> 	config = i915_perf_get_oa_config(stream->perf, metrics_set);
>@@ -3181,7 +3220,11 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
> 		return -EINVAL;
>
> 	if (config != stream->oa_config) {
>-		int err;
>+		active = i915_active_create();
>+		if (!active) {
>+			ret = -ENOMEM;
>+			goto err_config;
>+		}
>
> 		/*
> 		 * If OA is bound to a specific context, emit the
>@@ -3192,13 +3235,26 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
> 		 * When set globally, we use a low priority kernel context,
> 		 * so it will effectively take effect when idle.
> 		 */
>-		err = emit_oa_config(stream, config, oa_context(stream), NULL);
>-		if (!err)
>-			config = xchg(&stream->oa_config, config);
>-		else
>-			ret = err;
>+		ret = emit_oa_config(stream, config,
>+				     oa_context(stream),
>+				     active,
>+				     false /* global */);
>+		if (ret)
>+			goto err_active;
>+
>+		ret = emit_oa_config(stream, config,
>+				     oa_context(stream),
>+				     active,
>+				     true /* global */);
>+		if (ret)
>+			goto err_active;
>+
>+		config = xchg(&stream->oa_config, config);
> 	}
>
>+err_active:
>+	i915_active_put(active);
>+err_config:
> 	i915_oa_config_put(config);
>
> 	return ret;
>-- 
>2.26.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
