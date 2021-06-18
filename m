Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 216AE3ACB4A
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 14:45:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F0386EA06;
	Fri, 18 Jun 2021 12:45:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46B056EA06
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 12:45:31 +0000 (UTC)
IronPort-SDR: uQ6KTWaQBRed74FnLNKZpbdF6nDnHPJC7h5C6MTVYKxfDC+LN67neNYVWmwFsSRTWfDbXYXM8Q
 /b/iH922Y70w==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="228074580"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="228074580"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 05:45:30 -0700
IronPort-SDR: d9W7DoMBRXwNpjbIICnqWpYPavmWVHO52I2mwiDwbh1kgc8t+ktWmZAX0dtMS0Gyts9dL6LacK
 P2zZAdjns0fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="422213006"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 18 Jun 2021 05:45:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Jun 2021 15:45:27 +0300
Date: Fri, 18 Jun 2021 15:45:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <YMyVZ72/W60XSc4V@intel.com>
References: <20210618114606.865705-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210618114606.865705-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/gen11: Disable cursor clock
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 18, 2021 at 05:16:06PM +0530, Tejas Upadhyay wrote:
> Display underrun in HDR mode when cursor is enabled.
> RTL fix will be implemented CLKGATE_DIS_PSL_A bit 28-46520h.
> As per W/A 1604331009, Disable cursor clock gating in HDR mode.
> =

> Bspec : 33451
> =

> Changes since V2:
>         - Made it general gen11 WA
>         - Removed WA needed check
>         - Added cursor plane active check
>         - Once WA enable, software will not disable
> Changes since V1:
>         - Modified way CLKGATE_DIS_PSL bit 28 was modified
> =

> Cc: Souza Jose <jose.souza@intel.com>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.c=
om>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 15 +++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h              |  5 +++++
>  2 files changed, 20 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 6be1b31af07b..99b33455b945 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -383,6 +383,18 @@ icl_wa_scalerclkgating(struct drm_i915_private *dev_=
priv, enum pipe pipe,
>  		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~DPFR_=
GATING_DIS);
>  }
>  =

> +/* Wa_1604331009:icl,jsl,ehl */
> +static void
> +icl_wa_cursorclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,

Pointless function arguments since they can be derived from the
crtc state.

> +		       const struct intel_crtc_state *crtc_state)
> +{
> +	if (crtc_state->active_planes & icl_hdr_plane_mask() &&

That doesn't mean HDR mode will be enabled. I would suggest extracting
the HDR mode stuff from bdw_set_pipemisc() into a small helper. Or
alternatively we could stick that into the crtc state even.

> +	    crtc_state->active_planes & BIT(PLANE_CURSOR) &&

> +	    IS_GEN(dev_priv, 11))
> +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
> +			     CURSOR_GATING_DIS, CURSOR_GATING_DIS);
> +}

Where does it get turned back on?

> +
>  static bool
>  is_trans_port_sync_slave(const struct intel_crtc_state *crtc_state)
>  {
> @@ -2939,6 +2951,9 @@ static void intel_pre_plane_update(struct intel_ato=
mic_state *state,
>  	    needs_scalerclk_wa(new_crtc_state))
>  		icl_wa_scalerclkgating(dev_priv, pipe, true);
>  =

> +	/* Wa_1604331009:icl,jsl,ehl */
> +	icl_wa_cursorclkgating(dev_priv, pipe, new_crtc_state);
> +
>  	/*
>  	 * Vblank time updates from the shadow to live plane control register
>  	 * are blocked if the memory self-refresh mode is active at that
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 955027799d1d..bbdd8429297d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4235,6 +4235,11 @@ enum {
>  #define INF_UNIT_LEVEL_CLKGATE		_MMIO(0x9560)
>  #define   CGPSF_CLKGATE_DIS		(1 << 3)
>  =

> +/*
> + * GEN11 clock gating regs
> + */
> +#define   CURSOR_GATING_DIS            BIT(28)
> +
>  /*
>   * Display engine regs
>   */
> -- =

> 2.31.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
