Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4EA186789
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 10:11:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8228F89A9A;
	Mon, 16 Mar 2020 09:11:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C6A66E3A2
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 09:11:40 +0000 (UTC)
IronPort-SDR: xrg0K/QPNc0qloC0ayjqeSO/fcyR8ZVgiisHW8N5ImpIrI7d+yy6/VrhWV0+fKAdgdKm+PK1in
 41ePYZcbYFiw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 02:11:40 -0700
IronPort-SDR: Ja3FAvk6BCew8VQpf9AQ/8xm6UQBFncNtwbOqJqcIPMrNJOBXNVUOPttRJm7y6JB+9ThQOvXO8
 1VsOgcVFHXNg==
X-IronPort-AV: E=Sophos;i="5.70,559,1574150400"; d="scan'208";a="417077474"
Received: from fneumann-mobl1.ger.corp.intel.com (HELO [10.252.38.187])
 ([10.252.38.187])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 02:11:37 -0700
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200314103331.2512251-1-lionel.g.landwerlin@intel.com>
 <20200314103331.2512251-3-lionel.g.landwerlin@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f87cbcc7-46db-724e-edae-1da0a14459dd@linux.intel.com>
Date: Mon, 16 Mar 2020 09:11:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200314103331.2512251-3-lionel.g.landwerlin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 3/3] drm/i915/perf: introduce global sseu
 pinning
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


