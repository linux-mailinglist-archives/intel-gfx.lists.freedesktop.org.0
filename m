Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF89197CAA
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 15:17:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C477C899A3;
	Mon, 30 Mar 2020 13:17:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A36FA899A3
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 13:17:21 +0000 (UTC)
IronPort-SDR: Z7eCcyvXVkzTus/hGPf0o2BASfQcROms9MYZz9ORkMk2L3NyITKXJC+JJC9WLbB5sVeAnrXgrX
 mdRemQ7AVpFg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 06:17:21 -0700
IronPort-SDR: VxEeWFdi58nKp++PXSAuTA+XhDyYxlkpqgubbEVSddsW4tgOTZFyENRRW+OXIr8anbPfmCtAZ2
 cHH6nR7yQH3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="242025711"
Received: from swarupar-mobl.gar.corp.intel.com (HELO [10.249.36.112])
 ([10.249.36.112])
 by orsmga008.jf.intel.com with ESMTP; 30 Mar 2020 06:17:19 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200327112212.16046-1-chris@chris-wilson.co.uk>
 <20200327112212.16046-3-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <5739c1b8-7ae0-0dd1-7adb-a40afc5c6d3c@intel.com>
Date: Mon, 30 Mar 2020 16:17:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200327112212.16046-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/perf: Schedule oa_config after
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 27/03/2020 13:22, Chris Wilson wrote:
> We wish that the scheduler emit the context modification commands prior
> to enabling the oa_config, for which we must explicitly inform it of the
> ordering constraints. This is especially important as we now wait for
> the final oa_config setup to be completed and as this wait may be on a
> distinct context to the state modifications, we need that command packet
> to be always last in the queue.
>
> We borrow the i915_active for its ability to track multiple timelines
> and the last dma_fence on each; a flexible dma_resv. Keeping track of
> each dma_fence is important for us so that we can efficiently schedule
> the requests and reprioritise as required.
>
> Reported-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_perf.c       | 154 ++++++++++++++++---------
>   drivers/gpu/drm/i915/i915_perf_types.h |   5 +-
>   2 files changed, 102 insertions(+), 57 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 3222f6cd8255..faf4b0970775 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -1961,10 +1961,11 @@ get_oa_vma(struct i915_perf_stream *stream, struct i915_oa_config *oa_config)
>   	return i915_vma_get(oa_bo->vma);
>   }
>   
> -static struct i915_request *
> +static int
>   emit_oa_config(struct i915_perf_stream *stream,
>   	       struct i915_oa_config *oa_config,
> -	       struct intel_context *ce)
> +	       struct intel_context *ce,
> +	       struct i915_active *active)
>   {
>   	struct i915_request *rq;
>   	struct i915_vma *vma;
> @@ -1972,7 +1973,7 @@ emit_oa_config(struct i915_perf_stream *stream,
>   
>   	vma = get_oa_vma(stream, oa_config);
>   	if (IS_ERR(vma))
> -		return ERR_CAST(vma);
> +		return PTR_ERR(vma);
>   
>   	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
>   	if (err)
> @@ -1986,6 +1987,18 @@ emit_oa_config(struct i915_perf_stream *stream,
>   		goto err_vma_unpin;
>   	}
>   
> +	if (!IS_ERR_OR_NULL(active)) {
> +		/* After all individual context modifications */
> +		err = i915_request_await_active(rq, active,
> +						I915_ACTIVE_AWAIT_ALL);
> +		if (err)
> +			goto err_add_request;
> +
> +		err = i915_active_add_request(active, rq);
> +		if (err)
> +			goto err_add_request;
> +	}
> +
>   	i915_vma_lock(vma);
>   	err = i915_request_await_object(rq, vma->obj, 0);
>   	if (!err)
> @@ -2000,14 +2013,13 @@ emit_oa_config(struct i915_perf_stream *stream,
>   	if (err)
>   		goto err_add_request;
>   
> -	i915_request_get(rq);
>   err_add_request:
>   	i915_request_add(rq);
>   err_vma_unpin:
>   	i915_vma_unpin(vma);
>   err_vma_put:
>   	i915_vma_put(vma);
> -	return err ? ERR_PTR(err) : rq;
> +	return err;
>   }
>   
>   static struct intel_context *oa_context(struct i915_perf_stream *stream)
> @@ -2015,8 +2027,9 @@ static struct intel_context *oa_context(struct i915_perf_stream *stream)
>   	return stream->pinned_ctx ?: stream->engine->kernel_context;
>   }
>   
> -static struct i915_request *
> -hsw_enable_metric_set(struct i915_perf_stream *stream)
> +static int
> +hsw_enable_metric_set(struct i915_perf_stream *stream,
> +		      struct i915_active *active)
>   {
>   	struct intel_uncore *uncore = stream->uncore;
>   
> @@ -2035,7 +2048,9 @@ hsw_enable_metric_set(struct i915_perf_stream *stream)
>   	intel_uncore_rmw(uncore, GEN6_UCGCTL1,
>   			 0, GEN6_CSUNIT_CLOCK_GATE_DISABLE);
>   
> -	return emit_oa_config(stream, stream->oa_config, oa_context(stream));
> +	return emit_oa_config(stream,
> +			      stream->oa_config, oa_context(stream),
> +			      active);
>   }
>   
>   static void hsw_disable_metric_set(struct i915_perf_stream *stream)
> @@ -2182,8 +2197,10 @@ static int gen8_modify_context(struct intel_context *ce,
>   	return err;
>   }
>   
> -static int gen8_modify_self(struct intel_context *ce,
> -			    const struct flex *flex, unsigned int count)
> +static int
> +gen8_modify_self(struct intel_context *ce,
> +		 const struct flex *flex, unsigned int count,
> +		 struct i915_active *active)
>   {
>   	struct i915_request *rq;
>   	int err;
> @@ -2194,8 +2211,17 @@ static int gen8_modify_self(struct intel_context *ce,
>   	if (IS_ERR(rq))
>   		return PTR_ERR(rq);
>   
> +	if (!IS_ERR_OR_NULL(active)) {
> +		err = i915_active_add_request(active, rq);
> +		if (err)
> +			goto err_add_request;
> +	}
> +
>   	err = gen8_load_flex(rq, ce, flex, count);
> +	if (err)
> +		goto err_add_request;
>   
> +err_add_request:
>   	i915_request_add(rq);
>   	return err;
>   }
> @@ -2229,7 +2255,8 @@ static int gen8_configure_context(struct i915_gem_context *ctx,
>   	return err;
>   }
>   
> -static int gen12_configure_oar_context(struct i915_perf_stream *stream, bool enable)
> +static int gen12_configure_oar_context(struct i915_perf_stream *stream,
> +				       struct i915_active *active)
>   {
>   	int err;
>   	struct intel_context *ce = stream->pinned_ctx;
> @@ -2238,7 +2265,7 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream, bool ena
>   		{
>   			GEN8_OACTXCONTROL,
>   			stream->perf->ctx_oactxctrl_offset + 1,
> -			enable ? GEN8_OA_COUNTER_RESUME : 0,
> +			active ? GEN8_OA_COUNTER_RESUME : 0,
>   		},
>   	};
>   	/* Offsets in regs_lri are not used since this configuration is only
> @@ -2250,13 +2277,13 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream, bool ena
>   			GEN12_OAR_OACONTROL,
>   			GEN12_OAR_OACONTROL_OFFSET + 1,
>   			(format << GEN12_OAR_OACONTROL_COUNTER_FORMAT_SHIFT) |
> -			(enable ? GEN12_OAR_OACONTROL_COUNTER_ENABLE : 0)
> +			(active ? GEN12_OAR_OACONTROL_COUNTER_ENABLE : 0)
>   		},
>   		{
>   			RING_CONTEXT_CONTROL(ce->engine->mmio_base),
>   			CTX_CONTEXT_CONTROL,
>   			_MASKED_FIELD(GEN12_CTX_CTRL_OAR_CONTEXT_ENABLE,
> -				      enable ?
> +				      active ?
>   				      GEN12_CTX_CTRL_OAR_CONTEXT_ENABLE :
>   				      0)
>   		},
> @@ -2273,7 +2300,7 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream, bool ena
>   		return err;
>   
>   	/* Apply regs_lri using LRI with pinned context */
> -	return gen8_modify_self(ce, regs_lri, ARRAY_SIZE(regs_lri));
> +	return gen8_modify_self(ce, regs_lri, ARRAY_SIZE(regs_lri), active);
>   }
>   
>   /*
> @@ -2301,9 +2328,11 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream, bool ena
>    * Note: it's only the RCS/Render context that has any OA state.
>    * Note: the first flex register passed must always be R_PWR_CLK_STATE
>    */
> -static int oa_configure_all_contexts(struct i915_perf_stream *stream,
> -				     struct flex *regs,
> -				     size_t num_regs)
> +static int
> +oa_configure_all_contexts(struct i915_perf_stream *stream,
> +			  struct flex *regs,
> +			  size_t num_regs,
> +			  struct i915_active *active)
>   {
>   	struct drm_i915_private *i915 = stream->perf->i915;
>   	struct intel_engine_cs *engine;
> @@ -2360,7 +2389,7 @@ static int oa_configure_all_contexts(struct i915_perf_stream *stream,
>   
>   		regs[0].value = intel_sseu_make_rpcs(i915, &ce->sseu);
>   
> -		err = gen8_modify_self(ce, regs, num_regs);
> +		err = gen8_modify_self(ce, regs, num_regs, active);
>   		if (err)
>   			return err;
>   	}
> @@ -2368,8 +2397,10 @@ static int oa_configure_all_contexts(struct i915_perf_stream *stream,
>   	return 0;
>   }
>   
> -static int gen12_configure_all_contexts(struct i915_perf_stream *stream,
> -					const struct i915_oa_config *oa_config)
> +static int
> +gen12_configure_all_contexts(struct i915_perf_stream *stream,
> +			     const struct i915_oa_config *oa_config,
> +			     struct i915_active *active)
>   {
>   	struct flex regs[] = {
>   		{
> @@ -2378,11 +2409,15 @@ static int gen12_configure_all_contexts(struct i915_perf_stream *stream,
>   		},
>   	};
>   
> -	return oa_configure_all_contexts(stream, regs, ARRAY_SIZE(regs));
> +	return oa_configure_all_contexts(stream,
> +					 regs, ARRAY_SIZE(regs),
> +					 active);
>   }
>   
> -static int lrc_configure_all_contexts(struct i915_perf_stream *stream,
> -				      const struct i915_oa_config *oa_config)
> +static int
> +lrc_configure_all_contexts(struct i915_perf_stream *stream,
> +			   const struct i915_oa_config *oa_config,
> +			   struct i915_active *active)
>   {
>   	/* The MMIO offsets for Flex EU registers aren't contiguous */
>   	const u32 ctx_flexeu0 = stream->perf->ctx_flexeu0_offset;
> @@ -2415,11 +2450,14 @@ static int lrc_configure_all_contexts(struct i915_perf_stream *stream,
>   	for (i = 2; i < ARRAY_SIZE(regs); i++)
>   		regs[i].value = oa_config_flex_reg(oa_config, regs[i].reg);
>   
> -	return oa_configure_all_contexts(stream, regs, ARRAY_SIZE(regs));
> +	return oa_configure_all_contexts(stream,
> +					 regs, ARRAY_SIZE(regs),
> +					 active);
>   }
>   
> -static struct i915_request *
> -gen8_enable_metric_set(struct i915_perf_stream *stream)
> +static int
> +gen8_enable_metric_set(struct i915_perf_stream *stream,
> +		       struct i915_active *active)
>   {
>   	struct intel_uncore *uncore = stream->uncore;
>   	struct i915_oa_config *oa_config = stream->oa_config;
> @@ -2459,11 +2497,13 @@ gen8_enable_metric_set(struct i915_perf_stream *stream)
>   	 * to make sure all slices/subslices are ON before writing to NOA
>   	 * registers.
>   	 */
> -	ret = lrc_configure_all_contexts(stream, oa_config);
> +	ret = lrc_configure_all_contexts(stream, oa_config, active);
>   	if (ret)
> -		return ERR_PTR(ret);
> +		return ret;
>   
> -	return emit_oa_config(stream, oa_config, oa_context(stream));
> +	return emit_oa_config(stream,
> +			      stream->oa_config, oa_context(stream),
> +			      active);
>   }
>   
>   static u32 oag_report_ctx_switches(const struct i915_perf_stream *stream)
> @@ -2473,8 +2513,9 @@ static u32 oag_report_ctx_switches(const struct i915_perf_stream *stream)
>   			     0 : GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS);
>   }
>   
> -static struct i915_request *
> -gen12_enable_metric_set(struct i915_perf_stream *stream)
> +static int
> +gen12_enable_metric_set(struct i915_perf_stream *stream,
> +			struct i915_active *active)
>   {
>   	struct intel_uncore *uncore = stream->uncore;
>   	struct i915_oa_config *oa_config = stream->oa_config;
> @@ -2503,9 +2544,9 @@ gen12_enable_metric_set(struct i915_perf_stream *stream)
>   	 * to make sure all slices/subslices are ON before writing to NOA
>   	 * registers.
>   	 */
> -	ret = gen12_configure_all_contexts(stream, oa_config);
> +	ret = gen12_configure_all_contexts(stream, oa_config, active);
>   	if (ret)
> -		return ERR_PTR(ret);
> +		return ret;
>   
>   	/*
>   	 * For Gen12, performance counters are context
> @@ -2513,12 +2554,14 @@ gen12_enable_metric_set(struct i915_perf_stream *stream)
>   	 * requested this.
>   	 */
>   	if (stream->ctx) {
> -		ret = gen12_configure_oar_context(stream, true);
> +		ret = gen12_configure_oar_context(stream, active);
>   		if (ret)
> -			return ERR_PTR(ret);
> +			return ret;
>   	}
>   
> -	return emit_oa_config(stream, oa_config, oa_context(stream));
> +	return emit_oa_config(stream,
> +			      stream->oa_config, oa_context(stream),
> +			      active);
>   }
>   
>   static void gen8_disable_metric_set(struct i915_perf_stream *stream)
> @@ -2526,7 +2569,7 @@ static void gen8_disable_metric_set(struct i915_perf_stream *stream)
>   	struct intel_uncore *uncore = stream->uncore;
>   
>   	/* Reset all contexts' slices/subslices configurations. */
> -	lrc_configure_all_contexts(stream, NULL);
> +	lrc_configure_all_contexts(stream, NULL, NULL);
>   
>   	intel_uncore_rmw(uncore, GDT_CHICKEN_BITS, GT_NOA_ENABLE, 0);
>   }
> @@ -2536,7 +2579,7 @@ static void gen10_disable_metric_set(struct i915_perf_stream *stream)
>   	struct intel_uncore *uncore = stream->uncore;
>   
>   	/* Reset all contexts' slices/subslices configurations. */
> -	lrc_configure_all_contexts(stream, NULL);
> +	lrc_configure_all_contexts(stream, NULL, NULL);
>   
>   	/* Make sure we disable noa to save power. */
>   	intel_uncore_rmw(uncore, RPM_CONFIG1, GEN10_GT_NOA_ENABLE, 0);
> @@ -2547,11 +2590,11 @@ static void gen12_disable_metric_set(struct i915_perf_stream *stream)
>   	struct intel_uncore *uncore = stream->uncore;
>   
>   	/* Reset all contexts' slices/subslices configurations. */
> -	gen12_configure_all_contexts(stream, NULL);
> +	gen12_configure_all_contexts(stream, NULL, NULL);
>   
>   	/* disable the context save/restore or OAR counters */
>   	if (stream->ctx)
> -		gen12_configure_oar_context(stream, false);
> +		gen12_configure_oar_context(stream, NULL);
>   
>   	/* Make sure we disable noa to save power. */
>   	intel_uncore_rmw(uncore, RPM_CONFIG1, GEN10_GT_NOA_ENABLE, 0);
> @@ -2723,16 +2766,19 @@ static const struct i915_perf_stream_ops i915_oa_stream_ops = {
>   
>   static int i915_perf_stream_enable_sync(struct i915_perf_stream *stream)
>   {
> -	struct i915_request *rq;
> +	struct i915_active *active;
> +	int err;
>   
> -	rq = stream->perf->ops.enable_metric_set(stream);
> -	if (IS_ERR(rq))
> -		return PTR_ERR(rq);
> +	active = i915_active_create();
> +	if (!active)
> +		return -ENOMEM;
>   
> -	i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
> -	i915_request_put(rq);
> +	err = stream->perf->ops.enable_metric_set(stream, active);
> +	if (err == 0)
> +		__i915_active_wait(active, TASK_UNINTERRUPTIBLE);
>   
> -	return 0;
> +	i915_active_put(active);
> +	return err;
>   }
>   
>   static void
> @@ -3217,7 +3263,7 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
>   		return -EINVAL;
>   
>   	if (config != stream->oa_config) {
> -		struct i915_request *rq;
> +		int err;
>   
>   		/*
>   		 * If OA is bound to a specific context, emit the
> @@ -3228,13 +3274,11 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
>   		 * When set globally, we use a low priority kernel context,
>   		 * so it will effectively take effect when idle.
>   		 */
> -		rq = emit_oa_config(stream, config, oa_context(stream));
> -		if (!IS_ERR(rq)) {
> +		err = emit_oa_config(stream, config, oa_context(stream), NULL);
> +		if (!err)
>   			config = xchg(&stream->oa_config, config);
> -			i915_request_put(rq);
> -		} else {
> -			ret = PTR_ERR(rq);
> -		}
> +		else
> +			ret = err;
>   	}
>   
>   	i915_oa_config_put(config);
> diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
> index 32289cbda648..de5cbb40fddf 100644
> --- a/drivers/gpu/drm/i915/i915_perf_types.h
> +++ b/drivers/gpu/drm/i915/i915_perf_types.h
> @@ -22,6 +22,7 @@
>   
>   struct drm_i915_private;
>   struct file;
> +struct i915_active;
>   struct i915_gem_context;
>   struct i915_perf;
>   struct i915_vma;
> @@ -340,8 +341,8 @@ struct i915_oa_ops {
>   	 * counter reports being sampled. May apply system constraints such as
>   	 * disabling EU clock gating as required.
>   	 */
> -	struct i915_request *
> -		(*enable_metric_set)(struct i915_perf_stream *stream);
> +	int (*enable_metric_set)(struct i915_perf_stream *stream,
> +				 struct i915_active *active);
>   
>   	/**
>   	 * @disable_metric_set: Remove system constraints associated with using


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
