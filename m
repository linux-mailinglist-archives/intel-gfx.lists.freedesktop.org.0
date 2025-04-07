Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF53A7E6DB
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 18:39:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB8310E51C;
	Mon,  7 Apr 2025 16:39:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jCEo9W26";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF89C10E511;
 Mon,  7 Apr 2025 16:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744043946; x=1775579946;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=YrXkOHjK16UxbF2eLUK2ojttb/xGJcqSL37KDdSePSY=;
 b=jCEo9W260+cuYwOsLeDFc5zBg9W/MhMj3pJq1pWlvJWsFnqsJTzqLQnf
 wOSQ/DOSfpp2DUaGRTEppeAHH+cKc9jX9ZtU2zZKsUpZYBwix2mi/ZhNw
 zS8viFhd10nu5pX+Kf8+JfLeI7Verh90XzQUPRpCZec0TuN4255m3bwJc
 QYjTej5BvnDmgiRDKLQNYvT8RpZvJTAl6sVc37Hp9YL12w9Vwtzb+lOBY
 PP3UdYuz7ueEiUCojj2bwf0/AA4EXSmX8CPJuk889QYsEmgfpu6OxAz4Z
 OtzI8pwVi/Ahapzv8CEYozNKaafqEiYBoPdwP4obiEcA0eXz9S6Ouk5bS Q==;
X-CSE-ConnectionGUID: bCXmeyVYSSu5iqrWqfei5A==
X-CSE-MsgGUID: Od56VlXWRua0WyMarNFlgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45455631"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="45455631"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 09:39:06 -0700
X-CSE-ConnectionGUID: pphOak46Ru+69Eewt+3KPQ==
X-CSE-MsgGUID: Fdzb8p8+Rt23oVpVN/SFGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="133211746"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Apr 2025 09:39:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Apr 2025 19:39:01 +0300
Date: Mon, 7 Apr 2025 19:39:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 uma.shankar@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 07/11] drm/i915: s/dsb_color_vblank/dsb_color
Message-ID: <Z_P_pYPTbGMziMVK@intel.com>
References: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
 <20250407142359.1398410-8-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250407142359.1398410-8-chaitanya.kumar.borah@intel.com>
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

