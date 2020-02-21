Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1074D167982
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 10:36:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A12196EF27;
	Fri, 21 Feb 2020 09:36:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 042756EF27
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 09:36:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 01:36:10 -0800
X-IronPort-AV: E=Sophos;i="5.70,467,1574150400"; d="scan'208";a="229794351"
Received: from jmiler-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.38.187])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 01:36:07 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Wambui Karuga <wambui.karugax@gmail.com>, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
In-Reply-To: <20200218173936.19664-1-wambui.karugax@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200218173936.19664-1-wambui.karugax@gmail.com>
Date: Fri, 21 Feb 2020 11:36:12 +0200
Message-ID: <87blpsz3hv.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/perf: conversion to struct
 drm_device based logging macros.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 18 Feb 2020, Wambui Karuga <wambui.karugax@gmail.com> wrote:
> Manual conversion of instances of printk based drm logging macros to the
> struct drm_device based logging macros in i915/i915_perf.c.
> Also involves extraction of the struct drm_i915_private device from
> various intel types for use in the macros.
>
> Instances of the DRM_DEBUG printk macro were not converted due to the
> lack of an analogous struct drm_device based logging macro.
>
> v2: remove instances of DRM_DEBUG that were converted.
>
> References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>

Thanks, pushed to drm-intel-next-queued.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/i915_perf.c | 27 +++++++++++++++++----------
>  1 file changed, 17 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index b5249ee5bda6..e34c79df6ebc 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -555,8 +555,9 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>  				aging_tail = hw_tail;
>  			stream->oa_buffer.aging_timestamp = now;
>  		} else {
> -			DRM_ERROR("Ignoring spurious out of range OA buffer tail pointer = %x\n",
> -				  hw_tail);
> +			drm_err(&stream->perf->i915->drm,
> +				"Ignoring spurious out of range OA buffer tail pointer = %x\n",
> +				hw_tail);
>  		}
>  	}
>  
> @@ -745,7 +746,8 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
>  		 */
>  		if (drm_WARN_ON(&uncore->i915->drm,
>  				(OA_BUFFER_SIZE - head) < report_size)) {
> -			DRM_ERROR("Spurious OA head ptr: non-integral report offset\n");
> +			drm_err(&uncore->i915->drm,
> +				"Spurious OA head ptr: non-integral report offset\n");
>  			break;
>  		}
>  
> @@ -1041,7 +1043,8 @@ static int gen7_append_oa_reports(struct i915_perf_stream *stream,
>  		 */
>  		if (drm_WARN_ON(&uncore->i915->drm,
>  				(OA_BUFFER_SIZE - head) < report_size)) {
> -			DRM_ERROR("Spurious OA head ptr: non-integral report offset\n");
> +			drm_err(&uncore->i915->drm,
> +				"Spurious OA head ptr: non-integral report offset\n");
>  			break;
>  		}
>  
> @@ -1339,9 +1342,10 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>  
>  	ce->tag = stream->specific_ctx_id;
>  
> -	DRM_DEBUG_DRIVER("filtering on ctx_id=0x%x ctx_id_mask=0x%x\n",
> -			 stream->specific_ctx_id,
> -			 stream->specific_ctx_id_mask);
> +	drm_dbg(&stream->perf->i915->drm,
> +		"filtering on ctx_id=0x%x ctx_id_mask=0x%x\n",
> +		stream->specific_ctx_id,
> +		stream->specific_ctx_id_mask);
>  
>  	return 0;
>  }
> @@ -2657,7 +2661,8 @@ static void gen7_oa_disable(struct i915_perf_stream *stream)
>  	if (intel_wait_for_register(uncore,
>  				    GEN7_OACONTROL, GEN7_OACONTROL_ENABLE, 0,
>  				    50))
> -		DRM_ERROR("wait for OA to be disabled timed out\n");
> +		drm_err(&stream->perf->i915->drm,
> +			"wait for OA to be disabled timed out\n");
>  }
>  
>  static void gen8_oa_disable(struct i915_perf_stream *stream)
> @@ -2668,7 +2673,8 @@ static void gen8_oa_disable(struct i915_perf_stream *stream)
>  	if (intel_wait_for_register(uncore,
>  				    GEN8_OACONTROL, GEN8_OA_COUNTER_ENABLE, 0,
>  				    50))
> -		DRM_ERROR("wait for OA to be disabled timed out\n");
> +		drm_err(&stream->perf->i915->drm,
> +			"wait for OA to be disabled timed out\n");
>  }
>  
>  static void gen12_oa_disable(struct i915_perf_stream *stream)
> @@ -2680,7 +2686,8 @@ static void gen12_oa_disable(struct i915_perf_stream *stream)
>  				    GEN12_OAG_OACONTROL,
>  				    GEN12_OAG_OACONTROL_OA_COUNTER_ENABLE, 0,
>  				    50))
> -		DRM_ERROR("wait for OA to be disabled timed out\n");
> +		drm_err(&stream->perf->i915->drm,
> +			"wait for OA to be disabled timed out\n");
>  }
>  
>  /**

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
