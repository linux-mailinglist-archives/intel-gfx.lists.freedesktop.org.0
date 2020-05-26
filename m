Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B731C75A9
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 18:04:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 805326E049;
	Wed,  6 May 2020 16:04:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C8376E049
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 16:04:22 +0000 (UTC)
IronPort-SDR: UAjyjh37or3Pyc1JuOcNa+FymEZtAfv2mWLVU22IngXqk/fQA5NiF47seixxSozK0UVZWZjwjq
 gANSeB9MKs6g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 09:04:19 -0700
IronPort-SDR: ecLCQ67cQiYwhbcXfM6hz1TAbuck+9k8f3Y8/V+y/jGYQ6ojYIrxbjjYJrijGcnuuBg08kCcns
 qBbfXZHkQ+8A==
X-IronPort-AV: E=Sophos;i="5.73,359,1583222400"; d="scan'208";a="434938066"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 09:04:18 -0700
Date: Wed, 6 May 2020 19:03:41 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200506160341.GB8813@ideak-desk.fi.intel.com>
References: <20200311155422.3043-1-ville.syrjala@linux.intel.com>
 <20200311155422.3043-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311155422.3043-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm/i915: Stash hpd status bits
 under dev_priv
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 11, 2020 at 05:54:21PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Instead of constnantly having to figure out which hpd status bit
> array to use let's store them under dev_priv.
> =