On Mon, Apr 07, 2025 at 07:53:55PM +0530, Chaitanya Kumar Borah wrote:
> With double buffer gamma registers in the mix, we need not wait for
> vblank to execute gamma writes through dsb. Before we implement
> that s/dsb_color_vblank/dsb_color.
> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c   |  4 +-
>  drivers/gpu/drm/i915/display/intel_color.c    | 38 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_display.c  | 10 ++---
>  .../drm/i915/display/intel_display_types.h    |  2 +-
>  4 files changed, 27 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> index e83feca5c9c9..f85edb374c97 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -274,7 +274,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
>  	crtc_state->do_async_flip = false;
>  	crtc_state->fb_bits = 0;
>  	crtc_state->update_planes = 0;
> -	crtc_state->dsb_color_vblank = NULL;
> +	crtc_state->dsb_color = NULL;
>  	crtc_state->dsb_commit = NULL;
>  	crtc_state->use_dsb = false;
>  
> @@ -310,7 +310,7 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
>  {
>  	struct intel_crtc_state *crtc_state = to_intel_crtc_state(state);
>  
> -	drm_WARN_ON(crtc->dev, crtc_state->dsb_color_vblank);
> +	drm_WARN_ON(crtc->dev, crtc_state->dsb_color);
>  	drm_WARN_ON(crtc->dev, crtc_state->dsb_commit);
>  
>  	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 98dddf72c0eb..bb2da3a53e9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1339,8 +1339,8 @@ static void ilk_lut_write(const struct intel_crtc_state *crtc_state,
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  
> -	if (crtc_state->dsb_color_vblank)
> -		intel_dsb_reg_write(crtc_state->dsb_color_vblank, reg, val);
> +	if (crtc_state->dsb_color)
> +		intel_dsb_reg_write(crtc_state->dsb_color, reg, val);
>  	else
>  		intel_de_write_fw(display, reg, val);
>  }
> @@ -1350,8 +1350,8 @@ static void ilk_lut_write_indexed(const struct intel_crtc_state *crtc_state,
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  
> -	if (crtc_state->dsb_color_vblank)
> -		intel_dsb_reg_write_indexed(crtc_state->dsb_color_vblank, reg, val);
> +	if (crtc_state->dsb_color)
> +		intel_dsb_reg_write_indexed(crtc_state->dsb_color, reg, val);
>  	else
>  		intel_de_write_fw(display, reg, val);
>  }
> @@ -1389,7 +1389,7 @@ static void ilk_load_lut_8(const struct intel_crtc_state *crtc_state,
>  	for (i = 0; i < 256; i++) {
>  		ilk_lut_write(crtc_state, LGC_PALETTE(pipe, i),
>  			      i9xx_lut_8(&lut[i]));
> -		if (crtc_state->dsb_color_vblank)
> +		if (crtc_state->dsb_color)
>  			ilk_lut_write(crtc_state, LGC_PALETTE(pipe, i),
>  				      i9xx_lut_8(&lut[i]));
>  	}
> @@ -1917,7 +1917,7 @@ void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  
> -	if (crtc_state->dsb_color_vblank)
> +	if (crtc_state->dsb_color)
>  		return;
>  
>  	display->funcs.color->load_luts(crtc_state);
> @@ -1982,39 +1982,39 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
>  	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
>  		return;
>  
> -	crtc_state->dsb_color_vblank = intel_dsb_prepare(state, crtc, INTEL_DSB_1, 1024);
> -	if (!crtc_state->dsb_color_vblank)
> +	crtc_state->dsb_color = intel_dsb_prepare(state, crtc, INTEL_DSB_1, 1024);
> +	if (!crtc_state->dsb_color)
>  		return;
>  
>  	display->funcs.color->load_luts(crtc_state);
>  
>  	if (crtc_state->use_dsb) {
> -		intel_vrr_send_push(crtc_state->dsb_color_vblank, crtc_state);
> -		intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color_vblank);
> -		intel_vrr_check_push_sent(crtc_state->dsb_color_vblank, crtc_state);
> -		intel_dsb_interrupt(crtc_state->dsb_color_vblank);
> +		intel_vrr_send_push(crtc_state->dsb_color, crtc_state);
> +		intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color);
> +		intel_vrr_check_push_sent(crtc_state->dsb_color, crtc_state);
> +		intel_dsb_interrupt(crtc_state->dsb_color);
>  	}
>  
> -	intel_dsb_finish(crtc_state->dsb_color_vblank);
> +	intel_dsb_finish(crtc_state->dsb_color);
>  }
>  
>  void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state)
>  {
> -	if (crtc_state->dsb_color_vblank) {
> -		intel_dsb_cleanup(crtc_state->dsb_color_vblank);
> -		crtc_state->dsb_color_vblank = NULL;
> +	if (crtc_state->dsb_color) {
> +		intel_dsb_cleanup(crtc_state->dsb_color);
> +		crtc_state->dsb_color = NULL;
>  	}
>  }
>  
>  void intel_color_wait_commit(const struct intel_crtc_state *crtc_state)
>  {
> -	if (crtc_state->dsb_color_vblank)
> -		intel_dsb_wait(crtc_state->dsb_color_vblank);
> +	if (crtc_state->dsb_color)
> +		intel_dsb_wait(crtc_state->dsb_color);
>  }
>  
>  bool intel_color_uses_dsb(const struct intel_crtc_state *crtc_state)
>  {
> -	return crtc_state->dsb_color_vblank;
> +	return crtc_state->dsb_color;
>  }
>  
>  static bool intel_can_preload_luts(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index dc7517da2ed5..69c1790199d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7182,7 +7182,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  	struct intel_crtc_state *new_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  
> -	if (!new_crtc_state->use_dsb && !new_crtc_state->dsb_color_vblank)
> +	if (!new_crtc_state->use_dsb && !new_crtc_state->dsb_color)
>  		return;
>  
>  	/*
> @@ -7229,7 +7229,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  			skl_detach_scalers(new_crtc_state->dsb_commit,
>  					   new_crtc_state);
>  
> -		if (!new_crtc_state->dsb_color_vblank) {
> +		if (!new_crtc_state->dsb_color) {
>  			intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
>  
>  			intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
> @@ -7239,9 +7239,9 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  		}
>  	}
>  
> -	if (new_crtc_state->dsb_color_vblank)
> +	if (new_crtc_state->dsb_color)
>  		intel_dsb_chain(state, new_crtc_state->dsb_commit,
> -				new_crtc_state->dsb_color_vblank, true);
> +				new_crtc_state->dsb_color, true);
>  
>  	intel_dsb_finish(new_crtc_state->dsb_commit);
>  }
> @@ -7430,7 +7430,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  		 *
>  		 * FIXME get rid of this funny new->old swapping
>  		 */
> -		old_crtc_state->dsb_color_vblank = fetch_and_zero(&new_crtc_state->dsb_color_vblank);
> +		old_crtc_state->dsb_color = fetch_and_zero(&new_crtc_state->dsb_color);
>  		old_crtc_state->dsb_commit = fetch_and_zero(&new_crtc_state->dsb_commit);
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 367b53a9eae2..99244c2449d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1292,7 +1292,7 @@ struct intel_crtc_state {
>  	enum transcoder mst_master_transcoder;
>  
>  	/* For DSB based pipe updates */
> -	struct intel_dsb *dsb_color_vblank, *dsb_commit;
> +	struct intel_dsb *dsb_color, *dsb_commit;
>  	bool use_dsb;
>  
>  	u32 psr2_man_track_ctl;
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
