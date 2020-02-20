Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9B516640A
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 18:12:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 826096E8FA;
	Thu, 20 Feb 2020 17:12:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 515B86E8FA
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 17:12:14 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 09:12:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,465,1574150400"; d="scan'208";a="349203385"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 20 Feb 2020 09:12:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Feb 2020 19:12:09 +0200
Date: Thu, 20 Feb 2020 19:12:09 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200220171209.GE13686@intel.com>
References: <20200211172532.14287-1-anshuman.gupta@intel.com>
 <20200211172532.14287-3-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211172532.14287-3-anshuman.gupta@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 2/7] drm/i915: Remove (pipe ==
 crtc->index) assumption
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 11, 2020 at 10:55:27PM +0530, Anshuman Gupta wrote:
> we can't have (pipe =3D=3D crtc->index) assumption in
> driver in order to support 3 non-contiguous
> display pipe system.
> =

> FIXME: Remove the WARN_ON(drm_crtc_index(&crtc->base) !=3D crtc->pipe)
> when we will fix all such assumption.
> =

> changes since RFC:
> - Added again removed (pipe =3D=3D crtc->index) WARN_ON.
> - Pass drm_crtc_index instead of intel pipe in order to
>   call drm_handle_vblank().
> =

> v2:
> - used drm_crtc_handle_vblank()/drm_crtc_wait_one_vblank()
>   instead of drm_handle_vblank/drm_wait_one_vblank(). [Jani]
> - introduced intel_handle_vblank() helper to avoid sprinkle
>   of intel_crtc across irq_handlers. [Ville]
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c       |  8 ++++----
>  drivers/gpu/drm/i915/display/intel_display_types.h | 14 +++++++++++++-
>  drivers/gpu/drm/i915/i915_irq.c                    | 14 +++++++-------
>  3 files changed, 24 insertions(+), 12 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 80eebdc4c670..5333f7a7db42 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14395,11 +14395,11 @@ verify_single_dpll_state(struct drm_i915_privat=
e *dev_priv,
>  	if (new_crtc_state->hw.active)
>  		I915_STATE_WARN(!(pll->active_mask & crtc_mask),
>  				"pll active mismatch (expected pipe %c in active mask 0x%02x)\n",
> -				pipe_name(drm_crtc_index(&crtc->base)), pll->active_mask);
> +				pipe_name(crtc->pipe), pll->active_mask);
>  	else
>  		I915_STATE_WARN(pll->active_mask & crtc_mask,
>  				"pll active mismatch (didn't expect pipe %c in active mask 0x%02x)\n=
",
> -				pipe_name(drm_crtc_index(&crtc->base)), pll->active_mask);
> +				pipe_name(crtc->pipe), pll->active_mask);
>  =

>  	I915_STATE_WARN(!(pll->state.crtc_mask & crtc_mask),
>  			"pll enabled crtcs mismatch (expected 0x%x in 0x%02x)\n",
> @@ -14428,10 +14428,10 @@ verify_shared_dpll_state(struct intel_crtc *crt=
c,
>  =

>  		I915_STATE_WARN(pll->active_mask & crtc_mask,
>  				"pll active mismatch (didn't expect pipe %c in active mask)\n",
> -				pipe_name(drm_crtc_index(&crtc->base)));
> +				pipe_name(crtc->pipe));
>  		I915_STATE_WARN(pll->state.crtc_mask & crtc_mask,
>  				"pll enabled crtcs mismatch (found %x in enabled mask)\n",
> -				pipe_name(drm_crtc_index(&crtc->base)));
> +				pipe_name(crtc->pipe));
>  	}
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 283c622f8ba1..14e3d78fef7c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1595,11 +1595,23 @@ intel_crtc_has_dp_encoder(const struct intel_crtc=
_state *crtc_state)
>  		 (1 << INTEL_OUTPUT_DP_MST) |
>  		 (1 << INTEL_OUTPUT_EDP));
>  }
> +
>  static inline void
>  intel_wait_for_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
>  {
> -	drm_wait_one_vblank(&dev_priv->drm, pipe);
> +	struct intel_crtc *crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> +
> +	drm_crtc_wait_one_vblank(&crtc->base);
> +}
> +
> +static inline void
> +intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
> +{
> +	struct intel_crtc *crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> +
> +	drm_crtc_handle_vblank(&crtc->base);
>  }

