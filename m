Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5305D18988F
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 10:53:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF7D16E8A3;
	Wed, 18 Mar 2020 09:53:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAA166E8A3
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 09:53:14 +0000 (UTC)
IronPort-SDR: H7cjmCSLrv6EqI4mQYgbbfYqz5a4sCRu6EP8zNC/vnUqMA9bpr5gVvS+mjT+1zHGvyea+v7eFk
 ofeLD4JaSrKQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 02:53:14 -0700
IronPort-SDR: ABbyrczwNW71Lxk0tg9jshDmqbM5bevJyWD/fsTg18OIPNgMXJnhCUdUGP7p1fLrngAgh+SRit
 lNEAGftGtHAA==
X-IronPort-AV: E=Sophos;i="5.70,566,1574150400"; d="scan'208";a="238557583"
Received: from unknown (HELO [10.214.196.8]) ([10.214.196.8])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 02:53:12 -0700
To: Ankit Navik <ankit.p.navik@intel.com>, intel-gfx@lists.freedesktop.org
References: <1584440962-28453-1-git-send-email-ankit.p.navik@intel.com>
 <1584440962-28453-3-git-send-email-ankit.p.navik@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6d728a46-ebb4-48e1-5ed8-cb03adb00b4f@linux.intel.com>
Date: Wed, 18 Mar 2020 09:53:09 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1584440962-28453-3-git-send-email-ankit.p.navik@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v8 2/3] drm/i915: set optimum
 eu/slice/sub-slice configuration based on load type
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


