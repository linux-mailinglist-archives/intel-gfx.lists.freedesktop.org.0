Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D45CCAEF125
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jul 2025 10:32:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4851C10E52C;
	Tue,  1 Jul 2025 08:32:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VJv6XGMG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E44B910E52C;
 Tue,  1 Jul 2025 08:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751358745; x=1782894745;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9Mc95oEgd/46nZWEhvyosi307qqjCzuiJC9OPYH4Kfw=;
 b=VJv6XGMGeEFFTpAYpOVwNO4A6Ig6GNWY8oV2099v57jm6KncH0CJXKPf
 Mwpy/wIAkLHVZPgLnzIw3rMI4caDe4rb2fufAet4WmGq8U1BX6kZ0wl6+
 GTcZEmvdVa/duXmBCi4x48jDKrgmJZ/oCz/K6XCm2+t6+3HhHuJgls4Z7
 QvMh0v6AOZzQYOuCrfv+OPu8yiY2ycR+csn+JQwyxmL3t1eVuNGnLs9v/
 krs13Tp/58C+K4pBotYSPBFyaEcbwaZZQsCYVUhxWJa1XeZHRi1AyZQgs
 334sDHHXrXPujb5QplmC3n0bqi5shbnv+s3OkH6Q3izD9LFRo5cFjwnkN Q==;
X-CSE-ConnectionGUID: jrko5cYQRQuVh8tw5YSnAQ==
X-CSE-MsgGUID: s5MJM8xnRkSgGfMZhKcc/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="52842929"
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="52842929"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 01:32:18 -0700
X-CSE-ConnectionGUID: y1fKg6n8RaiOouXqbRKLag==
X-CSE-MsgGUID: X5kDjqNERJetF7e7Ra/ivg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="159415623"
Received: from zzombora-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.11])
 by orviesa005.jf.intel.com with SMTP; 01 Jul 2025 01:32:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Jul 2025 11:32:14 +0300
Date: Tue, 1 Jul 2025 11:32:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 chaitanya.kumar.borah@intel.com, khaled.almahallawy@intel.com
Subject: Re: [PATCH] drm/i915/display: Fix RGB limited range handling for DP
Message-ID: <aGOdDnjfj7NJs1aV@intel.com>
References: <20250701081756.2821286-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250701081756.2821286-1-uma.shankar@intel.com>
X-Patchwork-Hint: comment
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

On Tue, Jul 01, 2025 at 01:47:56PM +0530, Uma Shankar wrote:
> RGB limited range should be selected only if explicitly asked by
> userspace by the broadcast RGB property with LIMITED_RANGE. This
> is mostly enabled in case of CEA modes.
> 
> Display port by default uses Full Range, fixed the same. This will help
> set correct MSA information for colorimetry. Fixes a CTS issue wrt
> colorimetry.

If the CTS is expecting that then it's not following the actual DP spec.
Originally the spec required limited range output for cea modes, but
later version relaxed it to "should" and also notes that full range may
also be used. Presumably it was realized that existing implementations
had no consitency here and so both behaviours must be allowed.

> 
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
>  }
>  
> -- 
> 2.42.0

-- 
Ville Syrjälä
Intel
