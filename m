Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7C96BD817
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 19:21:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA75510ED95;
	Thu, 16 Mar 2023 18:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 154B610ED95
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 18:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678990909; x=1710526909;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yOYihVEY1XOLxlcRLJ35OnnKIslQboN966SfiFkg8YQ=;
 b=GJwRDJSzQ1qVxMHwB5o2co0usCDlDqcZ+Xpp3D/4ks/OOxQ5NPXuPwLH
 RYbzJJhtPc1JZ1n9hbV0uJRzodBW28RbR/HuVfAZYEVxF9zuAl5nM3aZI
 amvNJbVW0pKzoej3Qfy1imhB+XWXsFwgnWrcVFmlNawngOLxwsWEgKfhz
 Mf4RptaX8GokA1PtFqfddZSZ3FYpShNElV8+nrOGtGg3wtIMhICIl6epz
 l4EFycB/4K508sb3EjjGxzL63J97oxxdQ8aAT/paOYybNJIAt67z2HVJF
 5TNMReTuRF3/dxAKQg36qnBssR1KXByO938TqvH0Pc83POWvogMF1bZV5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="400664191"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="400664191"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 11:21:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="657275942"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="657275942"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 16 Mar 2023 11:21:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Mar 2023 20:21:30 +0200
Date: Thu, 16 Mar 2023 20:21:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZBNeKlSPGaCkqn2q@intel.com>
References: <20230314090142.947764-1-jouni.hogander@intel.com>
 <20230314090142.947764-2-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230314090142.947764-2-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Fix Wa_16013835468 and
 Wa_14015648006
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

On Tue, Mar 14, 2023 at 11:01:41AM +0200, Jouni Högander wrote:
> PSR WM optimization should be disabled based on any wm level being
> disabled. Currently it's disabled always when using delayed vblank.
> 
> Bspec: 71580
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
>  drivers/gpu/drm/i915/display/intel_psr.c           | 12 +++++-------
>  drivers/gpu/drm/i915/display/skl_watermark.c       |  7 +++++--
>  3 files changed, 11 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index c32bfba06ca1..60504c390408 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1152,6 +1152,7 @@ struct intel_crtc_state {
>  	bool has_psr2;
>  	bool enable_psr2_sel_fetch;
>  	bool req_psr2_sdp_prior_scanline;
> +	bool wm_level_disabled;
>  	u32 dc3co_exitline;
>  	u16 su_y_granularity;
>  	struct drm_dp_vsc_sdp psr_vsc;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 44610b20cd29..a6edd65b8edb 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1177,13 +1177,11 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  	 * Wa_16013835468
>  	 * Wa_14015648006
>  	 */
> -	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> -	    IS_DISPLAY_VER(dev_priv, 12, 13)) {
> -		if (crtc_state->hw.adjusted_mode.crtc_vblank_start !=
> -		    crtc_state->hw.adjusted_mode.crtc_vdisplay)

That looks like something we want to keep. The delayed vblank w/a is
still supposedly necessary.

> -			intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
> -				     wa_16013835468_bit_get(intel_dp));
> -	}
> +	if ((IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> +	     IS_DISPLAY_VER(dev_priv, 12, 13)) &&

I think we need this for all KBL+.

> +	    crtc_state->wm_level_disabled)
> +		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
> +			     wa_16013835468_bit_get(intel_dp));
>  
>  	if (intel_dp->psr.psr2_enabled) {
>  		if (DISPLAY_VER(dev_priv) == 9)
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 50a9a6adbe32..afb751c024ba 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2273,9 +2273,12 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
>  		return level;
>  
>  	/*
> -	 * FIXME PSR needs to toggle LATENCY_REPORTING_REMOVED_PIPE_*
> +	 * PSR needs to toggle LATENCY_REPORTING_REMOVED_PIPE_*
>  	 * based on whether we're limited by the vblank duration.
> -	 *
> +	 */
> +	crtc_state->wm_level_disabled = level < i915->display.wm.num_levels - 1;
> +
> +	/*
>  	 * FIXME also related to skl+ w/a 1136 (also unimplemented as of
>  	 * now) perhaps?
>  	 */

And that is more or less corresponding w/a for SKL/BXT that did not yet have
these chicken bits.

> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
