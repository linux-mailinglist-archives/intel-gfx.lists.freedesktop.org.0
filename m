Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0187D3824BF
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 08:49:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4710E6E1D2;
	Mon, 17 May 2021 06:49:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29D446E1D2
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 06:49:41 +0000 (UTC)
IronPort-SDR: cuThw+vjDLEprZGFjwJ0Fqnhjj2idKIlVRZ5/espBZxbWI1NK76usxjt2ZRXLsWCtHm2ze1GFv
 ONv3V1xwYt4A==
X-IronPort-AV: E=McAfee;i="6200,9189,9986"; a="264317122"
X-IronPort-AV: E=Sophos;i="5.82,306,1613462400"; d="scan'208";a="264317122"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2021 23:49:39 -0700
IronPort-SDR: AbJ8nQf00QbiT30RJ/2aoeoJVbnjIqfwsYWSPJdVWrUawVtv7907YiXeLsAbUDqMK5II2Xbvr4
 wAfCM5oI7erw==
X-IronPort-AV: E=Sophos;i="5.82,306,1613462400"; d="scan'208";a="410693478"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2021 23:49:38 -0700
Date: Mon, 17 May 2021 09:52:59 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210517065259.GB17429@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-2-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210515031035.2561658-2-matthew.d.roper@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v4 01/23] drm/i915/xelpd: Enhanced pipe
 underrun reporting
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 14, 2021 at 08:10:13PM -0700, Matt Roper wrote:
> XE_LPD brings enhanced underrun recovery:  the hardware can somewhat
> mitigate underruns by using an interpolated replacement pixel (soft
> underrun) or the previous pixel (hard underrun).  Furthermore, underruns
> can now be caused downstream by the port, even if the pipe itself is
> operating properly.  The interrupt register and PIPE_STATUS register
> give us extra bits to recognize hard/soft underruns and determine
> whether the underrun was caused by the port, so we'll use that
> information to print some more descriptive errors when underruns occur.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> =

> v2:
>  - Keep ICL's PIPE_STATUS defined separately from the old GMCH pipe
>    status register.  (Ville)
>  - Only read/clear the PIPE_STATUS register on platforms with
>    display ver >=3D 11. (Lucas)
> v3:
>  - Actually enable+unmask all the new underrun interrupts, clear stale
>    bits out from PIPE_STATUS before enabling the interrupts, report all
>    FIFO underruns errors at once, rename a bunch of stuff to unconfuse
>    vs. PIPESTAT. (Ville)
> =

> Bspec: 50335
> Bspec: 50366
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  .../drm/i915/display/intel_fifo_underrun.c    | 57 +++++++++++++++++--
>  drivers/gpu/drm/i915/i915_irq.c               | 19 ++++++-
>  drivers/gpu/drm/i915/i915_irq.h               |  1 +
>  drivers/gpu/drm/i915/i915_reg.h               |  9 +++
>  4 files changed, 77 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers=
/gpu/drm/i915/display/intel_fifo_underrun.c
> index 3315aa1d4d5a..eb841960840d 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -185,15 +185,34 @@ static void ivb_set_fifo_underrun_reporting(struct =
drm_device *dev,
>  	}
>  }
>  =

> +static u32
> +icl_pipe_status_underrun_mask(struct drm_i915_private *dev_priv)
> +{
> +	u32 mask =3D PIPE_STATUS_UNDERRUN;
> +
> +	if (DISPLAY_VER(dev_priv) >=3D 13)
> +		mask |=3D PIPE_STATUS_SOFT_UNDERRUN_XELPD |
> +			PIPE_STATUS_HARD_UNDERRUN_XELPD |
> +			PIPE_STATUS_PORT_UNDERRUN_XELPD;
> +
> +	return mask;
> +}
> +
>  static void bdw_set_fifo_underrun_reporting(struct drm_device *dev,
>  					    enum pipe pipe, bool enable)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	u32 mask =3D gen8_de_pipe_underrun_mask(dev_priv);
>  =

