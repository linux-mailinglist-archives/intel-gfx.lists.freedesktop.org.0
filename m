Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F64AF0E3E
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 10:43:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7FBA10E059;
	Wed,  2 Jul 2025 08:43:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IDDEDCsm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5679710E059;
 Wed,  2 Jul 2025 08:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751445784; x=1782981784;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=HiWNBmYYufeyFzULCfbCcdIbm6XiuNuD6nLk7AFm3WA=;
 b=IDDEDCsmLlOxvSspJkVGAijB93EHvjXfiLWv33Mwkoof+mf8+Lg982nQ
 YJpBv9hZzU5xBuj4GTVEXQ4K42mSa5Vr1w9T0O1MMXPTBKfT0rIUWPx0m
 jB44PEKObDwXBdFhe4wVrv4PiI6zaTjA4U1dbjqVftS5kdrnap6IOtlJs
 3eMn4qgEm59y/pQhDdrnnPzydKDVOZH2S5wRa8MA8TCF9siEzf8u+a+h5
 dViH5Y6tlfp5e85T87jxXaG+LfYROF2fVg791Hckw84d4lrRWeHJ9m3rS
 e4NCeIP79KXDP8pyeFxIi92oWjSU8uDBdhI6qXlJar2InRb+cQ9FrXv7L A==;
X-CSE-ConnectionGUID: 63kPyciNSi+135tRg3VJ6Q==
X-CSE-MsgGUID: ZSVMhFL9SASMc2e+zJVigQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="79171649"
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="79171649"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 01:43:04 -0700
X-CSE-ConnectionGUID: pk+l5cbMRJ69mmQi06yLog==
X-CSE-MsgGUID: lORIma2vTYK+DT/FdCkCRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="158045620"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.29])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 01:43:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, ville.syrjala@linux.intel.com,
 khaled.almahallawy@intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915/display: Fix RGB limited range handling for DP
In-Reply-To: <20250701081756.2821286-1-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250701081756.2821286-1-uma.shankar@intel.com>
Date: Wed, 02 Jul 2025 11:42:59 +0300
Message-ID: <b0e0896227fb8b9eed3b095afb397be8dbed51ca@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 01 Jul 2025, Uma Shankar <uma.shankar@intel.com> wrote:
> RGB limited range should be selected only if explicitly asked by
> userspace by the broadcast RGB property with LIMITED_RANGE. This
> is mostly enabled in case of CEA modes.
>
> Display port by default uses Full Range, fixed the same. This will help
> set correct MSA information for colorimetry. Fixes a CTS issue wrt
> colorimetry.

If we decide to go this way, the commit message *must* capture the
history precisely, and not pretend this is the only way and everything
that was before was wrong. And that we're primarily doing it to pass
CTS.

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++--------------
>  1 file changed, 7 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f48912f308df..8758b9d60d5e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2708,8 +2708,6 @@ bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_state,
>  {
>  	const struct intel_digital_connector_state *intel_conn_state =
>  		to_intel_digital_connector_state(conn_state);
> -	const struct drm_display_mode *adjusted_mode =
> -		&crtc_state->hw.adjusted_mode;
>  
>  	/*
>  	 * Our YCbCr output is always limited range.
> @@ -2721,18 +2719,13 @@ bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_state,
>  	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB)
>  		return false;
>  
> -	if (intel_conn_state->broadcast_rgb == INTEL_BROADCAST_RGB_AUTO) {
> -		/*
> -		 * See:
> -		 * CEA-861-E - 5.1 Default Encoding Parameters
> -		 * VESA DisplayPort Ver.1.2a - 5.1.1.1 Video Colorimetry
> -		 */
> -		return crtc_state->pipe_bpp != 18 &&
> -			drm_default_rgb_quant_range(adjusted_mode) ==
> -			HDMI_QUANTIZATION_RANGE_LIMITED;
> -	} else {
> -		return intel_conn_state->broadcast_rgb ==
> -			INTEL_BROADCAST_RGB_LIMITED;
> +	switch (intel_conn_state->broadcast_rgb) {
> +	case INTEL_BROADCAST_RGB_LIMITED:
> +		return true;
> +	case INTEL_BROADCAST_RGB_FULL:
> +	case INTEL_BROADCAST_RGB_AUTO:
> +	default:
> +		return false;
>  	}

That's just:

	return intel_conn_state->broadcast_rgb == INTEL_BROADCAST_RGB_LIMITED;


>  }

-- 
Jani Nikula, Intel