On 17/03/2020 10:29, Ankit Navik wrote:
> This patch will select optimum eu/slice/sub-slice configuration based on
> type of load (low, medium, high) as input.
> Based on our readings and experiments we have predefined set of optimum
> configuration for each platform(CHT, KBL).
> i915_gem_context_set_load_type will select optimum configuration from
> pre-defined optimum configuration table(opt_config).
> 
> It also introduce flag update_render_config which can set by any governor.
> 
> v2:
>   * Move static optimum_config to device init time.
>   * Rename function to appropriate name, fix data types and patch ordering.
>   * Rename prev_load_type to pending_load_type. (Tvrtko Ursulin)
> 
> v3:
>   * Add safe guard check in i915_gem_context_set_load_type.
>   * Rename struct from optimum_config to i915_sseu_optimum_config to
>     avoid namespace clashes.
>   * Reduces memcpy for space efficient.
>   * Rebase.
>   * Improved commit message. (Tvrtko Ursulin)
> 
> v4:
>   * Move optimum config table to file scope. (Tvrtko Ursulin)
> 
> v5:
>   * Adds optimal table of slice/sub-slice/EU for Gen 9 GT1.
>   * Rebase.
> 
> v6:
>   * Rebase.
>   * Fix warnings.
> 
> v7:
>   * Fix return conditions.
>   * Remove i915_gem_context_set_load_type and move logic to
>     __execlists_update_reg_state. (Tvrtko Ursulin)
> 
> v8:
>   * Fix warnings.
>   * Rebase.
> 
> Cc: Vipin Anand <vipin.anand@intel.com>
> Signed-off-by: Ankit Navik <ankit.p.navik@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c       |  3 +
>   drivers/gpu/drm/i915/gem/i915_gem_context_types.h | 32 +++++++++++
>   drivers/gpu/drm/i915/gt/intel_context_sseu.c      |  2 +
>   drivers/gpu/drm/i915/gt/intel_context_types.h     |  2 +
>   drivers/gpu/drm/i915/gt/intel_lrc.c               | 70 ++++++++++++++++++++++-
>   drivers/gpu/drm/i915/i915_drv.h                   |  5 ++
>   drivers/gpu/drm/i915/intel_device_info.c          | 59 ++++++++++++++++++-
>   7 files changed, 169 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index d0ff999429ff..3aad45b0ba5a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -880,6 +880,9 @@ i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
>   
>   	trace_i915_context_create(ctx);
>   	atomic_set(&ctx->req_cnt, 0);
> +	ctx->slice_cnt = hweight8(RUNTIME_INFO(i915)->sseu.slice_mask);
> +	ctx->subslice_cnt = hweight8(RUNTIME_INFO(i915)->sseu.subslice_mask[0]);
> +	ctx->eu_cnt = RUNTIME_INFO(i915)->sseu.eu_per_subslice;
>   
>   	return ctx;
>   }
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index a9ba13f8865e..1af1acd73794 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -46,6 +46,19 @@ struct i915_gem_engines_iter {
>   	const struct i915_gem_engines *engines;
>   };
>   
> +enum gem_load_type {
> +	LOAD_TYPE_LOW,
> +	LOAD_TYPE_MEDIUM,
> +	LOAD_TYPE_HIGH,
> +	LOAD_TYPE_LAST
> +};
> +
> +struct i915_sseu_optimum_config {
> +	u8 slice;
> +	u8 subslice;
> +	u8 eu;
> +};
> +
>   /**
>    * struct i915_gem_context - client state
>    *
> @@ -155,6 +168,25 @@ struct i915_gem_context {
>   	 */
>   	atomic_t active_count;
>   
> +	/** slice_cnt: used to set the # of slices to be enabled. */
> +	u8 slice_cnt;
> +
> +	/** subslice_cnt: used to set the # of subslices to be enabled. */
> +	u8 subslice_cnt;
> +
> +	/** eu_cnt: used to set the # of eu to be enabled. */
> +	u8 eu_cnt;
> +
> +	/** load_type: The designated load_type (high/medium/low) for a given
> +	 * number of pending commands in the command queue.
> +	 */
> +	enum gem_load_type load_type;
> +
> +	/** pending_load_type: The earlier load type that the GPU was configured
> +	 * for (high/medium/low).
> +	 */
> +	enum gem_load_type pending_load_type;
> +
>   	/**
>   	 * @hang_timestamp: The last time(s) this context caused a GPU hang
>   	 */
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_sseu.c b/drivers/gpu/drm/i915/gt/intel_context_sseu.c
> index 57a30956c922..4f51bfb9690c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_sseu.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context_sseu.c
> @@ -84,6 +84,8 @@ intel_context_reconfigure_sseu(struct intel_context *ce,
>   	if (ret)
>   		return ret;
>   
> +	ce->user_sseu = true;
> +
>   	/* Nothing to do if unmodified. */
>   	if (!memcmp(&ce->sseu, &sseu, sizeof(sseu)))
>   		goto unlock;
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 0f3b68b95c56..fd5811110026 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -93,6 +93,8 @@ struct intel_context {
>   
>   	const struct intel_context_ops *ops;
>   
> +	bool user_sseu;
> +
>   	/** sseu: Control eu/slice partitioning */
>   	struct intel_sseu sseu;
>   };
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index ccfebebb0071..7c5f05886278 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -177,6 +177,14 @@
>   /* Typical size of the average request (2 pipecontrols and a MI_BB) */
>   #define EXECLISTS_REQUEST_SIZE 64 /* bytes */
>   
> +/*
> + * Anything above threshold is considered as HIGH load, less is considered
> + * as LOW load and equal is considered as MEDIUM load.
> + *
> + * The threshold value of three active requests pending.
> + */
> +#define PENDING_THRESHOLD_MEDIUM 3
> +
>   struct virtual_engine {
>   	struct intel_engine_cs base;
>   	struct intel_context context;
> @@ -3002,6 +3010,36 @@ static void execlists_context_unpin(struct intel_context *ce)
>   	i915_gem_object_unpin_map(ce->state->obj);
>   }
>   
> +static u32
> +get_context_rpcs_config(struct i915_gem_context *ctx)
> +{
> +	u32 rpcs = 0;
> +	struct drm_i915_private *dev_priv = ctx->i915;
> +
> +	if (INTEL_GEN(dev_priv) < 8)
> +		return 0;
> +
> +	if (RUNTIME_INFO(dev_priv)->sseu.has_slice_pg) {
> +		rpcs |= GEN8_RPCS_S_CNT_ENABLE;
> +		rpcs |= ctx->slice_cnt << GEN8_RPCS_S_CNT_SHIFT;
> +		rpcs |= GEN8_RPCS_ENABLE;
> +	}
> +
> +	if (RUNTIME_INFO(dev_priv)->sseu.has_subslice_pg) {
> +		rpcs |= GEN8_RPCS_SS_CNT_ENABLE;
> +		rpcs |= ctx->subslice_cnt << GEN8_RPCS_SS_CNT_SHIFT;
> +		rpcs |= GEN8_RPCS_ENABLE;
> +	}
> +
> +	if (RUNTIME_INFO(dev_priv)->sseu.has_eu_pg) {
> +		rpcs |= ctx->eu_cnt << GEN8_RPCS_EU_MIN_SHIFT;
> +		rpcs |= ctx->eu_cnt << GEN8_RPCS_EU_MAX_SHIFT;
> +		rpcs |= GEN8_RPCS_ENABLE;
> +	}
> +
> +	return rpcs;
> +}
> +
>   static void
>   __execlists_update_reg_state(const struct intel_context *ce,
>   			     const struct intel_engine_cs *engine,
> @@ -3009,6 +3047,10 @@ __execlists_update_reg_state(const struct intel_context *ce,
>   {
>   	struct intel_ring *ring = ce->ring;
>   	u32 *regs = ce->lrc_reg_state;
> +	const struct i915_sseu_optimum_config *cfg;
> +	struct i915_gem_context *ctx;
> +	enum gem_load_type load_type;
> +	u32 req_pending;
>   
>   	GEM_BUG_ON(!intel_ring_offset_valid(ring, head));
>   	GEM_BUG_ON(!intel_ring_offset_valid(ring, ring->tail));
> @@ -3018,10 +3060,31 @@ __execlists_update_reg_state(const struct intel_context *ce,
>   	regs[CTX_RING_TAIL] = ring->tail;
>   	regs[CTX_RING_CTL] = RING_CTL_SIZE(ring->size) | RING_VALID;
>   
> +	GEM_BUG_ON(ce->engine->class != RENDER_CLASS);
> +	ctx = rcu_dereference_protected(ce->gem_context, true);
> +
> +	req_pending = atomic_read(&ctx->req_cnt);
> +
> +	if (req_pending > PENDING_THRESHOLD_MEDIUM)
> +		load_type = LOAD_TYPE_HIGH;
> +	else if (req_pending == PENDING_THRESHOLD_MEDIUM)
> +		load_type = LOAD_TYPE_MEDIUM;
> +	else
> +		load_type = LOAD_TYPE_LOW;
> +
> +	cfg = &ctx->i915->opt_config[load_type];

cfg = ...

> +
>   	/* RPCS */
>   	if (engine->class == RENDER_CLASS) {
> -		regs[CTX_R_PWR_CLK_STATE] =
> -			intel_sseu_make_rpcs(engine->i915, &ce->sseu);
> +
> +		if (!ctx || !ctx->i915->predictive_load_enable
> +			 || ce->user_sseu) {
> +			regs[CTX_R_PWR_CLK_STATE] =
> +				intel_sseu_make_rpcs(engine->i915, &ce->sseu);
> +		} else {
> +			regs[CTX_R_PWR_CLK_STATE] =
> +				get_context_rpcs_config(ce->gem_context);

... cfg not used. It would be impressive if this series shows any 
measurable change! :)

Take https://patchwork.freedesktop.org/patch/348167/?series=71875&rev=1 
as a base and just change the logic in intel_sseu_make please.

Regards,

Tvrtko

> +		}
>   
>   		i915_oa_init_reg_state(ce, engine);
>   	}
> @@ -3046,6 +3109,9 @@ __execlists_context_pin(struct intel_context *ce,
>   	ce->lrc_reg_state = vaddr + LRC_STATE_PN * PAGE_SIZE;
>   	__execlists_update_reg_state(ce, engine, ce->ring->tail);
>   
> +	if (ce->gem_context->load_type != ce->gem_context->pending_load_type)
> +		ce->gem_context->load_type = ce->gem_context->pending_load_type;
> +
>   	return 0;
>   }
>   
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index a7ea1d855359..81e552abd896 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -924,6 +924,11 @@ struct drm_i915_private {
>   	/* protects panel power sequencer state */
>   	struct mutex pps_mutex;
>   
> +	/* optimal slice/subslice/EU configration state */
> +	struct i915_sseu_optimum_config *opt_config;
> +
> +	bool predictive_load_enable;
> +
>   	unsigned int fsb_freq, mem_freq, is_ddr3;
>   	unsigned int skl_preferred_vco_freq;
>   	unsigned int max_cdclk_freq;
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index d7fe12734db8..1bd2595108a9 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -899,6 +899,34 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
>   	RUNTIME_INFO(i915)->platform_mask[pi] |= mask;
>   }
>   
> +/* static table of slice/subslice/EU for Cherryview */
> +static const struct i915_sseu_optimum_config chv_config[LOAD_TYPE_LAST] = {
> +	{1, 1, 4},	/* Low */
> +	{1, 1, 6},	/* Medium */
> +	{1, 2, 6}	/* High */
> +};
> +
> +/* static table of slice/subslice/EU for GLK GT1 */
> +static const struct i915_sseu_optimum_config glk_gt1_config[LOAD_TYPE_LAST] = {
> +	{1, 2, 2},	/* Low */
> +	{1, 2, 3},	/* Medium */
> +	{1, 2, 6}	/* High */
> +};
> +
> +/* static table of slice/subslice/EU for KBL GT2 */
> +static const struct i915_sseu_optimum_config kbl_gt2_config[LOAD_TYPE_LAST] = {
> +	{1, 3, 2},	/* Low */
> +	{1, 3, 4},	/* Medium */
> +	{1, 3, 8}	/* High */
> +};
> +
> +/* static table of slice/subslice/EU for KBL GT3 */
> +static const struct i915_sseu_optimum_config kbl_gt3_config[LOAD_TYPE_LAST] = {
> +	{2, 3, 4},	/* Low */
> +	{2, 3, 6},	/* Medium */
> +	{2, 3, 8}	/* High */
> +};
> +
>   /**
>    * intel_device_info_runtime_init - initialize runtime info
>    * @dev_priv: the i915 device
> @@ -1027,12 +1055,39 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>   	/* Initialize slice/subslice/EU info */
>   	if (IS_HASWELL(dev_priv))
>   		hsw_sseu_info_init(dev_priv);
> -	else if (IS_CHERRYVIEW(dev_priv))
> +	else if (IS_CHERRYVIEW(dev_priv)) {
>   		cherryview_sseu_info_init(dev_priv);
> +		BUILD_BUG_ON(ARRAY_SIZE(chv_config) != LOAD_TYPE_LAST);
> +		dev_priv->opt_config = (struct i915_sseu_optimum_config *)
> +					chv_config;
> +	}
>   	else if (IS_BROADWELL(dev_priv))
>   		bdw_sseu_info_init(dev_priv);
> -	else if (IS_GEN(dev_priv, 9))
> +	else if (IS_GEN(dev_priv, 9)) {
>   		gen9_sseu_info_init(dev_priv);
> +
> +		switch (info->gt) {
> +		default: /* fall through */
> +		case 1:
> +			BUILD_BUG_ON(ARRAY_SIZE(glk_gt1_config) !=
> +						LOAD_TYPE_LAST);
> +			dev_priv->opt_config =
> +			(struct i915_sseu_optimum_config *) glk_gt1_config;
> +		break;
> +		case 2:
> +			BUILD_BUG_ON(ARRAY_SIZE(kbl_gt2_config) !=
> +						LOAD_TYPE_LAST);
> +			dev_priv->opt_config =
> +			(struct i915_sseu_optimum_config *) kbl_gt2_config;
> +		break;
> +		case 3:
> +			BUILD_BUG_ON(ARRAY_SIZE(kbl_gt3_config) !=
> +						LOAD_TYPE_LAST);
> +			dev_priv->opt_config =
> +			(struct i915_sseu_optimum_config *)kbl_gt3_config;
> +		break;
> +		}
> +	}
>   	else if (IS_GEN(dev_priv, 10))
>   		gen10_sseu_info_init(dev_priv);
>   	else if (IS_GEN(dev_priv, 11))
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