> Should perhaps take this further and stash even more stuff to
> make the hpd handling more abstract yet.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h |   2 +
>  drivers/gpu/drm/i915/i915_irq.c | 198 ++++++++++++++++++--------------
>  2 files changed, 111 insertions(+), 89 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 19195bde4921..b5afbabf4c3b 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -149,6 +149,8 @@ enum hpd_pin {
>  struct i915_hotplug {
>  	struct delayed_work hotplug_work;
>  =

> +	const u32 *hpd, *pch_hpd;
> +
>  	struct {
>  		unsigned long last_jiffies;
>  		int count;
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 9f0653cf0510..b95d952bd47d 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -124,7 +124,6 @@ static const u32 hpd_status_i915[HPD_NUM_PINS] =3D {
>  	[HPD_PORT_D] =3D PORTD_HOTPLUG_INT_STATUS,
>  };
>  =

> -/* BXT hpd list */
>  static const u32 hpd_bxt[HPD_NUM_PINS] =3D {
>  	[HPD_PORT_A] =3D BXT_DE_PORT_HP_DDIA,
>  	[HPD_PORT_B] =3D BXT_DE_PORT_HP_DDIB,
> @@ -168,6 +167,44 @@ static const u32 hpd_tgp[HPD_NUM_PINS] =3D {
>  	[HPD_PORT_I] =3D SDE_TC_HOTPLUG_ICP(PORT_TC6),
>  };
>  =

> +static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
> +{
> +	struct i915_hotplug *hpd =3D &dev_priv->hotplug;
> +
> +	if (HAS_GMCH(dev_priv)) {
> +		if (IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
> +		    IS_CHERRYVIEW(dev_priv))
> +			hpd->hpd =3D hpd_status_g4x;
> +		else
> +			hpd->hpd =3D hpd_status_i915;
> +		return;
> +	}
> +
> +	if (INTEL_GEN(dev_priv) >=3D 12)
> +		hpd->hpd =3D hpd_gen12;
> +	else if (INTEL_GEN(dev_priv) >=3D 11)
> +		hpd->hpd =3D hpd_gen11;
> +	else if (IS_GEN9_LP(dev_priv))
> +		hpd->hpd =3D hpd_bxt;
> +	else if (INTEL_GEN(dev_priv) >=3D 8)
> +		hpd->hpd =3D hpd_bdw;
> +	else if (INTEL_GEN(dev_priv) >=3D 7)
> +		hpd->hpd =3D hpd_ivb;
> +	else
> +		hpd->hpd =3D hpd_ilk;
> +
> +	if (HAS_PCH_TGP(dev_priv) || HAS_PCH_JSP(dev_priv))
> +		hpd->pch_hpd =3D hpd_tgp;
> +	else if (HAS_PCH_ICP(dev_priv) || HAS_PCH_MCC(dev_priv))
> +		hpd->pch_hpd =3D hpd_icp;
> +	else if (HAS_PCH_SPT(dev_priv))

What about CNP?

> +		hpd->pch_hpd =3D hpd_spt;
> +	else if (HAS_PCH_LPT(dev_priv) || HAS_PCH_CPT(dev_priv))
> +		hpd->pch_hpd =3D hpd_cpt;
> +	else if (HAS_PCH_IBX(dev_priv))
> +		hpd->pch_hpd =3D hpd_ibx;

Can we add MISSING_CASE for PCH platforms?

> +}
> +
>  static void
>  intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
>  {
> @@ -1504,33 +1541,27 @@ static void i9xx_hpd_irq_handler(struct drm_i915_=
private *dev_priv,
>  				 u32 hotplug_status)
>  {
>  	u32 pin_mask =3D 0, long_mask =3D 0;
> +	u32 hotplug_trigger;
>  =

> -	if (IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
> -	    IS_CHERRYVIEW(dev_priv)) {
> -		u32 hotplug_trigger =3D hotplug_status & HOTPLUG_INT_STATUS_G4X;
> +	if (IS_G4X(dev_priv) ||
> +	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> +		hotplug_trigger =3D hotplug_status & HOTPLUG_INT_STATUS_G4X;
> +	else
> +		hotplug_trigger =3D hotplug_status & HOTPLUG_INT_STATUS_I915;
>  =

> -		if (hotplug_trigger) {
> -			intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> -					   hotplug_trigger, hotplug_trigger,
> -					   hpd_status_g4x,
> -					   i9xx_port_hotplug_long_detect);
> +	if (hotplug_trigger) {
> +		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> +				   hotplug_trigger, hotplug_trigger,
> +				   dev_priv->hotplug.hpd,
> +				   i9xx_port_hotplug_long_detect);
>  =

> -			intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
> -		}
> -
> -		if (hotplug_status & DP_AUX_CHANNEL_MASK_INT_STATUS_G4X)
> -			dp_aux_irq_handler(dev_priv);
> -	} else {
> -		u32 hotplug_trigger =3D hotplug_status & HOTPLUG_INT_STATUS_I915;
> -
> -		if (hotplug_trigger) {
> -			intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> -					   hotplug_trigger, hotplug_trigger,
> -					   hpd_status_i915,
> -					   i9xx_port_hotplug_long_detect);
> -			intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
> -		}
> +		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
>  	}
> +
> +	if ((IS_G4X(dev_priv) ||
> +	     IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
> +	    hotplug_status & DP_AUX_CHANNEL_MASK_INT_STATUS_G4X)
> +		dp_aux_irq_handler(dev_priv);
>  }
>  =

>  static irqreturn_t valleyview_irq_handler(int irq, void *arg)
> @@ -1696,8 +1727,7 @@ static irqreturn_t cherryview_irq_handler(int irq, =
void *arg)
>  }
>  =

>  static void ibx_hpd_irq_handler(struct drm_i915_private *dev_priv,
> -				u32 hotplug_trigger,
> -				const u32 hpd[HPD_NUM_PINS])
> +				u32 hotplug_trigger)
>  {
>  	u32 dig_hotplug_reg, pin_mask =3D 0, long_mask =3D 0;
>  =

> @@ -1720,8 +1750,9 @@ static void ibx_hpd_irq_handler(struct drm_i915_pri=
vate *dev_priv,
>  	if (!hotplug_trigger)
>  		return;
>  =

> -	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask, hotplug_trigger,
> -			   dig_hotplug_reg, hpd,
> +	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> +			   hotplug_trigger, dig_hotplug_reg,
> +			   dev_priv->hotplug.pch_hpd,
>  			   pch_port_hotplug_long_detect);
>  =

>  	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
> @@ -1732,7 +1763,7 @@ static void ibx_irq_handler(struct drm_i915_private=
 *dev_priv, u32 pch_iir)
>  	enum pipe pipe;
>  	u32 hotplug_trigger =3D pch_iir & SDE_HOTPLUG_MASK;
>  =

> -	ibx_hpd_irq_handler(dev_priv, hotplug_trigger, hpd_ibx);
> +	ibx_hpd_irq_handler(dev_priv, hotplug_trigger);
>  =

>  	if (pch_iir & SDE_AUDIO_POWER_MASK) {
>  		int port =3D ffs((pch_iir & SDE_AUDIO_POWER_MASK) >>
> @@ -1820,7 +1851,7 @@ static void cpt_irq_handler(struct drm_i915_private=
 *dev_priv, u32 pch_iir)
>  	enum pipe pipe;
>  	u32 hotplug_trigger =3D pch_iir & SDE_HOTPLUG_MASK_CPT;
>  =

> -	ibx_hpd_irq_handler(dev_priv, hotplug_trigger, hpd_cpt);
> +	ibx_hpd_irq_handler(dev_priv, hotplug_trigger);
>  =

>  	if (pch_iir & SDE_AUDIO_POWER_MASK_CPT) {
>  		int port =3D ffs((pch_iir & SDE_AUDIO_POWER_MASK_CPT) >>
> @@ -1857,22 +1888,18 @@ static void icp_irq_handler(struct drm_i915_priva=
te *dev_priv, u32 pch_iir)
>  	u32 ddi_hotplug_trigger, tc_hotplug_trigger;
>  	u32 pin_mask =3D 0, long_mask =3D 0;
>  	bool (*tc_port_hotplug_long_detect)(enum hpd_pin pin, u32 val);
> -	const u32 *pins;
>  =

>  	if (HAS_PCH_TGP(dev_priv)) {
>  		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_TGP;
>  		tc_hotplug_trigger =3D pch_iir & SDE_TC_MASK_TGP;
>  		tc_port_hotplug_long_detect =3D tgp_tc_port_hotplug_long_detect;
> -		pins =3D hpd_tgp;
>  	} else if (HAS_PCH_JSP(dev_priv)) {
>  		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_TGP;
>  		tc_hotplug_trigger =3D 0;
> -		pins =3D hpd_tgp;
>  	} else if (HAS_PCH_MCC(dev_priv)) {
>  		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_ICP;
>  		tc_hotplug_trigger =3D pch_iir & SDE_TC_HOTPLUG_ICP(PORT_TC1);
>  		tc_port_hotplug_long_detect =3D icp_tc_port_hotplug_long_detect;
> -		pins =3D hpd_icp;
>  	} else {
>  		drm_WARN(&dev_priv->drm, !HAS_PCH_ICP(dev_priv),
>  			 "Unrecognized PCH type 0x%x\n",
> @@ -1881,7 +1908,6 @@ static void icp_irq_handler(struct drm_i915_private=
 *dev_priv, u32 pch_iir)
>  		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_ICP;
>  		tc_hotplug_trigger =3D pch_iir & SDE_TC_MASK_ICP;
>  		tc_port_hotplug_long_detect =3D icp_tc_port_hotplug_long_detect;
> -		pins =3D hpd_icp;
>  	}
>  =

>  	if (ddi_hotplug_trigger) {
> @@ -1891,8 +1917,8 @@ static void icp_irq_handler(struct drm_i915_private=
 *dev_priv, u32 pch_iir)
>  		I915_WRITE(SHOTPLUG_CTL_DDI, dig_hotplug_reg);
>  =

>  		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> -				   ddi_hotplug_trigger,
> -				   dig_hotplug_reg, pins,
> +				   ddi_hotplug_trigger, dig_hotplug_reg,
> +				   dev_priv->hotplug.pch_hpd,
>  				   icp_ddi_port_hotplug_long_detect);
>  	}
>  =

> @@ -1903,8 +1929,8 @@ static void icp_irq_handler(struct drm_i915_private=
 *dev_priv, u32 pch_iir)
>  		I915_WRITE(SHOTPLUG_CTL_TC, dig_hotplug_reg);
>  =

>  		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> -				   tc_hotplug_trigger,
> -				   dig_hotplug_reg, pins,
> +				   tc_hotplug_trigger, dig_hotplug_reg,
> +				   dev_priv->hotplug.pch_hpd,
>  				   tc_port_hotplug_long_detect);
>  	}
>  =

> @@ -1929,7 +1955,8 @@ static void spt_irq_handler(struct drm_i915_private=
 *dev_priv, u32 pch_iir)
>  		I915_WRITE(PCH_PORT_HOTPLUG, dig_hotplug_reg);
>  =

>  		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> -				   hotplug_trigger, dig_hotplug_reg, hpd_spt,
> +				   hotplug_trigger, dig_hotplug_reg,
> +				   dev_priv->hotplug.pch_hpd,
>  				   spt_port_hotplug_long_detect);
>  	}
>  =

> @@ -1940,7 +1967,8 @@ static void spt_irq_handler(struct drm_i915_private=
 *dev_priv, u32 pch_iir)
>  		I915_WRITE(PCH_PORT_HOTPLUG2, dig_hotplug_reg);
>  =

>  		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> -				   hotplug2_trigger, dig_hotplug_reg, hpd_spt,
> +				   hotplug2_trigger, dig_hotplug_reg,
> +				   dev_priv->hotplug.pch_hpd,
>  				   spt_port_hotplug2_long_detect);
>  	}
>  =

> @@ -1952,16 +1980,16 @@ static void spt_irq_handler(struct drm_i915_priva=
te *dev_priv, u32 pch_iir)
>  }
>  =

>  static void ilk_hpd_irq_handler(struct drm_i915_private *dev_priv,
> -				u32 hotplug_trigger,
> -				const u32 hpd[HPD_NUM_PINS])
> +				u32 hotplug_trigger)
>  {
>  	u32 dig_hotplug_reg, pin_mask =3D 0, long_mask =3D 0;
>  =

>  	dig_hotplug_reg =3D I915_READ(DIGITAL_PORT_HOTPLUG_CNTRL);
>  	I915_WRITE(DIGITAL_PORT_HOTPLUG_CNTRL, dig_hotplug_reg);
>  =

> -	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask, hotplug_trigger,
> -			   dig_hotplug_reg, hpd,
> +	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> +			   hotplug_trigger, dig_hotplug_reg,
> +			   dev_priv->hotplug.hpd,
>  			   ilk_port_hotplug_long_detect);
>  =

