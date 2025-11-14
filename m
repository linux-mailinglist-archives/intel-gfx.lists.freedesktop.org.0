Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B30C5DC36
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 16:09:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1066610EAA5;
	Fri, 14 Nov 2025 15:09:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FsKpDliZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EA8010EAA5;
 Fri, 14 Nov 2025 15:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763132955; x=1794668955;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/lp1VGyFu+0lJivxtN+5eN+R++gw4Kxsu+pImDIITTI=;
 b=FsKpDliZsaQfeKuvNIX2TJIGzYDgkajjn1IIW4ofIb2dpgqdwUfVyAxv
 nVeC4jbNbARSih4gm0SfZRYrXScNC+U6ZEAJOqgEJKOcBMxnNI/dGgTLH
 f8w9B7p/tXX2R9F9PQ69Plq1AlDDfPJ6lpWmbtQVXyvoHxC5lHsob9KYt
 GEJr0t1+Av834Zjgz9jinWrybI9/IcD3nYM+f7bQoRttCnBisrlB4jVh1
 ZepW0mZmjpvMypFmkE8Bd635NZpU1pH7xID21gjiY6JVIaQdjxOkJw5sc
 r+vIQDIdkoyyB2JtLOyE2gsBLSmieyIn1rZdc7trPvYLgEUC6CaXXbhA0 w==;
X-CSE-ConnectionGUID: 0isyBLq/RkmQQzHcUHaBrQ==
X-CSE-MsgGUID: MlG3eWHzTouXhk836jkyQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65158816"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65158816"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 07:09:15 -0800
X-CSE-ConnectionGUID: FZtvryQwQGSBjsgFJ1g5+w==
X-CSE-MsgGUID: UohXMKLxRUO2uW49LOWvIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="194784490"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.70])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 07:09:12 -0800
Date: Fri, 14 Nov 2025 17:09:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 2/5] drm/i915/alpm: Allow LOBF only if window1 > alpm
 check_entry lines
Message-ID: <aRdGFoATz-liPKxO@intel.com>
References: <20251114052746.158751-1-ankit.k.nautiyal@intel.com>
 <20251114052746.158751-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251114052746.158751-3-ankit.k.nautiyal@intel.com>
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

On Fri, Nov 14, 2025 at 10:57:43AM +0530, Ankit Nautiyal wrote:
> LOBF must be disabled if the number of lines within Window 1 is not greater
> than ALPM_CTL[ALPM Entry Check]
> 
> v2: Consider the case where SCL is in the active region. (Ville)
> 
> Bspec:71041
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 98cbf5dde73b..686e4d13f864 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -263,6 +263,23 @@ int intel_alpm_lobf_min_guardband(struct intel_crtc_state *crtc_state)
>  	return first_sdp_position + waketime_in_lines + crtc_state->set_context_latency;
>  }
>  
> +static bool intel_alpm_lobf_is_window1_sufficient(struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	int vblank = adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay;
> +	int window1;
> +
> +	/*
> +	 * LOBF must be disabled if the number of lines within Window 1 is not
> +	 * greater than ALPM_CTL[ALPM Entry Check]
> +	 */
> +	window1 = vblank - min(vblank,
> +			       crtc_state->vrr.guardband +
> +			       crtc_state->set_context_latency);

Dunno why you have the min() here? guardband+SCL can never
exceed the total vblank length.

> +
> +	return window1 > crtc_state->alpm_state.check_entry_lines;
> +}
> +
>  void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
>  					 struct intel_crtc_state *crtc_state)
>  {
> @@ -272,6 +289,11 @@ void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
>  	if (!crtc_state->has_lobf)
>  		return;
>  
> +	if (!intel_alpm_lobf_is_window1_sufficient(crtc_state)) {
> +		crtc_state->has_lobf = false;
> +		return;
> +	}
> +
>  	/*
>  	 * LOBF can only be enabled if the time from the start of the SCL+Guardband
>  	 * window to the position of the first SDP is greater than the time it takes
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