> -	if (enable)
> -		bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
> -	else
> -		bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
> +	if (enable) {
> +		if (DISPLAY_VER(dev_priv) >=3D 11)
> +			intel_de_write(dev_priv, ICL_PIPESTATUS(pipe),
> +				       icl_pipe_status_underrun_mask(dev_priv));
> +
> +		bdw_enable_pipe_irq(dev_priv, pipe, mask);
> +	} else {
> +		bdw_disable_pipe_irq(dev_priv, pipe, mask);
> +	}
>  }
>  =

>  static void ibx_set_fifo_underrun_reporting(struct drm_device *dev,
> @@ -373,6 +392,7 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i=
915_private *dev_priv,
>  					 enum pipe pipe)
>  {
>  	struct intel_crtc *crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> +	u32 underruns =3D 0;
>  =

>  	/* We may be called too early in init, thanks BIOS! */
>  	if (crtc =3D=3D NULL)
> @@ -383,10 +403,35 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm=
_i915_private *dev_priv,
>  	    crtc->cpu_fifo_underrun_disabled)
>  		return;
>  =

> +	/*
> +	 * Starting with display version 11, the PIPE_STAT register records
> +	 * whether an underrun has happened, and on XELPD+, it will also record
> +	 * whether the underrun was soft/hard and whether it was triggered by
> +	 * the downstream port logic.  We should clear these bits (which use
> +	 * write-1-to-clear logic) too.
> +	 *
> +	 * Note that although the IIR gives us the same underrun and soft/hard
> +	 * information, PIPE_STAT is the only place we can find out whether
> +	 * the underrun was caused by the downstream port.
> +	 */
> +	if (DISPLAY_VER(dev_priv) >=3D 11) {
> +		underruns =3D intel_de_read(dev_priv, ICL_PIPESTATUS(pipe)) &
> +			icl_pipe_status_underrun_mask(dev_priv);
> +		intel_de_write(dev_priv, ICL_PIPESTATUS(pipe), underruns);
> +	}
> +
>  	if (intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false)) {
>  		trace_intel_cpu_fifo_underrun(dev_priv, pipe);
> -		drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n",
> -			pipe_name(pipe));
> +
> +		if (DISPLAY_VER(dev_priv) >=3D 11)
> +			drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun: %s%s%s%s\n",
> +				pipe_name(pipe),
> +				underruns & PIPE_STATUS_SOFT_UNDERRUN_XELPD ? "soft," : "",
> +				underruns & PIPE_STATUS_HARD_UNDERRUN_XELPD ? "hard," : "",
> +				underruns & PIPE_STATUS_PORT_UNDERRUN_XELPD ? "port," : "",
> +				underruns & PIPE_STATUS_UNDERRUN ? "transcoder," : "");
> +		else
> +			drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe=
));
>  	}
>  =

>  	intel_fbc_handle_fifo_underrun_irq(dev_priv);
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index d4611c643446..957d401186d2 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2425,6 +2425,17 @@ static u32 gen8_de_pipe_flip_done_mask(struct drm_=
i915_private *i915)
>  		return GEN8_PIPE_PRIMARY_FLIP_DONE;
>  }
>  =

