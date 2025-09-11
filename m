Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B68DB535B0
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 16:37:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80F0810EB55;
	Thu, 11 Sep 2025 14:37:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZZnuMaYi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CAF210EB54;
 Thu, 11 Sep 2025 14:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757601448; x=1789137448;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tV7rMyFZDbH/xDSIokfFLNBQtfSUJn+MGkvCU0uMMJo=;
 b=ZZnuMaYibPlq4GoOlcqNnO/CTEnUqkUCOyHXcuESlqlXuymWmiCCN6gW
 PLiOahq5ZqZCbsNwkUTMCbpBHbbb+BBngjTRGoz32sIO4vXZtDnvJ2w7d
 ww7OnvDXDkfr6Y/RjHFUhKDHbo6Jv1/AkS9p6sXELmIPfLitIA6uwGkJH
 r1O5DKkUED39VRfAMWkZLa+8JQI6T5NQEK7HdSZuu2vyT+8DJEeJG7W0j
 zQWy87rFyKs9Yev8mOYM1OIve9GDxeRE5xohgUCoPPKavx5V8tJHBdBtW
 VRx9XbACCD3WcfuDatWIUWruIFg5NipI7ZyNJIG25nFg46tIvl9wvrkF1 A==;
X-CSE-ConnectionGUID: WyYpMkFOTPSCIXJ4BQDhUw==
X-CSE-MsgGUID: l9diDaKGTealHsGAljFKew==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59856813"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59856813"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 07:37:28 -0700
X-CSE-ConnectionGUID: BFMOiNQKQo+1u3EThBcMLA==
X-CSE-MsgGUID: UtMg2HXOQo6qDc7K5Oz2Rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="173256946"
Received: from johunt-mobl9.ger.corp.intel.com (HELO localhost)
 ([10.245.244.13])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 07:37:26 -0700
Date: Thu, 11 Sep 2025 17:37:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [PATCH 14/15] drm/i915/panel: Refactor helper to get highest
 fixed mode
Message-ID: <aMLeo8EirLaPa940@intel.com>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
 <20250911024554.692469-15-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250911024554.692469-15-ankit.k.nautiyal@intel.com>
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

On Thu, Sep 11, 2025 at 08:15:53AM +0530, Ankit Nautiyal wrote:
> Refactor intel_panel_highest_mode() to return the fixed mode with the
> highest pixel clock, removing the fallback to the adjusted mode. This makes
> the function semantics clearer and better suited for future use cases where
> fallback is not desirable.
> 
> Update the caller in intel_dp_mode_clock() to handle the NULL case
> explicitly by falling back to the adjusted mode's crtc_clock. This also
> addresses the existing FIXME comment about ambiguity between clock and
> crtc_clock, by using mode->clock for fixed modes and mode->crtc_clock for
> adjusted modes.
> 
> v2: Avoid introducing a new function and refactor existing one instead.
> (Jani).
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c    | 14 +++++++++-----
>  drivers/gpu/drm/i915/display/intel_panel.c | 11 +++++------
>  drivers/gpu/drm/i915/display/intel_panel.h |  3 +--
>  3 files changed, 15 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 83c46e4680b3..f74ac98062d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1760,11 +1760,15 @@ static int intel_dp_mode_clock(const struct intel_crtc_state *crtc_state,
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  
> -	/* FIXME a bit of a mess wrt clock vs. crtc_clock */
> -	if (has_seamless_m_n(connector))
> -		return intel_panel_highest_mode(connector, adjusted_mode)->clock;
> -	else
> -		return adjusted_mode->crtc_clock;
> +	if (has_seamless_m_n(connector)) {
> +		const struct drm_display_mode *highest_mode;
> +
> +		highest_mode = intel_panel_highest_mode(connector);
> +		if (highest_mode)
> +			return highest_mode->clock;
> +	}
> +
> +	return adjusted_mode->crtc_clock;
>  }
>  
>  /* Optimize link config in order: max bpp, min clock, min lanes */
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index 2a20aaaaac39..ac0f04073ecb 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -144,18 +144,17 @@ intel_panel_downclock_mode(struct intel_connector *connector,
>  }
>  
>  const struct drm_display_mode *
> -intel_panel_highest_mode(struct intel_connector *connector,
> -			 const struct drm_display_mode *adjusted_mode)
> +intel_panel_highest_mode(struct intel_connector *connector)
>  {
> -	const struct drm_display_mode *fixed_mode, *best_mode = adjusted_mode;
> +	const struct drm_display_mode *fixed_mode, *highest_mode = NULL;
>  
>  	/* pick the fixed_mode that has the highest clock */
>  	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
> -		if (fixed_mode->clock > best_mode->clock)
> -			best_mode = fixed_mode;
> +		if (!highest_mode || fixed_mode->clock > highest_mode->clock)
> +			highest_mode = fixed_mode;

This looks broken now as it will always return some kind of mode
from the list, but whether or not it's better than the adjusted_mode
is no logner guaranteed.

>  	}
>  
> -	return best_mode;
> +	return highest_mode;
>  }
>  
>  int intel_panel_get_modes(struct intel_connector *connector)
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
> index 56a6412cf0fb..8a17600e46a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -37,8 +37,7 @@ const struct drm_display_mode *
>  intel_panel_downclock_mode(struct intel_connector *connector,
>  			   const struct drm_display_mode *adjusted_mode);
>  const struct drm_display_mode *
> -intel_panel_highest_mode(struct intel_connector *connector,
> -			 const struct drm_display_mode *adjusted_mode);
> +intel_panel_highest_mode(struct intel_connector *connector);
>  int intel_panel_get_modes(struct intel_connector *connector);
>  enum drrs_type intel_panel_drrs_type(struct intel_connector *connector);
>  enum drm_mode_status
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
