Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 255863FDD45
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 15:48:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0161897B5;
	Wed,  1 Sep 2021 13:48:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEC2D897B5
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 13:48:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="218472067"
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="218472067"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 06:48:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="498902954"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 01 Sep 2021 06:48:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Sep 2021 16:48:43 +0300
Date: Wed, 1 Sep 2021 16:48:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YS+EuzTIv5YWfzIL@intel.com>
References: <20210622093424.886133-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210622093424.886133-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor clock
 gating in HDR mode
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

On Tue, Jun 22, 2021 at 03:04:24PM +0530, Tejas Upadhyay wrote:
> Display underrun in HDR mode when cursor is enabled.
> RTL fix will be implemented CLKGATE_DIS_PSL_A bit 28-46520h.
> As per W/A 1604331009, Disable cursor clock gating in HDR mode.
> 
> Bspec : 33451
> 
> Changes since V3:
> 	- Disable WA when not in HDR mode or cursor plane not active - Ville
> 	- Extract required args from crtc_state - Ville
> 	- Create HDR mode API using bdw_set_pipemisc ref - Ville
> 	- Tested with HDR video as well full setmode, WA applies and disables
> Changes since V2:
>         - Made it general gen11 WA
>         - Removed WA needed check
>         - Added cursor plane active check
>         - Once WA enable, software will not disable
> Changes since V1:
>         - Modified way CLKGATE_DIS_PSL bit 28 was modified
> 
> Cc: Souza Jose <jose.souza@intel.com>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 27 ++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h              |  5 ++++
>  2 files changed, 32 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 6be1b31af07b..e1ea03b918df 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -358,6 +358,13 @@ static void intel_update_czclk(struct drm_i915_private *dev_priv)
>  		dev_priv->czclk_freq);
>  }
>  
> +static bool
> +is_hdr_mode(const struct intel_crtc_state *crtc_state)
> +{
> +	return (crtc_state->active_planes & ~(icl_hdr_plane_mask() |
> +		BIT(PLANE_CURSOR))) == 0;
> +}

Please use this in bdw_set_pipemisc() as well. This could be
a separate prep patch actually.

> +
>  /* WA Display #0827: Gen9:all */
>  static void
>  skl_wa_827(struct drm_i915_private *dev_priv, enum pipe pipe, bool enable)
> @@ -383,6 +390,23 @@ icl_wa_scalerclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
>  		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_DIS);
>  }
>  
> +/* Wa_1604331009:icl,jsl,ehl */
> +	static void
> +icl_wa_cursorclkgating(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +
> +	if (is_hdr_mode(crtc_state) &&
> +	    crtc_state->active_planes & BIT(PLANE_CURSOR) &&
> +	    IS_GEN(dev_priv, 11))
> +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(crtc->pipe),
> +			     CURSOR_GATING_DIS, CURSOR_GATING_DIS);
> +	else
> +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(crtc->pipe),
> +			     CURSOR_GATING_DIS, 0);
> +}
> +
>  static bool
>  is_trans_port_sync_slave(const struct intel_crtc_state *crtc_state)
>  {
> @@ -2939,6 +2963,9 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>  	    needs_scalerclk_wa(new_crtc_state))
>  		icl_wa_scalerclkgating(dev_priv, pipe, true);
>  
> +	/* Wa_1604331009:icl,jsl,ehl */
> +	icl_wa_cursorclkgating(new_crtc_state);

This looks a bit wrong. We shouldn't turn the clock gating back on
until after HDR mode has been disabled.

So please model this after skl_wa_827() and icl_wa_scalerclkgating()
so that a) the ordering is correct, and b) the code between all three
w/as looks consistent.

> +
>  	/*
>  	 * Vblank time updates from the shadow to live plane control register
>  	 * are blocked if the memory self-refresh mode is active at that
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c857fafb8a30..703d708c773e 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4235,6 +4235,11 @@ enum {
>  #define INF_UNIT_LEVEL_CLKGATE		_MMIO(0x9560)
>  #define   CGPSF_CLKGATE_DIS		(1 << 3)
>  
> +/*
> + * GEN11 clock gating regs
> + */
> +#define   CURSOR_GATING_DIS            BIT(28)

This looks misplaced. It should be next to the other bits of whatever
register this is. Also pls use REG_BIT() instead of BIT().

> +
>  /*
>   * Display engine regs
>   */
> -- 
> 2.31.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Ville Syrjälä
Intel