There's no reason to put that into a header. Just put it into
i915_irq.c. With that

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +
>  static inline void
>  intel_wait_for_vblank_if_active(struct drm_i915_private *dev_priv, enum =
pipe pipe)
>  {
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index a26f2bf1b6ea..bfd3b34f2be3 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -1364,7 +1364,7 @@ static void i8xx_pipestat_irq_handler(struct drm_i9=
15_private *dev_priv,
>  =

>  	for_each_pipe(dev_priv, pipe) {
>  		if (pipe_stats[pipe] & PIPE_VBLANK_INTERRUPT_STATUS)
> -			drm_handle_vblank(&dev_priv->drm, pipe);
> +			intel_handle_vblank(dev_priv, pipe);
>  =

>  		if (pipe_stats[pipe] & PIPE_CRC_DONE_INTERRUPT_STATUS)
>  			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
> @@ -1382,7 +1382,7 @@ static void i915_pipestat_irq_handler(struct drm_i9=
15_private *dev_priv,
>  =

>  	for_each_pipe(dev_priv, pipe) {
>  		if (pipe_stats[pipe] & PIPE_VBLANK_INTERRUPT_STATUS)
> -			drm_handle_vblank(&dev_priv->drm, pipe);
> +			intel_handle_vblank(dev_priv, pipe);
>  =

>  		if (pipe_stats[pipe] & PIPE_LEGACY_BLC_EVENT_STATUS)
>  			blc_event =3D true;
> @@ -1406,7 +1406,7 @@ static void i965_pipestat_irq_handler(struct drm_i9=
15_private *dev_priv,
>  =

>  	for_each_pipe(dev_priv, pipe) {
>  		if (pipe_stats[pipe] & PIPE_START_VBLANK_INTERRUPT_STATUS)
> -			drm_handle_vblank(&dev_priv->drm, pipe);
> +			intel_handle_vblank(dev_priv, pipe);
>  =

>  		if (pipe_stats[pipe] & PIPE_LEGACY_BLC_EVENT_STATUS)
>  			blc_event =3D true;
> @@ -1432,7 +1432,7 @@ static void valleyview_pipestat_irq_handler(struct =
drm_i915_private *dev_priv,
>  =

>  	for_each_pipe(dev_priv, pipe) {
>  		if (pipe_stats[pipe] & PIPE_START_VBLANK_INTERRUPT_STATUS)
> -			drm_handle_vblank(&dev_priv->drm, pipe);
> +			intel_handle_vblank(dev_priv, pipe);
>  =

>  		if (pipe_stats[pipe] & PIPE_CRC_DONE_INTERRUPT_STATUS)
>  			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
> @@ -1970,7 +1970,7 @@ static void ilk_display_irq_handler(struct drm_i915=
_private *dev_priv,
>  =

>  	for_each_pipe(dev_priv, pipe) {
>  		if (de_iir & DE_PIPE_VBLANK(pipe))
> -			drm_handle_vblank(&dev_priv->drm, pipe);
> +			intel_handle_vblank(dev_priv, pipe);
>  =

>  		if (de_iir & DE_PIPE_FIFO_UNDERRUN(pipe))
>  			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
> @@ -2023,7 +2023,7 @@ static void ivb_display_irq_handler(struct drm_i915=
_private *dev_priv,
>  =

>  	for_each_pipe(dev_priv, pipe) {
>  		if (de_iir & (DE_PIPE_VBLANK_IVB(pipe)))
> -			drm_handle_vblank(&dev_priv->drm, pipe);
> +			intel_handle_vblank(dev_priv, pipe);
>  	}
>  =

>  	/* check event from PCH */
> @@ -2336,7 +2336,7 @@ gen8_de_irq_handler(struct drm_i915_private *dev_pr=
iv, u32 master_ctl)
>  		I915_WRITE(GEN8_DE_PIPE_IIR(pipe), iir);
>  =

>  		if (iir & GEN8_PIPE_VBLANK)
> -			drm_handle_vblank(&dev_priv->drm, pipe);
> +			intel_handle_vblank(dev_priv, pipe);
>  =

>  		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
>  			hsw_pipe_crc_irq_handler(dev_priv, pipe);
> -- =

> 2.24.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