>  	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
> @@ -1974,7 +2002,7 @@ static void ilk_display_irq_handler(struct drm_i915=
_private *dev_priv,
>  	u32 hotplug_trigger =3D de_iir & DE_DP_A_HOTPLUG;
>  =

>  	if (hotplug_trigger)
> -		ilk_hpd_irq_handler(dev_priv, hotplug_trigger, hpd_ilk);
> +		ilk_hpd_irq_handler(dev_priv, hotplug_trigger);
>  =

>  	if (de_iir & DE_AUX_CHANNEL_A)
>  		dp_aux_irq_handler(dev_priv);
> @@ -2020,7 +2048,7 @@ static void ivb_display_irq_handler(struct drm_i915=
_private *dev_priv,
>  	u32 hotplug_trigger =3D de_iir & DE_DP_A_HOTPLUG_IVB;
>  =

>  	if (hotplug_trigger)
> -		ilk_hpd_irq_handler(dev_priv, hotplug_trigger, hpd_ivb);
> +		ilk_hpd_irq_handler(dev_priv, hotplug_trigger);
>  =

>  	if (de_iir & DE_ERR_INT_IVB)
>  		ivb_err_int_handler(dev_priv);
> @@ -2130,16 +2158,16 @@ static irqreturn_t ilk_irq_handler(int irq, void =
*arg)
>  }
>  =

>  static void bxt_hpd_irq_handler(struct drm_i915_private *dev_priv,
> -				u32 hotplug_trigger,
> -				const u32 hpd[HPD_NUM_PINS])
> +				u32 hotplug_trigger)
>  {
>  	u32 dig_hotplug_reg, pin_mask =3D 0, long_mask =3D 0;
>  =

>  	dig_hotplug_reg =3D I915_READ(PCH_PORT_HOTPLUG);
>  	I915_WRITE(PCH_PORT_HOTPLUG, dig_hotplug_reg);
>  =

> -	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask, hotplug_trigger,
> -			   dig_hotplug_reg, hpd,
> +	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> +			   hotplug_trigger, dig_hotplug_reg,
> +			   dev_priv->hotplug.hpd,
>  			   bxt_port_hotplug_long_detect);
>  =

