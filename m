Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B406B7E2DD5
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 21:12:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B1B410E3F5;
	Mon,  6 Nov 2023 20:12:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB94810E3F3
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 20:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699301529; x=1730837529;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SmmcSNBdmYLdmIz7D1KB61w7Qfu0N+Da1BEEX6paL5M=;
 b=ZcVKxc/XBrMjd6tiUz37hiX3e5uEy/sZE7MWv6bwP4tcZ4ApSA5tIEbr
 6wmhY09rZ+VBS54Da+06pDBZsUIhXOKzWc4ThnGsAup9HCMJg65twFpEp
 fBDv8jCoTgTFGESIOACS1LJbflhn4dzpfTvhTTeVQmenzX5SYuZ9cQ8Fd
 Wu/Dlv2Ytwv5DF8IdRES1PPMz9piuIjEiGozYToR4adeoSCCcb5FsPONW
 /9VocQzJ6HO0X8B56zrNck5nGzMJDFa6UOtTeLLk/pzyTFQJP6gi+TF3o
 7djQ02/gB7sk5+J4pMvfGellkCdwhV2ZLfj78z83aEbXrlqeBAiA0SXcK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="393253324"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="393253324"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 12:12:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="755948476"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="755948476"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 06 Nov 2023 12:12:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Nov 2023 22:12:04 +0200
Date: Mon, 6 Nov 2023 22:12:04 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <ZUlIlPtbb-Mmfb3g@intel.com>
References: <20231102215519.135847-1-vinod.govindapillai@intel.com>
 <20231102215519.135847-2-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231102215519.135847-2-vinod.govindapillai@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v1 1/2] drm/i915/xe2lpd: check selective
 fetch is optimal in some cases
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
Cc: matthew.d.roper@intel.com, intel-gfx@lists.freedesktop.org,
 ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 02, 2023 at 11:55:18PM +0200, Vinod Govindapillai wrote:
> If both PSR2 + FBC is supported, in cases where the selective
> fetch area is greater than 25% of the screen area, FBC might
> be more efficient.

"might be more efficient" is a very weak justification.

This sort of stuff would really need to be accompanied by 
some actual power numbers (for some actually reasonable
workloads) to justify the extra complication.

> So have a possibility to check this and add
> provision to enable FBC in such cases.
> 
> Bspec: 68881
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 42 ++++++++++++++++---
>  2 files changed, 38 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 047fe3f8905a..bcc5fd8d8a00 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1207,6 +1207,7 @@ struct intel_crtc_state {
>  	bool has_psr;
>  	bool has_psr2;
>  	bool enable_psr2_sel_fetch;
> +	bool full_frame_fetch;
>  	bool req_psr2_sdp_prior_scanline;
>  	bool wm_level_disabled;
>  	u32 dc3co_exitline;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index ecd24a0b86cb..6cb32fd29d10 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1987,10 +1987,35 @@ static bool psr2_sel_fetch_pipe_state_supported(const struct intel_crtc_state *c
>  	return true;
>  }
>  
> +/*
> + * Check selective fetch is optimum
> + *
> + * Compare selective fetch area w.r.t screen size in case both FBC and PSR2
> + * is supported. If the selective fetch area is more than 25% of screen
> + * size, FBC is might be more efficient than PSR2. So force full frame
> + * update.
> + */
> +static bool psr2_sel_fetch_not_optimal(struct drm_i915_private *i915,
> +				       struct drm_rect *sel_fetch,
> +				       struct drm_rect *src)
> +{
> +	int screen_area, selfetch_area;
> +
> +	/* This is needed where FBC + PSR can be supported */
> +	if (DISPLAY_VER(i915) < 20 || !i915->display.params.enable_fbc ||
> +	    !HAS_FBC(i915))
> +		return false;
> +
> +	selfetch_area = drm_rect_height(sel_fetch) * drm_rect_width(sel_fetch);
> +	screen_area = drm_rect_height(src) * drm_rect_width(src);
> +
> +	return DIV_ROUND_CLOSEST(screen_area, selfetch_area) <= 4;
> +}
> +
>  int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  				struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	struct intel_crtc_state *crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_rect pipe_clip = { .x1 = 0, .y1 = -1, .x2 = INT_MAX, .y2 = -1 };
>  	struct intel_plane_state *new_plane_state, *old_plane_state;
> @@ -2082,7 +2107,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  	 * calculation for those.
>  	 */
>  	if (pipe_clip.y1 == -1) {
> -		drm_info_once(&dev_priv->drm,
> +		drm_info_once(&i915->drm,
>  			      "Selective fetch area calculation failed in pipe %c\n",
>  			      pipe_name(crtc->pipe));
>  		full_update = true;
> @@ -2092,9 +2117,9 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  		goto skip_sel_fetch_set_loop;
>  
>  	/* Wa_14014971492 */
> -	if ((IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
> -	     IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
> -	    crtc_state->splitter.enable)
> +	if ((IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_B0) ||
> +	     IS_ALDERLAKE_P(i915) || IS_TIGERLAKE(i915)) &&
> +	     crtc_state->splitter.enable)
>  		pipe_clip.y1 = 0;
>  
>  	ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
> @@ -2149,7 +2174,14 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  		}
>  	}
>  
> +	if (full_update)
> +		goto skip_sel_fetch_set_loop;
> +
> +	full_update = psr2_sel_fetch_not_optimal(i915, &pipe_clip,
> +						 &crtc_state->pipe_src);
> +
>  skip_sel_fetch_set_loop:
> +	crtc_state->full_frame_fetch = full_update;
>  	psr2_man_trk_ctl_calc(crtc_state, &pipe_clip, full_update);
>  	return 0;
>  }
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
