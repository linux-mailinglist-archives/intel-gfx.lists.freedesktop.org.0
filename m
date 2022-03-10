Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DCC4D4892
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 15:06:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 490EC10E6BB;
	Thu, 10 Mar 2022 14:06:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B0DE10E6BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 14:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646921199; x=1678457199;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5cPFioSNT5eGkBnw1zsJoVO4TJK2gkQIufCSfTqdjkY=;
 b=Ag6C/gW4atsR8da6He0B+cvXPXqcSTtSYzGiYOy3jMvejJ5GZFsgUcBf
 STFFn3FG7KEke9rXoW5dPuUUDdpKiwc9dm5Ll3OlbZX1SyZYPxzFV0TjS
 FD8RiIPxGN2yNoC10TOc7a+c7X1piOsYPAlBCRryKIYwByajS2A8/0+VS
 weweLHWBoRQjT3lW73hOGqMIGn7MknOkUqwxaO3xxe9baB5zTKmnrmvHt
 URbb7vUFenova4+mxfWL+jHIC+qzbHqn8RUKc9vSPcvqq0KOi/omM4iqE
 385ZV5qXweUx5Fer6hi7Yt13RtgO59Btqp0sBiUxzysLOuuAGruUN/ejS Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="341683864"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="341683864"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 06:06:34 -0800
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="642567795"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 06:06:32 -0800
Date: Thu, 10 Mar 2022 16:06:59 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220310140659.GA320@intel.com>
References: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
 <20220303191207.27931-10-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220303191207.27931-10-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 9/9] drm/i915: Add "maximum pipe read
 bandwidth" checks
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

On Thu, Mar 03, 2022 at 09:12:07PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Make sure the CDCLK is high enough to support the so called
> "maximum pipe read bandwidth" limitation. Specified as
> 51.2 x CDCLK.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 36 +++++++++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_bw.h |  1 +
>  2 files changed, 32 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index ed86f3e3c66c..e5e772c4fcfb 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -599,6 +599,18 @@ static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_
>  	return data_rate;
>  }
>  
> +/* "Maximum Pipe Read Bandwidth" */
> +static int intel_bw_crtc_min_cdclk(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +
> +	if (DISPLAY_VER(i915) < 12)
> +		return 0;
> +
> +	return DIV_ROUND_UP_ULL(mul_u32_u32(intel_bw_crtc_data_rate(crtc_state), 10), 512);
> +}
> +
>  void intel_bw_crtc_update(struct intel_bw_state *bw_state,
>  			  const struct intel_crtc_state *crtc_state)
>  {
> @@ -696,6 +708,9 @@ static bool intel_bw_state_changed(struct drm_i915_private *i915,
>  			    old_crtc_bw->active_planes[slice] != new_crtc_bw->active_planes[slice])
>  				return true;
>  		}
> +
> +		if (old_bw_state->min_cdclk[pipe] != new_bw_state->min_cdclk[pipe])
> +			return true;
>  	}
>  
>  	return false;
> @@ -788,7 +803,15 @@ intel_bw_dbuf_min_cdclk(struct drm_i915_private *i915,
>  int intel_bw_min_cdclk(struct drm_i915_private *i915,
>  		       const struct intel_bw_state *bw_state)
>  {
> -	return intel_bw_dbuf_min_cdclk(i915, bw_state);
> +	enum pipe pipe;
> +	int min_cdclk;
> +
> +	min_cdclk = intel_bw_dbuf_min_cdclk(i915, bw_state);
> +
> +	for_each_pipe(i915, pipe)
> +		min_cdclk = max(bw_state->min_cdclk[pipe], min_cdclk);
> +
> +	return min_cdclk;
>  }
>  
>  int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
> @@ -814,6 +837,9 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
>  		old_bw_state = intel_atomic_get_old_bw_state(state);
>  
>  		skl_crtc_calc_dbuf_bw(new_bw_state, crtc_state);
> +
> +		new_bw_state->min_cdclk[crtc->pipe] =
> +			intel_bw_crtc_min_cdclk(crtc_state);
>  	}
>  
>  	if (!old_bw_state)
> @@ -830,9 +856,9 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
>  
>  	/*
>  	 * No need to check against the cdclk state if
> -	 * the min cdclk for the dbuf doesn't increase.
> +	 * the min cdclk doesn't increase.
>  	 *
> -	 * Ie. we only ever increase the cdclk due to dbuf
> +	 * Ie. we only ever increase the cdclk due to bandwidth
>  	 * requirements. This can reduce back and forth
>  	 * display blinking due to constant cdclk changes.
>  	 */
> @@ -845,9 +871,9 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
>  
>  	/*
>  	 * No need to recalculate the cdclk state if
> -	 * the min cdclk for the dbuf doesn't increase.
> +	 * the min cdclk doesn't increase.
>  	 *
> -	 * Ie. we only ever increase the cdclk due to dbuf
> +	 * Ie. we only ever increase the cdclk due to bandwidth
>  	 * requirements. This can reduce back and forth
>  	 * display blinking due to constant cdclk changes.
>  	 */
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
> index 92fc09a8c824..cb7ee3a24a58 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -41,6 +41,7 @@ struct intel_bw_state {
>  	 */
>  	u16 qgv_points_mask;
>  
> +	int min_cdclk[I915_MAX_PIPES];
>  	unsigned int data_rate[I915_MAX_PIPES];
>  	u8 num_active_planes[I915_MAX_PIPES];
>  };
> -- 
> 2.34.1
> 