>  	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
> @@ -2151,15 +2179,11 @@ static void gen11_hpd_irq_handler(struct drm_i915=
_private *dev_priv, u32 iir)
>  	u32 trigger_tc =3D iir & GEN11_DE_TC_HOTPLUG_MASK;
>  	u32 trigger_tbt =3D iir & GEN11_DE_TBT_HOTPLUG_MASK;
>  	long_pulse_detect_func long_pulse_detect;
> -	const u32 *hpd;
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 12) {
> +	if (INTEL_GEN(dev_priv) >=3D 12)
>  		long_pulse_detect =3D gen12_port_hotplug_long_detect;
> -		hpd =3D hpd_gen12;
> -	} else {
> +	else
>  		long_pulse_detect =3D gen11_port_hotplug_long_detect;
> -		hpd =3D hpd_gen11;
> -	}
>  =

>  	if (trigger_tc) {
>  		u32 dig_hotplug_reg;
> @@ -2167,8 +2191,10 @@ static void gen11_hpd_irq_handler(struct drm_i915_=
private *dev_priv, u32 iir)
>  		dig_hotplug_reg =3D I915_READ(GEN11_TC_HOTPLUG_CTL);
>  		I915_WRITE(GEN11_TC_HOTPLUG_CTL, dig_hotplug_reg);
>  =

> -		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask, trigger_tc,
> -				   dig_hotplug_reg, hpd, long_pulse_detect);
> +		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> +				   trigger_tc, dig_hotplug_reg,
> +				   dev_priv->hotplug.hpd,
> +				   long_pulse_detect);
>  	}
>  =