On 14/03/2020 10:33, Lionel Landwerlin wrote:
> On Gen11 powergating half the execution units is a functional
> requirement when using the VME samplers. Not fullfilling this
> requirement can lead to hangs.
> 
> This unfortunately plays fairly poorly with the NOA requirements. NOA
> requires a stable power configuration to maintain its configuration.
> 
> As a result using OA (and NOA feeding into it) so far has required us
> to use a power configuration that can work for all contexts. The only
> power configuration fullfilling this is powergating half the execution
> units.
> 
> This makes performance analysis for 3D workloads somewhat pointless.
> 
> Failing to find a solution that would work for everybody, this change
> introduces a new i915-perf stream open parameter that punts the
> decision off to userspace. If this parameter is omitted, the existing
> Gen11 behavior remains (half EU array powergating).
> 
> This change takes the initiative to move all perf related sseu
> configuration into i915_perf.c
> 
> v2: Make parameter priviliged if different from default
> 
> v3: Fix context modifying its sseu config while i915-perf is enabled
> 
> v4: Always consider global sseu a privileged operation (Tvrtko)
>      Override req_sseu point in intel_sseu_make_rpcs() (Tvrtko)
>      Remove unrelated changes (Tvrtko)
> 
> v5: Some typos (Tvrtko)
>      Process sseu param in read_properties_unlocked() (Tvrtko)
> 
> v6: Actually commit the bits from v5...
>      Fixup some checkpath warnings

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c | 10 +--
>   drivers/gpu/drm/i915/gem/i915_gem_context.h |  4 +
>   drivers/gpu/drm/i915/gt/intel_sseu.c        | 33 ++------
>   drivers/gpu/drm/i915/i915_perf.c            | 83 ++++++++++++++++++++-
>   drivers/gpu/drm/i915/i915_perf_types.h      |  7 ++
>   include/uapi/drm/i915_drm.h                 | 11 +++
>   6 files changed, 115 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 026999b34abd..c0e476fcd1fa 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -1401,10 +1401,10 @@ static int get_ringsize(struct i915_gem_context *ctx,
>   	return 0;
>   }
>   
> -static int
> -user_to_context_sseu(struct drm_i915_private *i915,
> -		     const struct drm_i915_gem_context_param_sseu *user,
> -		     struct intel_sseu *context)
> +int
> +i915_gem_user_to_context_sseu(struct drm_i915_private *i915,
> +			      const struct drm_i915_gem_context_param_sseu *user,
> +			      struct intel_sseu *context)
>   {
>   	const struct sseu_dev_info *device = &RUNTIME_INFO(i915)->sseu;
>   
> @@ -1539,7 +1539,7 @@ static int set_sseu(struct i915_gem_context *ctx,
>   		goto out_ce;
>   	}
>   
> -	ret = user_to_context_sseu(i915, &user_sseu, &sseu);
> +	ret = i915_gem_user_to_context_sseu(i915, &user_sseu, &sseu);
>   	if (ret)
>   		goto out_ce;
>   
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> index 57b7ae2893e1..f37c36719b04 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> @@ -221,4 +221,8 @@ i915_gem_engines_iter_next(struct i915_gem_engines_iter *it);
>   struct i915_lut_handle *i915_lut_handle_alloc(void);
>   void i915_lut_handle_free(struct i915_lut_handle *lut);
>   
> +int i915_gem_user_to_context_sseu(struct drm_i915_private *i915,
> +				  const struct drm_i915_gem_context_param_sseu *user,
> +				  struct intel_sseu *context);
> +
>   #endif /* !__I915_GEM_CONTEXT_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
> index 74f793423231..d173271c7397 100644
> --- a/drivers/gpu/drm/i915/gt/intel_sseu.c
> +++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
> @@ -65,7 +65,6 @@ u32 intel_sseu_make_rpcs(struct drm_i915_private *i915,
>   {
>   	const struct sseu_dev_info *sseu = &RUNTIME_INFO(i915)->sseu;
>   	bool subslice_pg = sseu->has_subslice_pg;
> -	struct intel_sseu ctx_sseu;
>   	u8 slices, subslices;
>   	u32 rpcs = 0;
>   
> @@ -78,31 +77,13 @@ u32 intel_sseu_make_rpcs(struct drm_i915_private *i915,
>   
>   	/*
>   	 * If i915/perf is active, we want a stable powergating configuration
> -	 * on the system.
> -	 *
> -	 * We could choose full enablement, but on ICL we know there are use
> -	 * cases which disable slices for functional, apart for performance
> -	 * reasons. So in this case we select a known stable subset.
> +	 * on the system. Use the configuration pinned by i915/perf.
>   	 */
> -	if (!i915->perf.exclusive_stream) {
> -		ctx_sseu = *req_sseu;
> -	} else {
> -		ctx_sseu = intel_sseu_from_device_info(sseu);
> -
> -		if (IS_GEN(i915, 11)) {
> -			/*
> -			 * We only need subslice count so it doesn't matter
> -			 * which ones we select - just turn off low bits in the
> -			 * amount of half of all available subslices per slice.
> -			 */
> -			ctx_sseu.subslice_mask =
> -				~(~0 << (hweight8(ctx_sseu.subslice_mask) / 2));
> -			ctx_sseu.slice_mask = 0x1;
> -		}
> -	}
> +	if (i915->perf.exclusive_stream)
> +		req_sseu = &i915->perf.sseu;
>   
> -	slices = hweight8(ctx_sseu.slice_mask);
> -	subslices = hweight8(ctx_sseu.subslice_mask);
> +	slices = hweight8(req_sseu->slice_mask);
> +	subslices = hweight8(req_sseu->subslice_mask);
>   
>   	/*
>   	 * Since the SScount bitfield in GEN8_R_PWR_CLK_STATE is only three bits
> @@ -175,13 +156,13 @@ u32 intel_sseu_make_rpcs(struct drm_i915_private *i915,
>   	if (sseu->has_eu_pg) {
>   		u32 val;
>   
> -		val = ctx_sseu.min_eus_per_subslice << GEN8_RPCS_EU_MIN_SHIFT;
> +		val = req_sseu->min_eus_per_subslice << GEN8_RPCS_EU_MIN_SHIFT;
>   		GEM_BUG_ON(val & ~GEN8_RPCS_EU_MIN_MASK);
>   		val &= GEN8_RPCS_EU_MIN_MASK;
>   
>   		rpcs |= val;
>   
> -		val = ctx_sseu.max_eus_per_subslice << GEN8_RPCS_EU_MAX_SHIFT;
> +		val = req_sseu->max_eus_per_subslice << GEN8_RPCS_EU_MAX_SHIFT;
>   		GEM_BUG_ON(val & ~GEN8_RPCS_EU_MAX_MASK);
>   		val &= GEN8_RPCS_EU_MAX_MASK;
>   
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 86c6abaa3e0e..6f0937d318a2 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -344,6 +344,10 @@ static const struct i915_oa_format gen12_oa_formats[I915_OA_FORMAT_MAX] = {
>    * @oa_periodic: Whether to enable periodic OA unit sampling
>    * @oa_period_exponent: The OA unit sampling period is derived from this
>    * @engine: The engine (typically rcs0) being monitored by the OA unit
> + * @has_sseu: Whether @sseu was specified by userspace
> + * @sseu: internal SSEU configuration computed either from the userspace
> + *        specified configuration in the opening parameters or a default value
> + *        (see get_default_sseu_config())
>    *
>    * As read_properties_unlocked() enumerates and validates the properties given
>    * to open a stream of metrics the configuration is built up in the structure
> @@ -363,6 +367,9 @@ struct perf_open_properties {
>   	int oa_period_exponent;
>   
>   	struct intel_engine_cs *engine;
> +
> +	bool has_sseu;
> +	struct intel_sseu sseu;
>   };
>   
>   struct i915_oa_config_bo {
> @@ -2720,6 +2727,46 @@ static int i915_perf_stream_enable_sync(struct i915_perf_stream *stream)
>   	return 0;
>   }
>   
> +static void
> +get_default_sseu_config(struct intel_sseu *out_sseu,
> +			struct intel_engine_cs *engine)
> +{
> +	const struct sseu_dev_info *devinfo_sseu =
> +		&RUNTIME_INFO(engine->i915)->sseu;
> +
> +	*out_sseu = intel_sseu_from_device_info(devinfo_sseu);
> +
> +	if (IS_GEN(engine->i915, 11)) {
> +		/*
> +		 * We only need subslice count so it doesn't matter which ones
> +		 * we select - just turn off low bits in the amount of half of
> +		 * all available subslices per slice.
> +		 */
> +		out_sseu->subslice_mask =
> +			~(~0 << (hweight8(out_sseu->subslice_mask) / 2));
> +		out_sseu->slice_mask = 0x1;
> +	}
> +}
> +
> +static int
> +get_sseu_config(struct intel_sseu *out_sseu,
> +		struct intel_engine_cs *engine,
> +		const struct drm_i915_gem_context_param_sseu *drm_sseu)
> +{
> +	struct intel_engine_cs *user_engine;
> +
> +	user_engine = intel_engine_lookup_user(engine->i915,
> +					       drm_sseu->engine.engine_class,
> +					       drm_sseu->engine.engine_instance);
> +	if (!user_engine)
> +		return -EINVAL;
> +
> +	if (user_engine != engine)
> +		return -EINVAL;
> +
> +	return i915_gem_user_to_context_sseu(engine->i915, drm_sseu, out_sseu);
> +}
> +
>   /**
>    * i915_oa_stream_init - validate combined props for OA stream and init
>    * @stream: An i915 perf stream
> @@ -2852,6 +2899,8 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>   		goto err_oa_buf_alloc;
>   
>   	stream->ops = &i915_oa_stream_ops;
> +
> +	perf->sseu = props->sseu;
>   	WRITE_ONCE(perf->exclusive_stream, stream);
>   
>   	ret = i915_perf_stream_enable_sync(stream);
> @@ -3397,6 +3446,14 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
>   		privileged_op = true;
>   	}
>   
> +	/*
> +	 * Asking for SSEU configuration is a priviliged operation.
> +	 */
> +	if (props->has_sseu)
> +		privileged_op = true;
> +	else
> +		get_default_sseu_config(&props->sseu, props->engine);
> +
>   	/* Similar to perf's kernel.perf_paranoid_cpu sysctl option
>   	 * we check a dev.i915.perf_stream_paranoid sysctl option
>   	 * to determine if it's ok to access system wide OA counters
> @@ -3492,6 +3549,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   {
>   	u64 __user *uprop = uprops;
>   	u32 i;
> +	int ret;
>   
>   	memset(props, 0, sizeof(struct perf_open_properties));
>   
> @@ -3523,7 +3581,6 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   	for (i = 0; i < n_props; i++) {
>   		u64 oa_period, oa_freq_hz;
>   		u64 id, value;
> -		int ret;
>   
>   		ret = get_user(id, uprop);
>   		if (ret)
> @@ -3609,6 +3666,24 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   		case DRM_I915_PERF_PROP_HOLD_PREEMPTION:
>   			props->hold_preemption = !!value;
>   			break;
> +		case DRM_I915_PERF_PROP_GLOBAL_SSEU: {
> +			struct drm_i915_gem_context_param_sseu user_sseu;
> +
> +			if (copy_from_user(&user_sseu,
> +					   u64_to_user_ptr(value),
> +					   sizeof(user_sseu))) {
> +				DRM_DEBUG("Unable to copy global sseu parameter\n");
> +				return -EFAULT;
> +			}
> +
> +			ret = get_sseu_config(&props->sseu, props->engine, &user_sseu);
> +			if (ret) {
> +				DRM_DEBUG("Invalid SSEU configuration\n");
> +				return ret;
> +			}
> +			props->has_sseu = true;
> +			break;
> +		}
>   		case DRM_I915_PERF_PROP_MAX:
>   			MISSING_CASE(id);
>   			return -EINVAL;
> @@ -4382,8 +4457,12 @@ int i915_perf_ioctl_version(void)
>   	 *    preemption on a particular context so that performance data is
>   	 *    accessible from a delta of MI_RPC reports without looking at the
>   	 *    OA buffer.
> +	 *
> +	 * 4: Add DRM_I915_PERF_PROP_ALLOWED_SSEU to limit what contexts can
> +	 *    be run for the duration of the performance recording based on
> +	 *    their SSEU configuration.
>   	 */
> -	return 3;
> +	return 4;
>   }
>   
>   #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
> index f4ccd2adfee6..32289cbda648 100644
> --- a/drivers/gpu/drm/i915/i915_perf_types.h
> +++ b/drivers/gpu/drm/i915/i915_perf_types.h
> @@ -16,6 +16,7 @@
>   #include <linux/uuid.h>
>   #include <linux/wait.h>
>   
> +#include "gt/intel_sseu.h"
>   #include "i915_reg.h"
>   #include "intel_wakeref.h"
>   
> @@ -407,6 +408,12 @@ struct i915_perf {
>   	 */
>   	struct i915_perf_stream *exclusive_stream;
>   
> +	/**
> +	 * @sseu: sseu configuration selected to run while perf is active,
> +	 * applies to all contexts.
> +	 */
> +	struct intel_sseu sseu;
> +
>   	/**
>   	 * For rate limiting any notifications of spurious
>   	 * invalid OA reports
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 2813e579b480..db649d03ab52 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1969,6 +1969,17 @@ enum drm_i915_perf_property_id {
>   	 */
>   	DRM_I915_PERF_PROP_HOLD_PREEMPTION,
>   
> +	/**
> +	 * Specifying this pins all contexts to the specified SSEU power
> +	 * configuration for the duration of the recording.
> +	 *
> +	 * This parameter's value is a pointer to a struct
> +	 * drm_i915_gem_context_param_sseu.
> +	 *
> +	 * This property is available in perf revision 4.
> +	 */
> +	DRM_I915_PERF_PROP_GLOBAL_SSEU,
> +
>   	DRM_I915_PERF_PROP_MAX /* non-ABI */
>   };
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