> +u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *dev_priv)
> +{
> +	u32 mask =3D GEN8_PIPE_FIFO_UNDERRUN;
> +
> +	if (DISPLAY_VER(dev_priv) >=3D 13)
> +		mask |=3D XELPD_PIPE_SOFT_UNDERRUN |
> +			XELPD_PIPE_HARD_UNDERRUN;
> +
> +	return mask;
> +}
> +
>  static irqreturn_t
>  gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  {
> @@ -2536,7 +2547,7 @@ gen8_de_irq_handler(struct drm_i915_private *dev_pr=
iv, u32 master_ctl)
>  		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
>  			hsw_pipe_crc_irq_handler(dev_priv, pipe);
>  =

> -		if (iir & GEN8_PIPE_FIFO_UNDERRUN)
> +		if (iir & gen8_de_pipe_underrun_mask(dev_priv))
>  			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
>  =

>  		fault_errors =3D iir & gen8_de_pipe_fault_mask(dev_priv);
> @@ -3173,7 +3184,8 @@ void gen8_irq_power_well_post_enable(struct drm_i91=
5_private *dev_priv,
>  				     u8 pipe_mask)
>  {
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
> -	u32 extra_ier =3D GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
> +	u32 extra_ier =3D GEN8_PIPE_VBLANK |
> +		gen8_de_pipe_underrun_mask(dev_priv) |
>  		gen8_de_pipe_flip_done_mask(dev_priv);
>  	enum pipe pipe;
>  =

> @@ -3757,7 +3769,8 @@ static void gen8_de_irq_postinstall(struct drm_i915=
_private *dev_priv)
>  	}
>  =

>  	de_pipe_enables =3D de_pipe_masked |
> -		GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
> +		GEN8_PIPE_VBLANK |
> +		gen8_de_pipe_underrun_mask(dev_priv) |
>  		gen8_de_pipe_flip_done_mask(dev_priv);
>  =

>  	de_port_enables =3D de_port_masked;
> diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_=
irq.h
> index 25f25cd95818..db34d5dbe402 100644
> --- a/drivers/gpu/drm/i915/i915_irq.h
> +++ b/drivers/gpu/drm/i915/i915_irq.h
> @@ -100,6 +100,7 @@ void gen8_irq_power_well_post_enable(struct drm_i915_=
private *dev_priv,
>  				     u8 pipe_mask);
>  void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
>  				     u8 pipe_mask);
> +u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *dev_priv);
>  =

>  bool intel_crtc_get_vblank_timestamp(struct drm_crtc *crtc, int *max_err=
or,
>  				     ktime_t *vblank_time, bool in_vblank_irq);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 089b5a59bed3..506a5aa0646b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6158,6 +6158,13 @@ enum {
>  #define   SKL_BOTTOM_COLOR_CSC_ENABLE	(1 << 30)
>  #define SKL_BOTTOM_COLOR(pipe)		_MMIO_PIPE2(pipe, _SKL_BOTTOM_COLOR_A)
>  =

> +#define _ICL_PIPE_A_STATUS			0x70058
> +#define ICL_PIPESTATUS(pipe)			_MMIO_PIPE2(pipe, _ICL_PIPE_A_STATUS)
> +#define   PIPE_STATUS_UNDERRUN				REG_BIT(31)
> +#define   PIPE_STATUS_SOFT_UNDERRUN_XELPD		REG_BIT(28)
> +#define   PIPE_STATUS_HARD_UNDERRUN_XELPD		REG_BIT(27)
> +#define   PIPE_STATUS_PORT_UNDERRUN_XELPD		REG_BIT(26)
> +
>  #define VLV_DPFLIPSTAT				_MMIO(VLV_DISPLAY_BASE + 0x70028)
>  #define   PIPEB_LINE_COMPARE_INT_EN		(1 << 29)
>  #define   PIPEB_HLINE_INT_EN			(1 << 28)
> @@ -7814,6 +7821,8 @@ enum {
>  #define  GEN8_PIPE_FIFO_UNDERRUN	(1 << 31)
>  #define  GEN8_PIPE_CDCLK_CRC_ERROR	(1 << 29)
>  #define  GEN8_PIPE_CDCLK_CRC_DONE	(1 << 28)
> +#define  XELPD_PIPE_SOFT_UNDERRUN	(1 << 22)
> +#define  XELPD_PIPE_HARD_UNDERRUN	(1 << 21)
>  #define  GEN8_PIPE_CURSOR_FAULT		(1 << 10)
>  #define  GEN8_PIPE_SPRITE_FAULT		(1 << 9)
>  #define  GEN8_PIPE_PRIMARY_FAULT	(1 << 8)
> -- =

> 2.25.4
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