>  	if (trigger_tbt) {
> @@ -2177,8 +2203,10 @@ static void gen11_hpd_irq_handler(struct drm_i915_=
private *dev_priv, u32 iir)
>  		dig_hotplug_reg =3D I915_READ(GEN11_TBT_HOTPLUG_CTL);
>  		I915_WRITE(GEN11_TBT_HOTPLUG_CTL, dig_hotplug_reg);
>  =

> -		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask, trigger_tbt,
> -				   dig_hotplug_reg, hpd, long_pulse_detect);
> +		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> +				   trigger_tbt, dig_hotplug_reg,
> +				   dev_priv->hotplug.hpd,
> +				   long_pulse_detect);
>  	}
>  =

>  	if (pin_mask)
> @@ -2309,15 +2337,13 @@ gen8_de_irq_handler(struct drm_i915_private *dev_=
priv, u32 master_ctl)
>  			if (IS_GEN9_LP(dev_priv)) {
>  				tmp_mask =3D iir & BXT_DE_PORT_HOTPLUG_MASK;
>  				if (tmp_mask) {
> -					bxt_hpd_irq_handler(dev_priv, tmp_mask,
> -							    hpd_bxt);
> +					bxt_hpd_irq_handler(dev_priv, tmp_mask);
>  					found =3D true;
>  				}
>  			} else if (IS_BROADWELL(dev_priv)) {
>  				tmp_mask =3D iir & GEN8_PORT_DP_A_HOTPLUG;
>  				if (tmp_mask) {
> -					ilk_hpd_irq_handler(dev_priv,
> -							    tmp_mask, hpd_bdw);
> +					ilk_hpd_irq_handler(dev_priv, tmp_mask);
>  					found =3D true;
>  				}
>  			}
> @@ -2989,13 +3015,12 @@ static void ibx_hpd_irq_setup(struct drm_i915_pri=
vate *dev_priv)
>  {
>  	u32 hotplug_irqs, enabled_irqs;
>  =

> -	if (HAS_PCH_IBX(dev_priv)) {
> +	if (HAS_PCH_IBX(dev_priv))
>  		hotplug_irqs =3D SDE_HOTPLUG_MASK;
> -		enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, hpd_ibx);
> -	} else {
> +	else
>  		hotplug_irqs =3D SDE_HOTPLUG_MASK_CPT;
> -		enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, hpd_cpt);
> -	}
> +
> +	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.pch=
_hpd);
>  =

>  	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
>  =

> @@ -3021,13 +3046,12 @@ static void icp_hpd_detection_setup(struct drm_i9=
15_private *dev_priv,
>  =

>  static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv,
>  			      u32 sde_ddi_mask, u32 sde_tc_mask,
> -			      u32 ddi_enable_mask, u32 tc_enable_mask,
> -			      const u32 *pins)
> +			      u32 ddi_enable_mask, u32 tc_enable_mask)
>  {
>  	u32 hotplug_irqs, enabled_irqs;
>  =

>  	hotplug_irqs =3D sde_ddi_mask | sde_tc_mask;
> -	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, pins);
> +	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.pch=
_hpd);
>  =

>  	I915_WRITE(SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
>  =

> @@ -3044,8 +3068,7 @@ static void mcc_hpd_irq_setup(struct drm_i915_priva=
te *dev_priv)
>  {
>  	icp_hpd_irq_setup(dev_priv,
>  			  SDE_DDI_MASK_ICP, SDE_TC_HOTPLUG_ICP(PORT_TC1),
> -			  ICP_DDI_HPD_ENABLE_MASK, ICP_TC_HPD_ENABLE(PORT_TC1),
> -			  hpd_icp);
> +			  ICP_DDI_HPD_ENABLE_MASK, ICP_TC_HPD_ENABLE(PORT_TC1));
>  }
>  =

