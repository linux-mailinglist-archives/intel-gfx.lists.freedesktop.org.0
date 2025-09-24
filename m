Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 234AEB99BE9
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 14:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8B4F10E712;
	Wed, 24 Sep 2025 12:04:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FO0AS8Gg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2200C10E70C;
 Wed, 24 Sep 2025 12:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758715489; x=1790251489;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4k6vtQq3P3QaSxmETdTAv2+O6zcUQsJZFVL/+PumiyA=;
 b=FO0AS8GgHlSIsjy2u/MHmog2yqFxsHnWOCWWmQnjT8gL069EOctBYms5
 n4K5unQHZT+/5GWtIPqx26x+m3US4yEXr6XMuZU+uCgOLQ67reJ0Eb4r9
 cBCy3f+D+nNs6+OcDl8a6lC16VCh9zDlgZmIRxRPi5/Yi5IWHIznaGFqk
 2bDH7G1v5+X4LnGoUazn1GAmqBzGxBA1ZDFWyi96xeHv3bx42Xgj/gjNE
 B8lCfieFApqItxWhVTLN1C0jSkgSIPd4rOdnoZp4q7w4VCm66kFArMmTl
 Ew8BjhCpku7ZUzDph87m96r8btr+kZjf/aXOS0n+XfY3sfqTEgfZM06fo Q==;
X-CSE-ConnectionGUID: Ny10DVtkRUmEti47F2HP5w==
X-CSE-MsgGUID: vXmH4KzQRTKYKQXuGLwJbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="48575561"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="48575561"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 05:04:48 -0700
X-CSE-ConnectionGUID: cEWRPV06SImWxiTms0y4EQ==
X-CSE-MsgGUID: NJCZ5IXBRcu0/TbiXfL/Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="182299162"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.144])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 05:04:48 -0700
Date: Wed, 24 Sep 2025 15:04:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 8/9] drm/i915/vrr: Clamp guardband as per hardware and
 timing constraints
Message-ID: <aNPeXDMHgDLzDWvD@intel.com>
References: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
 <20250924105129.2771196-9-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250924105129.2771196-9-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 24, 2025 at 04:21:28PM +0530, Ankit Nautiyal wrote:
> The maximum guardband value is constrained by two factors:
> - The actual vblank length minus set context latency (SCL)
> - The hardware register field width:
>   - 8 bits for ICL/TGL (VRR_CTL_PIPELINE_FULL_MASK -> max 255)
>   - 16 bits for ADL+ (XELPD_VRR_CTL_VRR_GUARDBAND_MASK -> max 65535)
> 
> Remove the #FIXME and clamp the guardband to the maximum allowed value.
> 
> v2:
> - Use REG_FIELD_MAX(). (Ville)
> - Separate out functions for intel_vrr_max_guardband(),
>   intel_vrr_max_vblank_guardband(). (Ville)
> 
> v3:
> - Fix Typo: Add the missing adjusted_mode->crtc_vdisplay in guardband
>   computation. (Ville)
> - Refactor intel_vrr_max_hw_guardband() and use else for consistency.
>   (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 49 ++++++++++++++++++------
>  1 file changed, 37 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 26c5c32a9a58..e29b4050a9df 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -409,6 +409,40 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	}
>  }
>  
> +static int
> +intel_vrr_max_hw_guardband(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	int max_pipeline_full = REG_FIELD_MAX(VRR_CTL_PIPELINE_FULL_MASK);
> +	int max_guardband;
> +
> +	if (DISPLAY_VER(display) >= 13)
> +		max_guardband = REG_FIELD_MAX(XELPD_VRR_CTL_VRR_GUARDBAND_MASK);
> +	else
> +		max_guardband = intel_vrr_pipeline_full_to_guardband(crtc_state,
> +								     max_pipeline_full);
> +	return max_guardband;

The 'max_guardband' variable looks useless here, could just return
directly from both sides of the if-else.

'max_pipeline_full' is perhaps redundant too, but I suppose the
line would get pretty long without it. So maybe it makes sense to keep
it.

> +}
> +
> +static int
> +intel_vrr_max_vblank_guardband(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	return crtc_state->vrr.vmin -
> +	       adjusted_mode->crtc_vdisplay -
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
> @@ -417,22 +451,13 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>  	if (!intel_vrr_possible(crtc_state))
>  		return;
>  
> -	crtc_state->vrr.guardband =
> -		crtc_state->vrr.vmin -
> -		adjusted_mode->crtc_vdisplay -
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
