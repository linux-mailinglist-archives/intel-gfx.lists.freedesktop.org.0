Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FADCB8FF24
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 12:14:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE6CA10E403;
	Mon, 22 Sep 2025 10:14:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WSqQ9Yiz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1584E10E403;
 Mon, 22 Sep 2025 10:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758536060; x=1790072060;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QwMsgskCgMBWAm6MKoENMJAKRci0D1sIw+DgbUm9Cc0=;
 b=WSqQ9YizKUQyt+HKzaYn19NUJ9NlPnx+y9KuneLnqXDnZpSauh9N1sIV
 HzMmt4VWpgpEDb9U2wWXO0l1xzXBjYF+f5D8U8fwXmn1f6b5r/sw7aAEN
 vy582NowT15DV98O0Y2AeuloN80BD6jFVuOL3uMiV7INutiRRp1af6JwM
 gdlT3fzKrPJasIrSlKdjXM689/okSkMaoA17WAAwL6ry2qaBv4aggMoCg
 IXqIf51nR2Qkk92JPS4FOqDkQ+37SQgJRyvRxfmLasX4z3oFZ7BHhWpD+
 L+v3XgZHAe8+zOU2/lFmbbRLWa5N0mSdalJ+Qhu9zAM/pzjdN6pCFKbKZ A==;
X-CSE-ConnectionGUID: UnbDH8GeT526AzLmmSgVtA==
X-CSE-MsgGUID: IXEm8WwdQEWY5xlW56KSaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11560"; a="64433246"
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="64433246"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 03:14:20 -0700
X-CSE-ConnectionGUID: 0eqbP4s3Tiu8NDHMYO5CSw==
X-CSE-MsgGUID: dvYxB+fpSNeui4mcuITfrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="176262974"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.115])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 03:14:18 -0700
Date: Mon, 22 Sep 2025 13:14:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/9] drm/i915/vrr: Use set_context_latency instead of
 intel_vrr_real_vblank_delay()
Message-ID: <aNEhd4_sClBpXO75@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
 <20250921043535.2012978-5-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250921043535.2012978-5-ankit.k.nautiyal@intel.com>
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

On Sun, Sep 21, 2025 at 10:05:30AM +0530, Ankit Nautiyal wrote:
> The helper intel_vrr_real_vblank_delay() was added to account for the
> SCL lines for TGL where we do not have the TRANS_SET_CONTEXT_LATENCY.
> 
> Now, since we already are tracking the SCL with new member
> `set_context_latency` use it directly instead of the helper.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

I think right after this patch you could also do a patch to 
change the guardband calculation to something like:

guardband = vmin - crtc_vdisplay -
	intel_vrr_extra_vblank_delay() -
	crtc_state->set_context_latency;

That better reflects how the hardware opearates.

> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 16 +++++-----------
>  1 file changed, 5 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 9e007aab1452..698b33b5b326 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -79,12 +79,6 @@ intel_vrr_check_modeset(struct intel_atomic_state *state)
>  	}
>  }
>  
> -static int intel_vrr_real_vblank_delay(const struct intel_crtc_state *crtc_state)
> -{
> -	return crtc_state->hw.adjusted_mode.crtc_vblank_start -
> -		crtc_state->hw.adjusted_mode.crtc_vdisplay;
> -}
> -
>  static int intel_vrr_extra_vblank_delay(struct intel_display *display)
>  {
>  	/*
> @@ -102,7 +96,7 @@ int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  
> -	return intel_vrr_real_vblank_delay(crtc_state) +
> +	return crtc_state->set_context_latency +
>  		intel_vrr_extra_vblank_delay(display);
>  }
>  
> @@ -263,7 +257,7 @@ static int intel_vrr_hw_value(const struct intel_crtc_state *crtc_state,
>  	if (DISPLAY_VER(display) >= 13)
>  		return value;
>  	else
> -		return value - intel_vrr_real_vblank_delay(crtc_state);
> +		return value - crtc_state->set_context_latency;
>  }
>  
>  /*
> @@ -761,9 +755,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  
>  		if (DISPLAY_VER(display) < 13) {
>  			/* undo what intel_vrr_hw_value() does when writing the values */
> -			crtc_state->vrr.flipline += intel_vrr_real_vblank_delay(crtc_state);
> -			crtc_state->vrr.vmax += intel_vrr_real_vblank_delay(crtc_state);
> -			crtc_state->vrr.vmin += intel_vrr_real_vblank_delay(crtc_state);
> +			crtc_state->vrr.flipline += crtc_state->set_context_latency;
> +			crtc_state->vrr.vmax += crtc_state->set_context_latency;
> +			crtc_state->vrr.vmin += crtc_state->set_context_latency;
>  
>  			crtc_state->vrr.vmin += intel_vrr_vmin_flipline_offset(display);
>  		}
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