>  /*
> @@ -3057,8 +3080,7 @@ static void jsp_hpd_irq_setup(struct drm_i915_priva=
te *dev_priv)
>  {
>  	icp_hpd_irq_setup(dev_priv,
>  			  SDE_DDI_MASK_TGP, 0,
> -			  TGP_DDI_HPD_ENABLE_MASK, 0,
> -			  hpd_tgp);
> +			  TGP_DDI_HPD_ENABLE_MASK, 0);
>  }
>  =

>  static void gen11_hpd_detection_setup(struct drm_i915_private *dev_priv)
> @@ -3083,11 +3105,9 @@ static void gen11_hpd_detection_setup(struct drm_i=
915_private *dev_priv)
>  static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
>  {
>  	u32 hotplug_irqs, enabled_irqs;
> -	const u32 *hpd;
>  	u32 val;
>  =

> -	hpd =3D INTEL_GEN(dev_priv) >=3D 12 ? hpd_gen12 : hpd_gen11;
> -	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, hpd);
> +	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.hpd=
);
>  	hotplug_irqs =3D GEN11_DE_TC_HOTPLUG_MASK | GEN11_DE_TBT_HOTPLUG_MASK;
>  =

>  	val =3D I915_READ(GEN11_DE_HPD_IMR);
> @@ -3099,12 +3119,10 @@ static void gen11_hpd_irq_setup(struct drm_i915_p=
rivate *dev_priv)
>  =

>  	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_TGP)
>  		icp_hpd_irq_setup(dev_priv, SDE_DDI_MASK_TGP, SDE_TC_MASK_TGP,
> -				  TGP_DDI_HPD_ENABLE_MASK,
> -				  TGP_TC_HPD_ENABLE_MASK, hpd_tgp);
> +				  TGP_DDI_HPD_ENABLE_MASK, TGP_TC_HPD_ENABLE_MASK);
>  	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
>  		icp_hpd_irq_setup(dev_priv, SDE_DDI_MASK_ICP, SDE_TC_MASK_ICP,
> -				  ICP_DDI_HPD_ENABLE_MASK,
> -				  ICP_TC_HPD_ENABLE_MASK, hpd_icp);
> +				  ICP_DDI_HPD_ENABLE_MASK, ICP_TC_HPD_ENABLE_MASK);
>  }
>  =

>  static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
> @@ -3140,7 +3158,7 @@ static void spt_hpd_irq_setup(struct drm_i915_priva=
te *dev_priv)
>  		I915_WRITE(SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
>  =

>  	hotplug_irqs =3D SDE_HOTPLUG_MASK_SPT;
> -	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, hpd_spt);
> +	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.pch=
_hpd);
>  =

>  	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
>  =

> @@ -3169,17 +3187,17 @@ static void ilk_hpd_irq_setup(struct drm_i915_pri=
vate *dev_priv)
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 8) {
>  		hotplug_irqs =3D GEN8_PORT_DP_A_HOTPLUG;
> -		enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, hpd_bdw);
> +		enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.hp=
d);
>  =

>  		bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
>  	} else if (INTEL_GEN(dev_priv) >=3D 7) {
>  		hotplug_irqs =3D DE_DP_A_HOTPLUG_IVB;
> -		enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, hpd_ivb);
> +		enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.hp=
d);
>  =

>  		ilk_update_display_irq(dev_priv, hotplug_irqs, enabled_irqs);
>  	} else {
>  		hotplug_irqs =3D DE_DP_A_HOTPLUG;
> -		enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, hpd_ilk);
> +		enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.hp=
d);
>  =

>  		ilk_update_display_irq(dev_priv, hotplug_irqs, enabled_irqs);
>  	}
> @@ -3230,7 +3248,7 @@ static void bxt_hpd_irq_setup(struct drm_i915_priva=
te *dev_priv)
>  {
>  	u32 hotplug_irqs, enabled_irqs;
>  =

> -	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, hpd_bxt);
> +	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.hpd=
);
>  	hotplug_irqs =3D BXT_DE_PORT_HOTPLUG_MASK;
>  =

>  	bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
> @@ -3936,6 +3954,8 @@ void intel_irq_init(struct drm_i915_private *dev_pr=
iv)
>  	struct drm_device *dev =3D &dev_priv->drm;
>  	int i;
>  =

> +	intel_hpd_init_pins(dev_priv);
> +
>  	intel_hpd_init_work(dev_priv);
>  =

>  	INIT_WORK(&dev_priv->l3_parity.error_work, ivb_parity_work);
> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
