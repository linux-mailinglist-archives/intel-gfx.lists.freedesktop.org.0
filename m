Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0422FF7E6
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 23:28:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87CD86E96C;
	Thu, 21 Jan 2021 22:28:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67A276E96C
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 22:28:22 +0000 (UTC)
IronPort-SDR: QjjgvR3eYNbCl+EVWvtL4vd3X767XoDdAMGjZqqhDrizdC/fehvL8Cv8ua9BZANanAOsGROt1+
 vUpF5Gd3vX6Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="176783779"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="176783779"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 14:28:21 -0800
IronPort-SDR: 2/k+VN838R0WkKZ8fNLTm2r/XbJWa8D8bAHhz9hbQZY+quNwocl1PzrexiBbD5sLGq8Qi93+Si
 pv3BxtMJIslA==
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="385488572"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 14:28:20 -0800
Date: Thu, 21 Jan 2021 14:32:48 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210121223242.GA26294@labuser-Z97X-UD5H>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
 <20210113220935.4151-4-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210113220935.4151-4-manasi.d.navare@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v4 03/18] drm/i915: Store framestart_delay
 in dev_priv
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On Wed, Jan 13, 2021 at 02:09:20PM -0800, Manasi Navare wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The vrr calculations will need to know the framestart delay value
> we use. Currently we program it always to zero, but should that change
> we probably want to stash it somewhere.
> =

> Could stick it into the crtc_state I suppose, but since we never
> change it let's just stuff it into dev_priv for now.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 22 +++++++++++---------
>  drivers/gpu/drm/i915/i915_drv.h              |  2 ++
>  2 files changed, 14 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 0189d379a55e..67a55cfa5354 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1610,7 +1610,7 @@ static void ilk_enable_pch_transcoder(const struct =
intel_crtc_state *crtc_state)
>  		val |=3D TRANS_CHICKEN2_TIMING_OVERRIDE;
>  		/* Configure frame start delay to match the CPU */
>  		val &=3D ~TRANS_CHICKEN2_FRAME_START_DELAY_MASK;
> -		val |=3D TRANS_CHICKEN2_FRAME_START_DELAY(0);
> +		val |=3D TRANS_CHICKEN2_FRAME_START_DELAY(dev_priv->framestart_delay);
>  		intel_de_write(dev_priv, reg, val);
>  	}
>  =

> @@ -1621,7 +1621,7 @@ static void ilk_enable_pch_transcoder(const struct =
intel_crtc_state *crtc_state)
>  	if (HAS_PCH_IBX(dev_priv)) {
>  		/* Configure frame start delay to match the CPU */
>  		val &=3D ~TRANS_FRAME_START_DELAY_MASK;
> -		val |=3D TRANS_FRAME_START_DELAY(0);
> +		val |=3D TRANS_FRAME_START_DELAY(dev_priv->framestart_delay);
>  =

>  		/*
>  		 * Make the BPC in transcoder be consistent with
> @@ -1666,7 +1666,7 @@ static void lpt_enable_pch_transcoder(struct drm_i9=
15_private *dev_priv,
>  	val |=3D TRANS_CHICKEN2_TIMING_OVERRIDE;
>  	/* Configure frame start delay to match the CPU */
>  	val &=3D ~TRANS_CHICKEN2_FRAME_START_DELAY_MASK;
> -	val |=3D TRANS_CHICKEN2_FRAME_START_DELAY(0);
> +	val |=3D TRANS_CHICKEN2_FRAME_START_DELAY(dev_priv->framestart_delay);
>  	intel_de_write(dev_priv, TRANS_CHICKEN2(PIPE_A), val);
>  =

>  	val =3D TRANS_ENABLE;
> @@ -6679,7 +6679,7 @@ static void hsw_set_frame_start_delay(const struct =
intel_crtc_state *crtc_state)
>  =

>  	val =3D intel_de_read(dev_priv, reg);
>  	val &=3D ~HSW_FRAME_START_DELAY_MASK;
> -	val |=3D HSW_FRAME_START_DELAY(0);
> +	val |=3D HSW_FRAME_START_DELAY(dev_priv->framestart_delay);
>  	intel_de_write(dev_priv, reg, val);
>  }
>  =

> @@ -8741,7 +8741,7 @@ static void i9xx_set_pipeconf(const struct intel_cr=
tc_state *crtc_state)
>  =

>  	pipeconf |=3D PIPECONF_GAMMA_MODE(crtc_state->gamma_mode);
>  =

