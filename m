Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A72B9704B
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD32810E687;
	Tue, 23 Sep 2025 17:25:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C2Dizzu5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A026810E687;
 Tue, 23 Sep 2025 17:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648357; x=1790184357;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qK+URTAsXXUrjFf5jGs1ANG7yxavkwSfQweuQmsKsHI=;
 b=C2Dizzu5L5MgmAi5siizpUfdVua8K6klir4+s8fnnPbevQYTAw7jhGFb
 qNtBffzkpGWFwD5+W42QpAlrq6GaE483YaYHoGOGgU5VxTsmNl0O38w8R
 kUb+LVrfOlF7+AnF0uGiYmU4Vufu01TdMPkef5/9B8mg8hSfUxSzRoZAx
 +3gF0OIdhMbwMXMwr+OHDmtCfmjHoV9gGh9SnLIE3eMlRvH3rqIPXYrs2
 72Kt0+Bf2Ut9ABggqIa1Eza08iipeFFOtswN2lGj+NaMkNgZSc2/r37El
 RLxeEgVvjd7CjpdSfIuuzjwqLBVbhvD9xdcoYzJTNjuBZtwuN1x8KLQXI g==;
X-CSE-ConnectionGUID: 7VA93UcRQEWa60Apon/8kw==
X-CSE-MsgGUID: V1K7PlDlTIaF0PLl3lFWHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="64572829"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="64572829"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:25:57 -0700
X-CSE-ConnectionGUID: JfVgVOWjSEKd/v76Bvrh1Q==
X-CSE-MsgGUID: sdrsDAV9TeW7F0vUALaq0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="182084478"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:25:54 -0700
Date: Tue, 23 Sep 2025 20:25:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 9/9] drm/i915/vrr: Clamp guardband as per hardware and
 timing constraints
Message-ID: <aNLYIHVgkt-Ab-_u@intel.com>
References: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
 <20250923131043.2628282-10-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250923131043.2628282-10-ankit.k.nautiyal@intel.com>
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

On Tue, Sep 23, 2025 at 06:40:43PM +0530, Ankit Nautiyal wrote:
> The maximum guardband value is constrained by two factors:
> - The actual vblank length minus set context latency (SCL)
> - The hardware register field width:
>   - 8 bits for ICL/TGL (VRR_CTL_PIPELINE_FULL_MASK -> max 255)
>   - 16 bits for ADL+ (XELPD_VRR_CTL_VRR_GUARDBAND_MASK -> max 65535)
> 
> Remove the #FIXME and clamp the guardband to the maximum allowed value.
> 
> v2: Address comments from Ville:
> - Use REG_FIELD_MAX()
> - Separate out functions for intel_vrr_max_guardband(),
> intel_vrr_max_vblank_guardband().
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 44 +++++++++++++++++-------
>  1 file changed, 32 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 8f851d3a3f44..f37076575bfe 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -409,6 +409,35 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	}
>  }
>  
> +static int
> +intel_vrr_max_hw_guardband(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	if (DISPLAY_VER(display) >= 13)
> +		return REG_FIELD_MAX(XELPD_VRR_CTL_VRR_GUARDBAND_MASK);
> +

I'd put 'else' here for consistency with other stuff.

> +	return intel_vrr_pipeline_full_to_guardband(crtc_state,
> +						    REG_FIELD_MAX(VRR_CTL_PIPELINE_FULL_MASK));
> +}
> +
> +static int
> +intel_vrr_max_vblank_guardband(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	return crtc_state->vrr.vmin -

Missing a -crtc_vdisplay here.

what those
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +	       crtc_state->set_context_latency -
> +	       intel_vrr_extra_vblank_delay(display);
> +}
> +
> +static int
> +intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
> +{
> +	return min(intel_vrr_max_hw_guardband(crtc_state),
> +		   intel_vrr_max_vblank_guardband(crtc_state));
> +}
> +
>  void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> @@ -417,22 +446,13 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>  	if (!intel_vrr_possible(crtc_state))
>  		return;
>  
> -	crtc_state->vrr.guardband =
> -		crtc_state->vrr.vmin -
> -		adjusted_mode->vdisplay -
> -		crtc_state->set_context_latency -
> -		intel_vrr_extra_vblank_delay(display);
> -
> -	if (DISPLAY_VER(display) < 13) {
> -		/* FIXME handle the limit in a proper way */
> -		crtc_state->vrr.guardband =
> -			min(crtc_state->vrr.guardband,
> -			    intel_vrr_pipeline_full_to_guardband(crtc_state, 255));
> +	crtc_state->vrr.guardband = min(crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay,
> +					intel_vrr_max_guardband(crtc_state));
>  
> +	if (DISPLAY_VER(display) < 13)
>  		crtc_state->vrr.pipeline_full =
>  			intel_vrr_guardband_to_pipeline_full(crtc_state,
>  							     crtc_state->vrr.guardband);
> -	}
>  }
>  
>  static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
