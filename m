Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A104887228
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 18:50:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 076A711268A;
	Fri, 22 Mar 2024 17:50:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YljM8WV8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1906611268A
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 17:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711129850; x=1742665850;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jYW6Da/jEGwil5+6PNu7G3SfdFR7JoZ3ZJWZhhjyVQM=;
 b=YljM8WV8rLd+47FdTHUUNKtm/NfTit2AaoXkHCHSg7kWdsn1aYFEy+on
 GwVZKjbjykwW/l6dPErQkW5Sr4YIt51Wep83mxDBUIKZe54Uy5vRn0kRw
 4v+7ra5RvEkMT8d5wkjT+dArJ7ImLVXdXJbc7pOIzAToCynlfm4DvkQDP
 nXGFubhDcQHYlfZMxp3HSih4ZKr6h+aKAMlKAE0v53jTDxqRHjKgN1V68
 OBVwHx949Xoo3zZjNm0q8ZfUgwGcaEvzOEcFH3C76tM+Uk1ruZtGy5HVD
 O6dlv9opAq+ivHbujNTRCMKxlYzIm1vqcZT+ZWb05Hp6NSZFhX/nnBGnk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="6047707"
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; 
   d="scan'208";a="6047707"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 10:50:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="827783571"
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; d="scan'208";a="827783571"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 22 Mar 2024 10:50:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Mar 2024 19:50:45 +0200
Date: Fri, 22 Mar 2024 19:50:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 2/5] drm/i915: Break intel_dbuf_mbus_update into 2
 separate parts
Message-ID: <Zf3E9XVJck_uuuJj@intel.com>
References: <20240322114046.24930-1-stanislav.lisovskiy@intel.com>
 <20240322114046.24930-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240322114046.24930-3-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Mar 22, 2024 at 01:40:43PM +0200, Stanislav Lisovskiy wrote:
> We need to be able to update dbuf min tracker and mdclk ratio
> separately if mbus_join state didn't change, so lets add one
> degree of freedom and make it possible.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 55 ++++++++++++--------
>  1 file changed, 33 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 8ff69da664807..2b947870527fc 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3570,16 +3570,38 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio
>  			     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
>  }
>  
> +static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	const struct intel_dbuf_state *old_dbuf_state =
> +		intel_atomic_get_old_dbuf_state(state);
> +	const struct intel_dbuf_state *new_dbuf_state =
> +		intel_atomic_get_new_dbuf_state(state);
> +
> +	if (DISPLAY_VER(i915) >= 20 &&
> +	    old_dbuf_state->mdclk_cdclk_ratio != new_dbuf_state->mdclk_cdclk_ratio) {
> +		/*
> +		 * For Xe2LPD and beyond, when there is a change in the ratio
> +		 * between MDCLK and CDCLK, updates to related registers need to
> +		 * happen at a specific point in the CDCLK change sequence. In
> +		 * that case, we defer to the call to
> +		 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK logic.
> +		 */
> +		return;
> +	}

That whole condition I think needs to go. We want to update the ratio
also when changing mbus joining. But that behavioural change doesn't
really belong in this patch, so this is

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +
> +	intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk_cdclk_ratio,
> +					    new_dbuf_state->joined_mbus);
> +}
> +
>  /*
>   * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
>   * update the request state of all DBUS slices.
>   */
> -static void intel_dbuf_mbus_update(struct intel_atomic_state *state)
> +static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	u32 mbus_ctl;
> -	const struct intel_dbuf_state *old_dbuf_state =
> -		intel_atomic_get_old_dbuf_state(state);
>  	const struct intel_dbuf_state *new_dbuf_state =
>  		intel_atomic_get_new_dbuf_state(state);
>  
> @@ -3600,21 +3622,6 @@ static void intel_dbuf_mbus_update(struct intel_atomic_state *state)
>  	intel_de_rmw(i915, MBUS_CTL,
>  		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
>  		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
> -
> -	if (DISPLAY_VER(i915) >= 20 &&
> -	    old_dbuf_state->mdclk_cdclk_ratio != new_dbuf_state->mdclk_cdclk_ratio) {
> -		/*
> -		 * For Xe2LPD and beyond, when there is a change in the ratio
> -		 * between MDCLK and CDCLK, updates to related registers need to
> -		 * happen at a specific point in the CDCLK change sequence. In
> -		 * that case, we defer to the call to
> -		 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK logic.
> -		 */
> -		return;
> -	}
> -
> -	intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk_cdclk_ratio,
> -					    new_dbuf_state->joined_mbus);
>  }
>  
>  void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
> @@ -3632,8 +3639,10 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
>  
>  	WARN_ON(!new_dbuf_state->base.changed);
>  
> -	if (!old_dbuf_state->joined_mbus && new_dbuf_state->joined_mbus)
> -		intel_dbuf_mbus_update(state);
> +	if (!old_dbuf_state->joined_mbus && new_dbuf_state->joined_mbus) {
> +		intel_dbuf_mbus_join_update(state);
> +		intel_dbuf_mdclk_min_tracker_update(state);
> +	}
>  
>  	gen9_dbuf_slices_update(i915,
>  				old_dbuf_state->enabled_slices |
> @@ -3655,8 +3664,10 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
>  
>  	WARN_ON(!new_dbuf_state->base.changed);
>  
> -	if (old_dbuf_state->joined_mbus && !new_dbuf_state->joined_mbus)
> -		intel_dbuf_mbus_update(state);
> +	if (old_dbuf_state->joined_mbus && !new_dbuf_state->joined_mbus) {
> +		intel_dbuf_mbus_join_update(state);
> +		intel_dbuf_mdclk_min_tracker_update(state);
> +	}
>  
>  	gen9_dbuf_slices_update(i915,
>  				new_dbuf_state->enabled_slices);
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