> -	pipeconf |=3D PIPECONF_FRAME_START_DELAY(0);
> +	pipeconf |=3D PIPECONF_FRAME_START_DELAY(dev_priv->framestart_delay);
>  =

>  	intel_de_write(dev_priv, PIPECONF(crtc->pipe), pipeconf);
>  	intel_de_posting_read(dev_priv, PIPECONF(crtc->pipe));
> @@ -9850,7 +9850,7 @@ static void ilk_set_pipeconf(const struct intel_crt=
c_state *crtc_state)
>  =

>  	val |=3D PIPECONF_GAMMA_MODE(crtc_state->gamma_mode);
>  =

> -	val |=3D PIPECONF_FRAME_START_DELAY(0);
> +	val |=3D PIPECONF_FRAME_START_DELAY(dev_priv->framestart_delay);
>  =

>  	intel_de_write(dev_priv, PIPECONF(pipe), val);
>  	intel_de_posting_read(dev_priv, PIPECONF(pipe));
> @@ -17153,6 +17153,8 @@ int intel_modeset_init_noirq(struct drm_i915_priv=
ate *i915)
>  	i915->flip_wq =3D alloc_workqueue("i915_flip", WQ_HIGHPRI |
>  					WQ_UNBOUND, WQ_UNBOUND_MAX_ACTIVE);
>  =

> +	i915->framestart_delay =3D 0; /* 0-3 */

Should we change this to default to 1 and then since its 0 based use frames=
tart_delay - 1 everywhere?

Manasi

> +
>  	intel_mode_config_init(i915);
>  =

>  	ret =3D intel_cdclk_init(i915);
> @@ -17487,7 +17489,7 @@ static void intel_sanitize_frame_start_delay(cons=
t struct intel_crtc_state *crtc
>  =

>  		val =3D intel_de_read(dev_priv, reg);
>  		val &=3D ~HSW_FRAME_START_DELAY_MASK;
> -		val |=3D HSW_FRAME_START_DELAY(0);
> +		val |=3D HSW_FRAME_START_DELAY(dev_priv->framestart_delay);
>  		intel_de_write(dev_priv, reg, val);
>  	} else {
>  		i915_reg_t reg =3D PIPECONF(cpu_transcoder);
> @@ -17495,7 +17497,7 @@ static void intel_sanitize_frame_start_delay(cons=
t struct intel_crtc_state *crtc
>  =

>  		val =3D intel_de_read(dev_priv, reg);
>  		val &=3D ~PIPECONF_FRAME_START_DELAY_MASK;
> -		val |=3D PIPECONF_FRAME_START_DELAY(0);
> +		val |=3D PIPECONF_FRAME_START_DELAY(dev_priv->framestart_delay);
>  		intel_de_write(dev_priv, reg, val);
>  	}
>  =

> @@ -17508,7 +17510,7 @@ static void intel_sanitize_frame_start_delay(cons=
t struct intel_crtc_state *crtc
>  =

>  		val =3D intel_de_read(dev_priv, reg);
>  		val &=3D ~TRANS_FRAME_START_DELAY_MASK;
> -		val |=3D TRANS_FRAME_START_DELAY(0);
> +		val |=3D TRANS_FRAME_START_DELAY(dev_priv->framestart_delay);
>  		intel_de_write(dev_priv, reg, val);
>  	} else {
>  		enum pipe pch_transcoder =3D intel_crtc_pch_transcoder(crtc);
> @@ -17517,7 +17519,7 @@ static void intel_sanitize_frame_start_delay(cons=
t struct intel_crtc_state *crtc
>  =

>  		val =3D intel_de_read(dev_priv, reg);
>  		val &=3D ~TRANS_CHICKEN2_FRAME_START_DELAY_MASK;
> -		val |=3D TRANS_CHICKEN2_FRAME_START_DELAY(0);
> +		val |=3D TRANS_CHICKEN2_FRAME_START_DELAY(dev_priv->framestart_delay);
>  		intel_de_write(dev_priv, reg, val);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 15e016194685..94a27e72b0a8 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1182,6 +1182,8 @@ struct drm_i915_private {
>  		struct file *mmap_singleton;
>  	} gem;
>  =

> +	u8 framestart_delay;
> +
>  	u8 pch_ssc_use;
>  =

>  	/* For i915gm/i945gm vblank irq workaround */
> -- =

> 2.19.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
