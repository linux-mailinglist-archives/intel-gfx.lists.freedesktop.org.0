Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13342B8AD72
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 20:00:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45F4F10E0B8;
	Fri, 19 Sep 2025 18:00:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U5tCE/Qb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20DC310E0B8
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Sep 2025 18:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758304815; x=1789840815;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vGuNv8xbbHDLsWsts/u3H3a0sPbIJ5P163t4Eh5D4Ec=;
 b=U5tCE/Qb5Ry8vzCqTIVZST/OpIsv0CdnTh2QsnOrGj/lvc4WBcOdHW++
 DLbyecojdmVfjOYiAywTuA0v8FFIa9HvoGnebLD9/FyIM3vdbQPwqZVzm
 rNNawkxtHDg0JDBW/Y4m5KBfH0tpfhukEPFgk8OJ1y8EFnUKZZwP+X0JH
 9wwQnYb8CPdd+3rjOzrfuCdbplyvVa6CgOByDU4uXsgbsl5MRV5KW+bps
 +0iMJHy+EEe+AAUA7X2PKjFaZmUvVilUrHj91Gzyx4xmVDGxIe/fQmVjs
 7xRQmA4Tnl0pDWHElPwvZmEHrN6YMea+2odMxy1DTcadM/28RCxfQKF0N A==;
X-CSE-ConnectionGUID: fqSKAHqxTFemacRoiwpFyw==
X-CSE-MsgGUID: 0g2DvJgsTpiphmPS8CixVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60601909"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60601909"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:00:14 -0700
X-CSE-ConnectionGUID: Cwq4uNa7THKkp8VsDf1scg==
X-CSE-MsgGUID: Z8TuE44OSfeOjxmsqfSbVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="199610052"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:00:12 -0700
Date: Fri, 19 Sep 2025 21:00:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 6/6] drm/i915/wm: move method selection and calculation
 to a separate function
Message-ID: <aM2aKbpma-4Ss6ik@intel.com>
References: <20250908073734.1180687-1-luciano.coelho@intel.com>
 <20250908073734.1180687-7-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250908073734.1180687-7-luciano.coelho@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Mon, Sep 08, 2025 at 10:35:35AM +0300, Luca Coelho wrote:
> Isolate the code that handles method selection and calculation, so
> skl_compute_plane_wm() doesn't get too long.
> 
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 51 ++++++++++++--------
>  1 file changed, 31 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 21f8d52ec1d2..33853a18ee9c 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1806,25 +1806,14 @@ static bool xe3_auto_min_alloc_capable(struct intel_plane *plane, int level)
>  	return DISPLAY_VER(display) >= 30 && level == 0 && plane->id != PLANE_CURSOR;
>  }
>  
> -static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
> -				 struct intel_plane *plane,
> -				 int level,
> -				 unsigned int latency,
> -				 const struct skl_wm_params *wp,
> -				 const struct skl_wm_level *result_prev,
> -				 struct skl_wm_level *result /* out */)
> +static uint_fixed_16_16_t
> +skl_wm_run_method(struct intel_display *display,

I was confused what a "run method" is, but I guess "run" is supposed
to be a verb here.

However this thing does a lot more than "run a method", so I don't
really like this.

I susepct it would make more sense to carve up skl_compute_plane_wm()
into several smaller (possibly platform dependent) pieces. Eg.
the result selection part seems like one thing that could extracted
into a small function. The min_ddb_alloc calculation would be another
clear piece that can be extracted.

> +		  const struct intel_crtc_state *crtc_state,
> +		  const struct skl_wm_params *wp,
> +		  unsigned int latency)
>  {
> -	struct intel_display *display = to_intel_display(crtc_state);
>  	uint_fixed_16_16_t method1, method2;
>  	uint_fixed_16_16_t selected_result;
> -	u32 blocks, lines, min_ddb_alloc = 0;
> -
> -	if (latency == 0 ||
> -	    (use_minimal_wm0_only(crtc_state, plane) && level > 0)) {
> -		/* reject it */
> -		result->min_ddb_alloc = U16_MAX;
> -		return;
> -	}
>  
>  	method1 = skl_wm_method1(display, wp->plane_pixel_rate,
>  				 wp->cpp, latency, wp->dbuf_block_size);
> @@ -1837,7 +1826,9 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
>  	case WM_TILING_Y_FAMILY:
>  		selected_result = max_fixed16(method2, wp->y_tile_minimum);
>  		break;
> -
> +	default:
> +		MISSING_CASE(wp->tiling);
> +		fallthrough;
>  	case WM_TILING_LINEAR:
>  	case WM_TILING_X_TILED:
>  		/*
> @@ -1862,12 +1853,32 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
>  			selected_result = method1;
>  		}
>  		break;
> +	}
>  
> -	default:
> -		drm_err(display->drm, "Invalid tiling mode\n", wp->tiling);
> -		break;
> +	return selected_result;
> +}
> +
> +static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
> +				 struct intel_plane *plane,
> +				 int level,
> +				 unsigned int latency,
> +				 const struct skl_wm_params *wp,
> +				 const struct skl_wm_level *result_prev,
> +				 struct skl_wm_level *result /* out */)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	uint_fixed_16_16_t selected_result;
> +	u32 blocks, lines, min_ddb_alloc = 0;
> +
> +	if (latency == 0 ||
> +	    (use_minimal_wm0_only(crtc_state, plane) && level > 0)) {
> +		/* reject it */
> +		result->min_ddb_alloc = U16_MAX;
> +		return;
>  	}
>  
> +	selected_result = skl_wm_run_method(display, crtc_state, wp, latency);
> +
>  	blocks = fixed16_to_u32_round_up(selected_result);
>  	if (DISPLAY_VER(display) < 30)
>  		blocks++;
> -- 
> 2.50.1

-- 
Ville Syrjälä
Intel
