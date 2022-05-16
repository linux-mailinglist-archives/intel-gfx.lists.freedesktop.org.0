Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD1052848A
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 14:50:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17FBD10E936;
	Mon, 16 May 2022 12:50:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7718F10EF6A
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 12:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652705444; x=1684241444;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=tBRCM+WfqBICbRZFHLciB0OhOte1YzY994jEpWAc5ww=;
 b=F4wN/CgozOFaNaDaW6sL08vuCJYmgy2CA+qIZPaPqi/WO5poS8THsIAs
 Tii/ZU/dK7u97Fhz10KueVEsYcFhPKdaP/TZylO61H1hD0s9YYz8uhXXb
 AQz23gL6JJ7I65akJt7IBrP2Y+S+WA7gflQcIpOzNC7DHmMPDvgdRu6BD
 S6yljHYA2gaTwKisqOKJ1yo6NPw37jNNiZDCSquD5zAgfIgfDjicZcXYF
 G5TGeMY4/bRAcHkwcV5DdShorzjRoKD6QD26rSOaewJ7sv2qmpWWUD4YN
 ISbZ08o3xqj2s4Tns75PQkbSFuZdLIW+m0gJutzeGJOemqRMmBjCelJpT A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="270771584"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="270771584"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 05:50:41 -0700
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="596503142"
Received: from akuriata-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.145.127])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 05:50:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-12-ville.syrjala@linux.intel.com>
Date: Mon, 16 May 2022 15:50:36 +0300
Message-ID: <87k0alfxpf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 11/26] drm/i915: Introduce struct
 iclkip_params
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Pull the various iCLKIP parameters into a struct. Later on
> we'll reuse this during the state computation to determine
> the exact dotclock the hardware will be generating for us.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c      |  1 +
>  .../gpu/drm/i915/display/intel_pch_refclk.c   | 91 ++++++++++++-------
>  2 files changed, 57 insertions(+), 35 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index 6a3893c8ff22..d746c85e7e8c 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -46,6 +46,7 @@
>  #include "intel_gmbus.h"
>  #include "intel_hotplug.h"
>  #include "intel_pch_display.h"
> +#include "intel_pch_refclk.h"

Seems out of place.

