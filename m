Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC1756B2D1
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 08:34:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65D4C10E11F;
	Fri,  8 Jul 2022 06:34:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 610E510E1BB
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 06:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657262092; x=1688798092;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=jXLhn0pkQpkMuE1CZC9bvSkdL7Tq7p0jEKIZQfrDQHo=;
 b=JfBJ5KI6dxwSiIbNvpaZAwx8k61R/BTIzYR4qQGE68j33wFj2Qwa9RYX
 cgAUVi399gklTcBIiFWqxMBuuvkYbm7PYn5VQKCBs0hOn6mtbxL+yxSLD
 0kc2aIgUzPOSLpEgZhY89aidGPZuifX/qnAFbOhsy417bzk7HbB5gD/8f
 6ux8HKggcCgAPS8vEMYsWYbWbwjWFVbqk+g7z3RhRHgpb8iEcpJrYOa0t
 z8ZgUJWP5xn8GcTectnXz3p8vJvw0la40yMB8GxC38eVYjnYiYZlcMfKq
 li2IhsnEmtWTf4t1fjzyWby983AlfwtvofDanwUNXvFc/C7+Lp+AqrQ/3 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="370518495"
X-IronPort-AV: E=Sophos;i="5.92,254,1650956400"; d="scan'208";a="370518495"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 23:34:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,254,1650956400"; d="scan'208";a="621097057"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga008.jf.intel.com with ESMTP; 07 Jul 2022 23:34:45 -0700
Received: from [10.249.131.65] (plautenb-mobl.ger.corp.intel.com
 [10.249.131.65])
 by linux.intel.com (Postfix) with ESMTP id 7EDFC580BA0;
 Thu,  7 Jul 2022 23:34:43 -0700 (PDT)
