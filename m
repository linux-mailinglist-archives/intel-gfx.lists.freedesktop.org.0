Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A5217922C
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 15:20:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 674F489F1B;
	Wed,  4 Mar 2020 14:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41D6C89F1B
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 14:20:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 06:20:27 -0800
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; d="scan'208";a="234048209"
Received: from srware-mobl.ger.corp.intel.com (HELO [10.252.25.112])
 ([10.252.25.112])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 04 Mar 2020 06:20:26 -0800
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200303091624.1838714-1-lionel.g.landwerlin@intel.com>
 <20200303091624.1838714-2-lionel.g.landwerlin@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <cbd1d89b-cdfc-74f8-24d7-9d9421ef3fa0@linux.intel.com>
Date: Wed, 4 Mar 2020 14:20:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200303091624.1838714-2-lionel.g.landwerlin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/perf: introduce global sseu
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


On 03/03/2020 09:16, Lionel Landwerlin wrote:
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
> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c | 10 +--
>   drivers/gpu/drm/i915/gem/i915_gem_context.h |  4 +
>   drivers/gpu/drm/i915/gt/intel_sseu.c        | 13 +--
>   drivers/gpu/drm/i915/i915_perf.c            | 90 ++++++++++++++++++---
>   drivers/gpu/drm/i915/i915_perf_types.h      |  7 ++
>   include/uapi/drm/i915_drm.h                 | 11 +++
>   6 files changed, 109 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index e525ead073f7..652f84c3cc2b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -1279,10 +1279,10 @@ static int get_ringsize(struct i915_gem_context *ctx,
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
> @@ -1417,7 +1417,7 @@ static int set_sseu(struct i915_gem_context *ctx,
>   		goto out_ce;
>   	}
>   
> -	ret = user_to_context_sseu(i915, &user_sseu, &sseu);
> +	ret = i915_gem_user_to_context_sseu(i915, &user_sseu, &sseu);
>   	if (ret)
>   		goto out_ce;
>   
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> index 3ae61a355d87..dff1380373f4 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> @@ -222,4 +222,8 @@ i915_gem_engines_iter_next(struct i915_gem_engines_iter *it);
>   struct i915_lut_handle *i915_lut_handle_alloc(void);
>   void i915_lut_handle_free(struct i915_lut_handle *lut);
>   
> +int i915_gem_user_to_context_sseu(struct drm_i915_private *i915,
> +				  const struct drm_i915_gem_context_param_sseu *user,
> +				  struct intel_sseu *context);
> +
>   #endif /* !__I915_GEM_CONTEXT_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
> index 74f793423231..08bd828d90cb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_sseu.c
> +++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
> @@ -87,18 +87,7 @@ u32 intel_sseu_make_rpcs(struct drm_i915_private *i915,
>   	if (!i915->perf.exclusive_stream) {
>   		ctx_sseu = *req_sseu;
>   	} else {
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
> +		ctx_sseu = i915->perf.sseu;

Since this function does not need to modify ctx_sseu any more, you could 
just make it work on a pointer, either assigned from the passed in 
req_sseu or from perf.

>   	}
>   
>   	slices = hweight8(ctx_sseu.slice_mask);
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 0069f09b988c..68b45ab86303 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -344,6 +344,8 @@ static const struct i915_oa_format gen12_oa_formats[I915_OA_FORMAT_MAX] = {
>    * @oa_periodic: Whether to enable periodic OA unit sampling
>    * @oa_period_exponent: The OA unit sampling period is derived from this
>    * @engine: The engine (typically rcs0) being monitored by the OA unit
> + * @sseu: Selected sseu configuration for recording
> + * @default_sseu: Default sseu configuration for recording
>    *
>    * As read_properties_unlocked() enumerates and validates the properties given
>    * to open a stream of metrics the configuration is built up in the structure
> @@ -363,6 +365,9 @@ struct perf_open_properties {
>   	int oa_period_exponent;
>   
>   	struct intel_engine_cs *engine;
> +
> +	struct intel_sseu default_sseu;

I did not quite understand why is this stored here? It is a conversion 
of device default sseu, right? Only purpose to check against it during 
opening of the perf stream? It wouldn't work to just reject the property 
in read_properties_unlocked if not privileged? (I am jumping back and 
forth in the patch a bit, so expect possible redundancy in questions.)

> +	struct intel_sseu sseu;
>   };
>   
>   struct i915_oa_config_bo {
> @@ -2098,9 +2103,6 @@ gen8_update_reg_state_unlocked(const struct intel_context *ce,
>   	for (i = 0; i < ARRAY_SIZE(flex_regs); i++)
>   		reg_state[ctx_flexeu0 + i * 2 + 1] =
>   			oa_config_flex_reg(stream->oa_config, flex_regs[i]);
> -
> -	reg_state[CTX_R_PWR_CLK_STATE] =
> -		intel_sseu_make_rpcs(ce->engine->i915, &ce->sseu);
>   }
>   
>   struct flex {
> @@ -2723,6 +2725,47 @@ static int i915_perf_stream_enable_sync(struct i915_perf_stream *stream)
>   	return 0;
>   }
>   
> +static int
> +get_sseu_config(struct intel_sseu *out_sseu,
> +		struct intel_engine_cs *engine,
> +		const struct drm_i915_gem_context_param_sseu *drm_sseu)
> +{
> +	struct intel_engine_cs *user_engine;
> +
> +	if (!drm_sseu) {
> +		const struct sseu_dev_info *devinfo_sseu =
> +			&RUNTIME_INFO(engine->i915)->sseu;
> +
> +		*out_sseu = intel_sseu_from_device_info(devinfo_sseu);
> +
> +		if (IS_GEN(engine->i915, 11)) {
> +			/*
> +			 * We only need subslice count so it doesn't matter
> +			 * which ones we select - just turn off low bits in
> +			 * the amount of half of all available subslices per
> +			 * slice.
> +			 */
> +			out_sseu->subslice_mask =
> +				~(~0 << (hweight8(out_sseu->subslice_mask) / 2));
> +			out_sseu->slice_mask = 0x1;
> +		}
> +
> +		return 0;
> +	}
> +
> +	user_engine = intel_engine_lookup_user(
> +		engine->i915,
> +		drm_sseu->engine.engine_class,
> +		drm_sseu->engine.engine_instance);
> +	if (!user_engine)
> +		return -EINVAL;
> +
> +	if (user_engine != engine)
> +		return -EINVAL;
> +
> +	return i915_gem_user_to_context_sseu(engine->i915, drm_sseu, out_sseu);
> +}

This function is confusing. It appears to be doing two things, depending 
on whether the third parameter was given. In which case it also 
effectively does not use the second parameter at all. I think it needs 
to be two functions, or if the prop check can be simplified maybe even 
just one simpler one.

> +
>   /**
>    * i915_oa_stream_init - validate combined props for OA stream and init
>    * @stream: An i915 perf stream
> @@ -2855,6 +2898,8 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>   		goto err_oa_buf_alloc;
>   
>   	stream->ops = &i915_oa_stream_ops;
> +
> +	perf->sseu = props->sseu;
>   	WRITE_ONCE(perf->exclusive_stream, stream);
>   
>   	ret = i915_perf_stream_enable_sync(stream);
> @@ -2906,10 +2951,6 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
>   
>   	/* perf.exclusive_stream serialised by lrc_configure_all_contexts() */
>   	stream = READ_ONCE(engine->i915->perf.exclusive_stream);
> -	/*
> -	 * For gen12, only CTX_R_PWR_CLK_STATE needs update, but the caller
> -	 * is already doing that, so nothing to be done for gen12 here.
> -	 */

Why are you removing this comment in this patch?

>   	if (stream && INTEL_GEN(stream->perf->i915) < 12)
>   		gen8_update_reg_state_unlocked(ce, stream);
>   }
> @@ -3404,6 +3445,13 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
>   		privileged_op = true;
>   	}
>   
> +	/*
> +	 * Asking for a SSEU configuration different than the default is a
> +	 * priviliged operation.
> +	 */
> +	if (memcmp(&props->sseu, &props->default_sseu, sizeof(props->sseu)) != 0)
> +		privileged_op = true;

Why do we want to make a distinction wrt priviledged or not, between 
asking for the device default configuration and asking for a different 
configuration? I mean, I would have expected the very act of using the 
sseu extension in perf open could be privileged, no?

> +
>   	/* Similar to perf's kernel.perf_paranoid_cpu sysctl option
>   	 * we check a dev.i915.perf_stream_paranoid sysctl option
>   	 * to determine if it's ok to access system wide OA counters
> @@ -3499,6 +3547,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   {
>   	u64 __user *uprop = uprops;
>   	u32 i;
> +	int ret;
>   
>   	memset(props, 0, sizeof(struct perf_open_properties));
>   
> @@ -3516,6 +3565,9 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   		return -EINVAL;
>   	}
>   
> +	ret = get_sseu_config(&props->default_sseu, props->engine, NULL);
> +	GEM_BUG_ON(ret != 0);
> +
>   	/* Considering that ID = 0 is reserved and assuming that we don't
>   	 * (currently) expect any configurations to ever specify duplicate
>   	 * values for a particular property ID then the last _PROP_MAX value is
> @@ -3530,7 +3582,6 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   	for (i = 0; i < n_props; i++) {
>   		u64 oa_period, oa_freq_hz;
>   		u64 id, value;
> -		int ret;
>   
>   		ret = get_user(id, uprop);
>   		if (ret)
> @@ -3616,6 +3667,23 @@ static int read_properties_unlocked(struct i915_perf *perf,
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
> +				DRM_DEBUG("Invalid global sseu parameter\n");
> +				return ret;
> +			}
> +			break;
> +		}
>   		case DRM_I915_PERF_PROP_MAX:
>   			MISSING_CASE(id);
>   			return -EINVAL;
> @@ -4389,8 +4457,12 @@ int i915_perf_ioctl_version(void)
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

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