Otherwise,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>=20=20
>  /* Here's the desired hotplug mode */
>  #define ADPA_HOTPLUG_BITS (ADPA_CRT_HOTPLUG_PERIOD_128 |		\
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gp=
u/drm/i915/display/intel_pch_refclk.c
> index b688fd87e3da..6610160cf825 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> @@ -122,16 +122,29 @@ void lpt_disable_iclkip(struct drm_i915_private *de=
v_priv)
>  	mutex_unlock(&dev_priv->sb_lock);
>  }
>=20=20
> -/* Program iCLKIP clock to the desired frequency */
> -void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
> +struct iclkip_params {
> +	u32 iclk_virtual_root_freq;
> +	u32 iclk_pi_range;
> +	u32 divsel, phaseinc, auxdiv, phasedir, desired_divisor;
> +};
> +
> +static void iclkip_params_init(struct iclkip_params *p)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	int clock =3D crtc_state->hw.adjusted_mode.crtc_clock;
> -	u32 divsel, phaseinc, auxdiv, phasedir =3D 0;
> -	u32 temp;
> +	memset(p, 0, sizeof(*p));
> +
> +	p->iclk_virtual_root_freq =3D 172800 * 1000;
> +	p->iclk_pi_range =3D 64;
> +}
>=20=20
> -	lpt_disable_iclkip(dev_priv);
> +static int lpt_iclkip_freq(struct iclkip_params *p)
> +{
> +	return DIV_ROUND_CLOSEST(p->iclk_virtual_root_freq,
> +				 p->desired_divisor << p->auxdiv);
> +}
> +
> +static void lpt_compute_iclkip(struct iclkip_params *p, int clock)
> +{
> +	iclkip_params_init(p);
>=20=20
>  	/* The iCLK virtual clock root frequency is in MHz,
>  	 * but the adjusted_mode->crtc_clock in KHz. To get the
> @@ -139,50 +152,60 @@ void lpt_program_iclkip(const struct intel_crtc_sta=
te *crtc_state)
>  	 * convert the virtual clock precision to KHz here for higher
>  	 * precision.
>  	 */
> -	for (auxdiv =3D 0; auxdiv < 2; auxdiv++) {
> -		u32 iclk_virtual_root_freq =3D 172800 * 1000;
> -		u32 iclk_pi_range =3D 64;
> -		u32 desired_divisor;
> -
> -		desired_divisor =3D DIV_ROUND_CLOSEST(iclk_virtual_root_freq,
> -						    clock << auxdiv);
> -		divsel =3D (desired_divisor / iclk_pi_range) - 2;
> -		phaseinc =3D desired_divisor % iclk_pi_range;
> +	for (p->auxdiv =3D 0; p->auxdiv < 2; p->auxdiv++) {
> +		p->desired_divisor =3D DIV_ROUND_CLOSEST(p->iclk_virtual_root_freq,
> +						       clock << p->auxdiv);
> +		p->divsel =3D (p->desired_divisor / p->iclk_pi_range) - 2;
>=20=20
>  		/*
>  		 * Near 20MHz is a corner case which is
>  		 * out of range for the 7-bit divisor
>  		 */
> -		if (divsel <=3D 0x7f)
> +		if (p->divsel <=3D 0x7f)
>  			break;
>  	}
> +}
> +
> +/* Program iCLKIP clock to the desired frequency */
> +void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	int clock =3D crtc_state->hw.adjusted_mode.crtc_clock;
> +	struct iclkip_params p;
> +	u32 temp;
> +
> +	lpt_disable_iclkip(dev_priv);
> +
> +	lpt_compute_iclkip(&p, clock);
> +	drm_WARN_ON(&dev_priv->drm, lpt_iclkip_freq(&p) !=3D clock);
>=20=20
>  	/* This should not happen with any sane values */
> -	drm_WARN_ON(&dev_priv->drm, SBI_SSCDIVINTPHASE_DIVSEL(divsel) &
> +	drm_WARN_ON(&dev_priv->drm, SBI_SSCDIVINTPHASE_DIVSEL(p.divsel) &
>  		    ~SBI_SSCDIVINTPHASE_DIVSEL_MASK);
> -	drm_WARN_ON(&dev_priv->drm, SBI_SSCDIVINTPHASE_DIR(phasedir) &
> +	drm_WARN_ON(&dev_priv->drm, SBI_SSCDIVINTPHASE_DIR(p.phasedir) &
>  		    ~SBI_SSCDIVINTPHASE_INCVAL_MASK);
>=20=20
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "iCLKIP clock: found settings for %dKHz refresh rate: auxdiv=3D%x,=
 divsel=3D%x, phasedir=3D%x, phaseinc=3D%x\n",
> -		    clock, auxdiv, divsel, phasedir, phaseinc);
> +		    clock, p.auxdiv, p.divsel, p.phasedir, p.phaseinc);
>=20=20
>  	mutex_lock(&dev_priv->sb_lock);
>=20=20
>  	/* Program SSCDIVINTPHASE6 */
>  	temp =3D intel_sbi_read(dev_priv, SBI_SSCDIVINTPHASE6, SBI_ICLK);
>  	temp &=3D ~SBI_SSCDIVINTPHASE_DIVSEL_MASK;
> -	temp |=3D SBI_SSCDIVINTPHASE_DIVSEL(divsel);
> +	temp |=3D SBI_SSCDIVINTPHASE_DIVSEL(p.divsel);
>  	temp &=3D ~SBI_SSCDIVINTPHASE_INCVAL_MASK;
> -	temp |=3D SBI_SSCDIVINTPHASE_INCVAL(phaseinc);
> -	temp |=3D SBI_SSCDIVINTPHASE_DIR(phasedir);
> +	temp |=3D SBI_SSCDIVINTPHASE_INCVAL(p.phaseinc);
> +	temp |=3D SBI_SSCDIVINTPHASE_DIR(p.phasedir);
>  	temp |=3D SBI_SSCDIVINTPHASE_PROPAGATE;
>  	intel_sbi_write(dev_priv, SBI_SSCDIVINTPHASE6, temp, SBI_ICLK);
>=20=20
>  	/* Program SSCAUXDIV */
>  	temp =3D intel_sbi_read(dev_priv, SBI_SSCAUXDIV6, SBI_ICLK);
>  	temp &=3D ~SBI_SSCAUXDIV_FINALDIV2SEL(1);
> -	temp |=3D SBI_SSCAUXDIV_FINALDIV2SEL(auxdiv);
> +	temp |=3D SBI_SSCAUXDIV_FINALDIV2SEL(p.auxdiv);
>  	intel_sbi_write(dev_priv, SBI_SSCAUXDIV6, temp, SBI_ICLK);
>=20=20
>  	/* Enable modulator and associated divider */
> @@ -200,15 +223,14 @@ void lpt_program_iclkip(const struct intel_crtc_sta=
te *crtc_state)
>=20=20
>  int lpt_get_iclkip(struct drm_i915_private *dev_priv)
>  {
> -	u32 divsel, phaseinc, auxdiv;
> -	u32 iclk_virtual_root_freq =3D 172800 * 1000;
> -	u32 iclk_pi_range =3D 64;
> -	u32 desired_divisor;
> +	struct iclkip_params p;
>  	u32 temp;
>=20=20
>  	if ((intel_de_read(dev_priv, PIXCLK_GATE) & PIXCLK_GATE_UNGATE) =3D=3D =
0)
>  		return 0;
>=20=20
> +	iclkip_params_init(&p);
> +
>  	mutex_lock(&dev_priv->sb_lock);
>=20=20
>  	temp =3D intel_sbi_read(dev_priv, SBI_SSCCTL6, SBI_ICLK);
> @@ -218,21 +240,20 @@ int lpt_get_iclkip(struct drm_i915_private *dev_pri=
v)
>  	}
>=20=20
>  	temp =3D intel_sbi_read(dev_priv, SBI_SSCDIVINTPHASE6, SBI_ICLK);
> -	divsel =3D (temp & SBI_SSCDIVINTPHASE_DIVSEL_MASK) >>
> +	p.divsel =3D (temp & SBI_SSCDIVINTPHASE_DIVSEL_MASK) >>
>  		SBI_SSCDIVINTPHASE_DIVSEL_SHIFT;
> -	phaseinc =3D (temp & SBI_SSCDIVINTPHASE_INCVAL_MASK) >>
> +	p.phaseinc =3D (temp & SBI_SSCDIVINTPHASE_INCVAL_MASK) >>
>  		SBI_SSCDIVINTPHASE_INCVAL_SHIFT;
>=20=20
>  	temp =3D intel_sbi_read(dev_priv, SBI_SSCAUXDIV6, SBI_ICLK);
> -	auxdiv =3D (temp & SBI_SSCAUXDIV_FINALDIV2SEL_MASK) >>
> +	p.auxdiv =3D (temp & SBI_SSCAUXDIV_FINALDIV2SEL_MASK) >>
>  		SBI_SSCAUXDIV_FINALDIV2SEL_SHIFT;
>=20=20
>  	mutex_unlock(&dev_priv->sb_lock);
>=20=20
> -	desired_divisor =3D (divsel + 2) * iclk_pi_range + phaseinc;
> +	p.desired_divisor =3D (p.divsel + 2) * p.iclk_pi_range + p.phaseinc;
>=20=20
> -	return DIV_ROUND_CLOSEST(iclk_virtual_root_freq,
> -				 desired_divisor << auxdiv);
> +	return lpt_iclkip_freq(&p);
>  }
>=20=20
>  /* Implements 3 different sequences from BSpec chapter "Display iCLK

--=20
Jani Nikula, Intel Open Source Graphics Center