Message-ID: <f3d7ac33-1bfb-0251-7e3f-11b43bd44ae6@intel.com>
Date: Fri, 8 Jul 2022 09:34:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
References: <20220707193002.2859653-1-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <20220707193002.2859653-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] i915/perf: Replace DRM_DEBUG with
 driver specific drm_dbg call
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 07/07/2022 22:30, Nerlige Ramappa, Umesh wrote:
> DRM_DEBUG is not the right debug call to use in i915 OA, replace it with
> driver specific drm_dbg() call (Matt).
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_perf.c | 151 ++++++++++++++++++++-----------
>   1 file changed, 100 insertions(+), 51 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 1577ab6754db..b3beb89884e0 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -885,8 +885,9 @@ static int gen8_oa_read(struct i915_perf_stream *stream,
>   		if (ret)
>   			return ret;
>   
> -		DRM_DEBUG("OA buffer overflow (exponent = %d): force restart\n",
> -			  stream->period_exponent);
> +		drm_dbg(&stream->perf->i915->drm,
> +			"OA buffer overflow (exponent = %d): force restart\n",
> +			stream->period_exponent);
>   
>   		stream->perf->ops.oa_disable(stream);
>   		stream->perf->ops.oa_enable(stream);
> @@ -1108,8 +1109,9 @@ static int gen7_oa_read(struct i915_perf_stream *stream,
>   		if (ret)
>   			return ret;
>   
> -		DRM_DEBUG("OA buffer overflow (exponent = %d): force restart\n",
> -			  stream->period_exponent);
> +		drm_dbg(&stream->perf->i915->drm,
> +			"OA buffer overflow (exponent = %d): force restart\n",
> +			stream->period_exponent);
>   
>   		stream->perf->ops.oa_disable(stream);
>   		stream->perf->ops.oa_enable(stream);
> @@ -2863,7 +2865,8 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>   	int ret;
>   
>   	if (!props->engine) {
> -		DRM_DEBUG("OA engine not specified\n");
> +		drm_dbg(&stream->perf->i915->drm,
> +			"OA engine not specified\n");
>   		return -EINVAL;
>   	}
>   
> @@ -2873,18 +2876,21 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>   	 * IDs
>   	 */
>   	if (!perf->metrics_kobj) {
> -		DRM_DEBUG("OA metrics weren't advertised via sysfs\n");
> +		drm_dbg(&stream->perf->i915->drm,
> +			"OA metrics weren't advertised via sysfs\n");
>   		return -EINVAL;
>   	}
>   
>   	if (!(props->sample_flags & SAMPLE_OA_REPORT) &&
>   	    (GRAPHICS_VER(perf->i915) < 12 || !stream->ctx)) {
> -		DRM_DEBUG("Only OA report sampling supported\n");
> +		drm_dbg(&stream->perf->i915->drm,
> +			"Only OA report sampling supported\n");
>   		return -EINVAL;
>   	}
>   
>   	if (!perf->ops.enable_metric_set) {
> -		DRM_DEBUG("OA unit not supported\n");
> +		drm_dbg(&stream->perf->i915->drm,
> +			"OA unit not supported\n");
>   		return -ENODEV;
>   	}
>   
> @@ -2894,12 +2900,14 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>   	 * we currently only allow exclusive access
>   	 */
>   	if (perf->exclusive_stream) {
> -		DRM_DEBUG("OA unit already in use\n");
> +		drm_dbg(&stream->perf->i915->drm,
> +			"OA unit already in use\n");
>   		return -EBUSY;
>   	}
>   
>   	if (!props->oa_format) {
> -		DRM_DEBUG("OA report format not specified\n");
> +		drm_dbg(&stream->perf->i915->drm,
> +			"OA report format not specified\n");
>   		return -EINVAL;
>   	}
>   
> @@ -2929,20 +2937,23 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>   	if (stream->ctx) {
>   		ret = oa_get_render_ctx_id(stream);
>   		if (ret) {
> -			DRM_DEBUG("Invalid context id to filter with\n");
> +			drm_dbg(&stream->perf->i915->drm,
> +				"Invalid context id to filter with\n");
>   			return ret;
>   		}
>   	}
>   
>   	ret = alloc_noa_wait(stream);
>   	if (ret) {
> -		DRM_DEBUG("Unable to allocate NOA wait batch buffer\n");
> +		drm_dbg(&stream->perf->i915->drm,
> +			"Unable to allocate NOA wait batch buffer\n");
>   		goto err_noa_wait_alloc;
>   	}
>   
>   	stream->oa_config = i915_perf_get_oa_config(perf, props->metrics_set);
>   	if (!stream->oa_config) {
> -		DRM_DEBUG("Invalid OA config id=%i\n", props->metrics_set);
> +		drm_dbg(&stream->perf->i915->drm,
> +			"Invalid OA config id=%i\n", props->metrics_set);
>   		ret = -EINVAL;
>   		goto err_config;
>   	}
> @@ -2973,11 +2984,13 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>   
>   	ret = i915_perf_stream_enable_sync(stream);
>   	if (ret) {
> -		DRM_DEBUG("Unable to enable metric set\n");
> +		drm_dbg(&stream->perf->i915->drm,
> +			"Unable to enable metric set\n");
>   		goto err_enable;
>   	}
>   
> -	DRM_DEBUG("opening stream oa config uuid=%s\n",
> +	drm_dbg(&stream->perf->i915->drm,
> +		"opening stream oa config uuid=%s\n",
>   		  stream->oa_config->uuid);
>   
>   	hrtimer_init(&stream->poll_check_timer,
> @@ -3429,7 +3442,8 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
>   
>   		specific_ctx = i915_gem_context_lookup(file_priv, ctx_handle);
>   		if (IS_ERR(specific_ctx)) {
> -			DRM_DEBUG("Failed to look up context with ID %u for opening perf stream\n",
> +			drm_dbg(&perf->i915->drm,
> +				"Failed to look up context with ID %u for opening perf stream\n",
>   				  ctx_handle);
>   			ret = PTR_ERR(specific_ctx);
>   			goto err;
> @@ -3463,7 +3477,8 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
>   
>   	if (props->hold_preemption) {
>   		if (!props->single_context) {
> -			DRM_DEBUG("preemption disable with no context\n");
> +			drm_dbg(&perf->i915->drm,
> +				"preemption disable with no context\n");
>   			ret = -EINVAL;
>   			goto err;
>   		}
> @@ -3485,7 +3500,8 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
>   	 */
>   	if (privileged_op &&
>   	    i915_perf_stream_paranoid && !perfmon_capable()) {
> -		DRM_DEBUG("Insufficient privileges to open i915 perf stream\n");
> +		drm_dbg(&perf->i915->drm,
> +			"Insufficient privileges to open i915 perf stream\n");
>   		ret = -EACCES;
>   		goto err_ctx;
>   	}
> @@ -3592,7 +3608,8 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   	props->poll_oa_period = DEFAULT_POLL_PERIOD_NS;
>   
>   	if (!n_props) {
> -		DRM_DEBUG("No i915 perf properties given\n");
> +		drm_dbg(&perf->i915->drm,
> +			"No i915 perf properties given\n");
>   		return -EINVAL;
>   	}
>   
> @@ -3601,7 +3618,8 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   						 I915_ENGINE_CLASS_RENDER,
>   						 0);
>   	if (!props->engine) {
> -		DRM_DEBUG("No RENDER-capable engines\n");
> +		drm_dbg(&perf->i915->drm,
> +			"No RENDER-capable engines\n");
>   		return -EINVAL;
>   	}
>   
> @@ -3612,7 +3630,8 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   	 * from userspace.
>   	 */
>   	if (n_props >= DRM_I915_PERF_PROP_MAX) {
> -		DRM_DEBUG("More i915 perf properties specified than exist\n");
> +		drm_dbg(&perf->i915->drm,
> +			"More i915 perf properties specified than exist\n");
>   		return -EINVAL;
>   	}
>   
> @@ -3629,7 +3648,8 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   			return ret;
>   
>   		if (id == 0 || id >= DRM_I915_PERF_PROP_MAX) {
> -			DRM_DEBUG("Unknown i915 perf property ID\n");
> +			drm_dbg(&perf->i915->drm,
> +				"Unknown i915 perf property ID\n");
>   			return -EINVAL;
>   		}
>   
> @@ -3644,19 +3664,22 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   			break;
>   		case DRM_I915_PERF_PROP_OA_METRICS_SET:
>   			if (value == 0) {
> -				DRM_DEBUG("Unknown OA metric set ID\n");
> +				drm_dbg(&perf->i915->drm,
> +					"Unknown OA metric set ID\n");
>   				return -EINVAL;
>   			}
>   			props->metrics_set = value;
>   			break;
>   		case DRM_I915_PERF_PROP_OA_FORMAT:
>   			if (value == 0 || value >= I915_OA_FORMAT_MAX) {
> -				DRM_DEBUG("Out-of-range OA report format %llu\n",
> +				drm_dbg(&perf->i915->drm,
> +					"Out-of-range OA report format %llu\n",
>   					  value);
>   				return -EINVAL;
>   			}
>   			if (!oa_format_valid(perf, value)) {
> -				DRM_DEBUG("Unsupported OA report format %llu\n",
> +				drm_dbg(&perf->i915->drm,
> +					"Unsupported OA report format %llu\n",
>   					  value);
>   				return -EINVAL;
>   			}
> @@ -3664,7 +3687,8 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   			break;
>   		case DRM_I915_PERF_PROP_OA_EXPONENT:
>   			if (value > OA_EXPONENT_MAX) {
> -				DRM_DEBUG("OA timer exponent too high (> %u)\n",
> +				drm_dbg(&perf->i915->drm,
> +					"OA timer exponent too high (> %u)\n",
>   					 OA_EXPONENT_MAX);
>   				return -EINVAL;
>   			}
> @@ -3692,7 +3716,8 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   				oa_freq_hz = 0;
>   
>   			if (oa_freq_hz > i915_oa_max_sample_rate && !perfmon_capable()) {
> -				DRM_DEBUG("OA exponent would exceed the max sampling frequency (sysctl dev.i915.oa_max_sample_rate) %uHz without CAP_PERFMON or CAP_SYS_ADMIN privileges\n",
> +				drm_dbg(&perf->i915->drm,
> +					"OA exponent would exceed the max sampling frequency (sysctl dev.i915.oa_max_sample_rate) %uHz without CAP_PERFMON or CAP_SYS_ADMIN privileges\n",
>   					  i915_oa_max_sample_rate);
>   				return -EACCES;
>   			}
> @@ -3709,13 +3734,15 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   			if (copy_from_user(&user_sseu,
>   					   u64_to_user_ptr(value),
>   					   sizeof(user_sseu))) {
> -				DRM_DEBUG("Unable to copy global sseu parameter\n");
> +				drm_dbg(&perf->i915->drm,
> +					"Unable to copy global sseu parameter\n");
>   				return -EFAULT;
>   			}
>   
>   			ret = get_sseu_config(&props->sseu, props->engine, &user_sseu);
>   			if (ret) {
> -				DRM_DEBUG("Invalid SSEU configuration\n");
> +				drm_dbg(&perf->i915->drm,
> +					"Invalid SSEU configuration\n");
>   				return ret;
>   			}
>   			props->has_sseu = true;
> @@ -3723,7 +3750,8 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   		}
>   		case DRM_I915_PERF_PROP_POLL_OA_PERIOD:
>   			if (value < 100000 /* 100us */) {
> -				DRM_DEBUG("OA availability timer too small (%lluns < 100us)\n",
> +				drm_dbg(&perf->i915->drm,
> +					"OA availability timer too small (%lluns < 100us)\n",
>   					  value);
>   				return -EINVAL;
>   			}
> @@ -3774,7 +3802,8 @@ int i915_perf_open_ioctl(struct drm_device *dev, void *data,
>   	int ret;
>   
>   	if (!perf->i915) {
> -		DRM_DEBUG("i915 perf interface not available for this system\n");
> +		drm_dbg(&perf->i915->drm,
> +			"i915 perf interface not available for this system\n");
>   		return -ENOTSUPP;
>   	}
>   
> @@ -3782,7 +3811,8 @@ int i915_perf_open_ioctl(struct drm_device *dev, void *data,
>   			   I915_PERF_FLAG_FD_NONBLOCK |
>   			   I915_PERF_FLAG_DISABLED;
>   	if (param->flags & ~known_open_flags) {
> -		DRM_DEBUG("Unknown drm_i915_perf_open_param flag\n");
> +		drm_dbg(&perf->i915->drm,
> +			"Unknown drm_i915_perf_open_param flag\n");
>   		return -EINVAL;
>   	}
>   
> @@ -4028,7 +4058,8 @@ static struct i915_oa_reg *alloc_oa_regs(struct i915_perf *perf,
>   			goto addr_err;
>   
>   		if (!is_valid(perf, addr)) {
> -			DRM_DEBUG("Invalid oa_reg address: %X\n", addr);
> +			drm_dbg(&perf->i915->drm,
> +				"Invalid oa_reg address: %X\n", addr);
>   			err = -EINVAL;
>   			goto addr_err;
>   		}
> @@ -4102,30 +4133,35 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
>   	int err, id;
>   
>   	if (!perf->i915) {
> -		DRM_DEBUG("i915 perf interface not available for this system\n");
> +		drm_dbg(&perf->i915->drm,
> +			"i915 perf interface not available for this system\n");
>   		return -ENOTSUPP;
>   	}
>   
>   	if (!perf->metrics_kobj) {
> -		DRM_DEBUG("OA metrics weren't advertised via sysfs\n");
> +		drm_dbg(&perf->i915->drm,
> +			"OA metrics weren't advertised via sysfs\n");
>   		return -EINVAL;
>   	}
>   
>   	if (i915_perf_stream_paranoid && !perfmon_capable()) {
> -		DRM_DEBUG("Insufficient privileges to add i915 OA config\n");
> +		drm_dbg(&perf->i915->drm,
> +			"Insufficient privileges to add i915 OA config\n");
>   		return -EACCES;
>   	}
>   
>   	if ((!args->mux_regs_ptr || !args->n_mux_regs) &&
>   	    (!args->boolean_regs_ptr || !args->n_boolean_regs) &&
>   	    (!args->flex_regs_ptr || !args->n_flex_regs)) {
> -		DRM_DEBUG("No OA registers given\n");
> +		drm_dbg(&perf->i915->drm,
> +			"No OA registers given\n");
>   		return -EINVAL;
>   	}
>   
>   	oa_config = kzalloc(sizeof(*oa_config), GFP_KERNEL);
>   	if (!oa_config) {
> -		DRM_DEBUG("Failed to allocate memory for the OA config\n");
> +		drm_dbg(&perf->i915->drm,
> +			"Failed to allocate memory for the OA config\n");
>   		return -ENOMEM;
>   	}
>   
> @@ -4133,7 +4169,8 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
>   	kref_init(&oa_config->ref);
>   
>   	if (!uuid_is_valid(args->uuid)) {
> -		DRM_DEBUG("Invalid uuid format for OA config\n");
> +		drm_dbg(&perf->i915->drm,
> +			"Invalid uuid format for OA config\n");
>   		err = -EINVAL;
>   		goto reg_err;
>   	}
> @@ -4150,7 +4187,8 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
>   			     args->n_mux_regs);
>   
>   	if (IS_ERR(regs)) {
> -		DRM_DEBUG("Failed to create OA config for mux_regs\n");
> +		drm_dbg(&perf->i915->drm,
> +			"Failed to create OA config for mux_regs\n");
>   		err = PTR_ERR(regs);
>   		goto reg_err;
>   	}
> @@ -4163,7 +4201,8 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
>   			     args->n_boolean_regs);
>   
>   	if (IS_ERR(regs)) {
> -		DRM_DEBUG("Failed to create OA config for b_counter_regs\n");
> +		drm_dbg(&perf->i915->drm,
> +			"Failed to create OA config for b_counter_regs\n");
>   		err = PTR_ERR(regs);
>   		goto reg_err;
>   	}
> @@ -4182,7 +4221,8 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
>   				     args->n_flex_regs);
>   
>   		if (IS_ERR(regs)) {
> -			DRM_DEBUG("Failed to create OA config for flex_regs\n");
> +			drm_dbg(&perf->i915->drm,
> +				"Failed to create OA config for flex_regs\n");
>   			err = PTR_ERR(regs);
>   			goto reg_err;
>   		}
> @@ -4198,7 +4238,8 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
>   	 */
>   	idr_for_each_entry(&perf->metrics_idr, tmp, id) {
>   		if (!strcmp(tmp->uuid, oa_config->uuid)) {
> -			DRM_DEBUG("OA config already exists with this uuid\n");
> +			drm_dbg(&perf->i915->drm,
> +				"OA config already exists with this uuid\n");
>   			err = -EADDRINUSE;
>   			goto sysfs_err;
>   		}
> @@ -4206,7 +4247,8 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
>   
>   	err = create_dynamic_oa_sysfs_entry(perf, oa_config);
>   	if (err) {
> -		DRM_DEBUG("Failed to create sysfs entry for OA config\n");
> +		drm_dbg(&perf->i915->drm,
> +			"Failed to create sysfs entry for OA config\n");
>   		goto sysfs_err;
>   	}
>   
> @@ -4215,14 +4257,16 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
>   				  oa_config, 2,
>   				  0, GFP_KERNEL);
>   	if (oa_config->id < 0) {
> -		DRM_DEBUG("Failed to create sysfs entry for OA config\n");
> +		drm_dbg(&perf->i915->drm,
> +			"Failed to create sysfs entry for OA config\n");
>   		err = oa_config->id;
>   		goto sysfs_err;
>   	}
>   
>   	mutex_unlock(&perf->metrics_lock);
>   
> -	DRM_DEBUG("Added config %s id=%i\n", oa_config->uuid, oa_config->id);
> +	drm_dbg(&perf->i915->drm,
> +		"Added config %s id=%i\n", oa_config->uuid, oa_config->id);
>   
>   	return oa_config->id;
>   
> @@ -4230,7 +4274,8 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
>   	mutex_unlock(&perf->metrics_lock);
>   reg_err:
>   	i915_oa_config_put(oa_config);
> -	DRM_DEBUG("Failed to add new OA config\n");
> +	drm_dbg(&perf->i915->drm,
> +		"Failed to add new OA config\n");
>   	return err;
>   }
>   
> @@ -4254,12 +4299,14 @@ int i915_perf_remove_config_ioctl(struct drm_device *dev, void *data,
>   	int ret;
>   
>   	if (!perf->i915) {
> -		DRM_DEBUG("i915 perf interface not available for this system\n");
> +		drm_dbg(&perf->i915->drm,
> +			"i915 perf interface not available for this system\n");
>   		return -ENOTSUPP;
>   	}
>   
>   	if (i915_perf_stream_paranoid && !perfmon_capable()) {
> -		DRM_DEBUG("Insufficient privileges to remove i915 OA config\n");
> +		drm_dbg(&perf->i915->drm,
> +			"Insufficient privileges to remove i915 OA config\n");
>   		return -EACCES;
>   	}
>   
> @@ -4269,7 +4316,8 @@ int i915_perf_remove_config_ioctl(struct drm_device *dev, void *data,
>   
>   	oa_config = idr_find(&perf->metrics_idr, *arg);
>   	if (!oa_config) {
> -		DRM_DEBUG("Failed to remove unknown OA config\n");
> +		drm_dbg(&perf->i915->drm,
> +			"Failed to remove unknown OA config\n");
>   		ret = -ENOENT;
>   		goto err_unlock;
>   	}
> @@ -4282,7 +4330,8 @@ int i915_perf_remove_config_ioctl(struct drm_device *dev, void *data,
>   
>   	mutex_unlock(&perf->metrics_lock);
>   
> -	DRM_DEBUG("Removed config %s id=%i\n", oa_config->uuid, oa_config->id);
> +	drm_dbg(&perf->i915->drm,
> +		"Removed config %s id=%i\n", oa_config->uuid, oa_config->id);
>   
>   	i915_oa_config_put(oa_config);
>   


