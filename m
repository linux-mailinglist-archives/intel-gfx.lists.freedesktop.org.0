Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B8BB904A1
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 12:58:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEA5910E418;
	Mon, 22 Sep 2025 10:58:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UakvVgBH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A790C10E415;
 Mon, 22 Sep 2025 10:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758538684; x=1790074684;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kf3C0N2FqMlMcueB9XMi0BFX3eNxno7IDh/KhiCQW1M=;
 b=UakvVgBHo+XUbeOCGICdEVERJHR0R5N1Quf8ot2IcRCeHAivJiqGWxDy
 tjRJVYUXK/Dyal3IhCAWoBaweJxWHmLn4CC7Rr20zG0jlznSEEy4qyBF6
 97eemIbLUFZ8XFyPINNQSe3ETEgfwB2239bdXKT25gQxRqgB0NsL9GYbd
 tXskNKdzAEhmoqiKmTUB0XfYT+wkj40zjQGdZmLDQ/g1H9iyJ+zPBEGu1
 fXBG819ihq4HoJrRSsiIbwZ3OA1qptdXNpn6jin6yF9LMY4ZKM4i3Sias
 Pg2z7dmlMkw7rto8e84AktwV4kDrYheYTEjss6HqlbB9LG+1WXSnX55Or A==;
X-CSE-ConnectionGUID: AvngpctPRQevqW47vkz5lw==
X-CSE-MsgGUID: P1pmxRofQ+adkhPmN7yy3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11560"; a="60493703"
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="60493703"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 03:58:04 -0700
X-CSE-ConnectionGUID: Amc9usOCTi2W0gVIPDgyBQ==
X-CSE-MsgGUID: XngxvnEDTRiSVX+BAiG4dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="176518031"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.115])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 03:58:03 -0700
Date: Mon, 22 Sep 2025 13:57:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 9/9] drm/i915/vrr: Clamp guardband as per hardware and
 timing constraints
Message-ID: <aNErtwXjQHDgMADC@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
 <20250921043535.2012978-10-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250921043535.2012978-10-ankit.k.nautiyal@intel.com>
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

On Sun, Sep 21, 2025 at 10:05:35AM +0530, Ankit Nautiyal wrote:
> The maximum guardband value is constrained by two factors:
> - The actual vblank length minus set context latency (SCL)
> - The hardware register field width:
>   - 8 bits for ICL/TGL (VRR_CTL_PIPELINE_FULL_MASK -> max 255)
>   - 16 bits for ADL+ (XELPD_VRR_CTL_VRR_GUARDBAND_MASK -> max 65535)
> 
> Remove the #FIXME and clamp the guardband to the maximum allowed value.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 36 ++++++++++++++++++++----
>  1 file changed, 30 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 5fa86356a791..9bed273f96df 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -409,6 +409,34 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	}
>  }
>  
> +static int intel_vrr_max_hw_guardband(const struct intel_crtc_state *crtc_state)
> +{
> +#define VRR_GUARDBAND_MAX 65535   /* based on XELPD_VRR_CTL_VRR_GUARDBAND_MASK */
> +#define VRR_PIPELINE_FULL_MAX 255 /* based on VRR_CTL_PIPELINE_FULL_MASK */

Magic numbers aren't great.

We can get those straight from the register definitions:
 REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, XELPD_VRR_CTL_VRR_GUARDBAND_MASK)
 REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, VRR_CTL_PIPELINE_FULL_MASK)

or perhaps
 REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, ~0)
 REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, ~0)
to be a bit less repetitive.

Hmm, yeah I like that second form since it seems harder
to screw up the masks that way. I suppose we could even
formalize this sort of stuff into a REG_FIELD_MAX() macro...


> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	if (!HAS_VRR(display))
> +		return 0;

No one should be calling this in that case.

> +
> +	if (DISPLAY_VER(display) >= 13)
> +		return VRR_GUARDBAND_MAX;
> +
> +	return intel_vrr_pipeline_full_to_guardband(crtc_state, VRR_PIPELINE_FULL_MAX);
> +}
> +
> +static int clamp_guardband(struct intel_crtc_state *crtc_state, int guardband)
> +{
> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	int vblank_length = adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay;
> +	int set_context_latency = crtc_state->set_context_latency;
> +	int max_hw_guardband = intel_vrr_max_hw_guardband(crtc_state);
> +	int max_guardband;
> +
> +	max_guardband = min(max_hw_guardband, vblank_length - set_context_latency);
> +
> +	return min(guardband, max_guardband);

You are missing intel_vrr_extra_vblank_delay() here.

To reduce the clutter I'd pull the max guardband (in terms
of the vblank length) calculation into a separate function:

intel_vrr_max_guardband()
{
	return vmin - vdisplay - extra - scl;
}

Or maybe call it something like intel_vrr_max_vblank_guardband().

And then we could have a

intel_vrr_max_guardband()
{
	return min(intel_vrr_max_vblank_guardband(), intel_vrr_max_hw_guardband());
}

to give the final number.

> +}
> +
>  void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> @@ -421,16 +449,12 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>  		crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
>  		intel_vrr_extra_vblank_delay(display);
>  

I think the initial guardband value here we could change to be
simply 'vmin - crtc_vdisplay' (until we start to optimize it).
That way all the hw details and whatnot will be handled by
intel_vrr_max_guardband().

So in the end this could be just
guardband = min(vmin - crtc_vdisplay,
		intel_vrr_max_guardband());


> -	if (DISPLAY_VER(display) < 13) {
> -		/* FIXME handle the limit in a proper way */
> -		crtc_state->vrr.guardband =
> -			min(crtc_state->vrr.guardband,
> -			    intel_vrr_pipeline_full_to_guardband(crtc_state, 255));
> +	crtc_state->vrr.guardband = clamp_guardband(crtc_state, crtc_state->vrr.guardband);
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
