Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3376435BA
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 21:34:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 586A010E297;
	Mon,  5 Dec 2022 20:34:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 254F710E299
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 20:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670272455; x=1701808455;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vsxDBYiOjhsrKyv9BHbcoYmi63YAmdkssRmahES4oB4=;
 b=co6U+sN1EYXZuZAo6NYorFgMJQOLEfC/A5upevCjQV7xfwgx0Fa+bARI
 cWhXqumeaxzXUQ6NCcbvAC61dQx/hJjDXYPZtsAeSvxGPG7E8WCaQunvB
 972i7JZvEURfSRbgKfpVqbBZquXr4lhkoUmJPDyOKxZ3e6RgWyg5wK+ia
 hGhA9iR/bAz875k7vhdBb1bfkEMLR9FU5PQbYUvGH7JCzI9nUj6/fKPm6
 Dk6ZVpI31Xgz3J3smg0x4/+a4GfQUoV8sMe++7pSExrXfjjHxodmxRZBJ
 dYu1oP5sAiig3BqMHczdlMq9jfq0To+nch7cLzyeOX2z7Mw1FSB0+Cc5c Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="378619365"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="378619365"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 12:34:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="788221445"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="788221445"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.203])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 12:34:13 -0800
Date: Mon, 5 Dec 2022 12:34:25 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20221205203425.GA1209420@mdnavare-mobl1.jf.intel.com>
References: <20221202134412.21943-1-ville.syrjala@linux.intel.com>
 <20221202134412.21943-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221202134412.21943-3-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/vrr: Fix guardband/vblank exit
 length calculation for adl+
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 02, 2022 at 03:44:10PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We are miscalculating both the guardband value, and the resulting
> vblank exit length on adl+. This means that our start of vblank
> (double buffered register latch point) is incorrect, and we also
> think that it's not where it actually is (hence vblank evasion/etc.
> may not work properly). Fix up the calculations to match the real
> hardware behaviour (as reverse engineered by intel_display_poller).
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 6655dd2c1684..753e7b211708 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -78,10 +78,10 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  
> -	/* The hw imposes the extra scanline before frame start */
>  	if (DISPLAY_VER(i915) >= 13)
> -		return crtc_state->vrr.guardband + crtc_state->framestart_delay + 1;
> +		return crtc_state->vrr.guardband;

This makes sense since with guardband, there is no framestart delay

>  	else
> +		/* The hw imposes the extra scanline before frame start */
>  		return crtc_state->vrr.pipeline_full + crtc_state->framestart_delay + 1;
>  }
>  
> @@ -151,7 +151,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  		 * number of scan lines. Assuming 0 for no DSB.
>  		 */
>  		crtc_state->vrr.guardband =
> -			crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay;
> +			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vdisplay;

Why are we adding + 1 here? The bspec says guardband should be :
Guardband = Vmin - Vactive - Window2 where in our case Window2 = 0
If we need that + 1 to get this working, then perhaps we need to update
Bspec?

I kind of want to see if this is still breaking if we dont have that +
1?

Manasi

>  	} else {
>  		crtc_state->vrr.pipeline_full =
>  			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay -
> -- 
> 2.37.4
> 
