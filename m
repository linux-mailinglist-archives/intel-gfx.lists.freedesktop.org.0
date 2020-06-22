Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BA9203F38
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 20:35:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A48E76E8A7;
	Mon, 22 Jun 2020 18:35:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D25D76E8A7
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 18:35:20 +0000 (UTC)
IronPort-SDR: VT4hguviBnwAyb48ESS/1bsDXoA9e17YVGHH3ST3/TNWaIIE91Iy0UE2Ibp6I82WdE1dC17dVB
 6ZAL8Cv3hnWA==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="142094166"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="142094166"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 11:35:20 -0700
IronPort-SDR: ZZZTbL910/v/5un8Cfd7toR/OQxyvrNPoWE0esAKi5VM/xSHVLv4S3kQXgLBUDQR28wTrwo4Ju
 qENLNiFaMX1g==
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="451932790"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 11:35:19 -0700
Date: Mon, 22 Jun 2020 21:35:09 +0300
From: Imre Deak <imre.deak@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20200622183509.GB25163@ideak-desk.fi.intel.com>
References: <20200618004240.16263-1-lucas.demarchi@intel.com>
 <20200618004240.16263-21-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618004240.16263-21-lucas.demarchi@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 20/32] drm/i915/dg1: add hpd interrupt
 handling
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

On Wed, Jun 17, 2020 at 05:42:28PM -0700, Lucas De Marchi wrote:
> DG1 has one more combo phy port, no TC and all irq handling goes through
> SDE, like for MCC.
> =

> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 57 +++++++++++++++++++++++++++++----
>  drivers/gpu/drm/i915/i915_reg.h |  8 +++++
>  2 files changed, 59 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 48e1686df3416..3707f9231171f 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -167,6 +167,13 @@ static const u32 hpd_tgp[HPD_NUM_PINS] =3D {
>  	[HPD_PORT_I] =3D SDE_TC_HOTPLUG_ICP(PORT_TC6),
>  };
>  =

> +static const u32 hpd_dg1_sde[HPD_NUM_PINS] =3D {
> +	[HPD_PORT_A] =3D SDE_DDI_HOTPLUG_ICP(PHY_A),
> +	[HPD_PORT_B] =3D SDE_DDI_HOTPLUG_ICP(PHY_B),
> +	[HPD_PORT_D] =3D SDE_DDI_HOTPLUG_ICP(PHY_C),
> +	[HPD_PORT_E] =3D SDE_DDI_HOTPLUG_ICP(PHY_D),

The above 2 entries look incorrect. encoder->hpd_pin will be assigned
based on the encoder/port's PHY (see intel_hpd_pin_default()). On DG1
port D is connected to PHY C and port E is connected to PHY D. So the
above two pin definitions should be:

	[HPD_PORT_C] =3D SDE_DDI_HOTPLUG_ICP(PHY_C),
	[HPD_PORT_D] =3D SDE_DDI_HOTPLUG_ICP(PHY_D),

> +};
> +
>  static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
>  {
>  	struct i915_hotplug *hpd =3D &dev_priv->hotplug;
> @@ -193,10 +200,13 @@ static void intel_hpd_init_pins(struct drm_i915_pri=
vate *dev_priv)
>  	else
>  		hpd->hpd =3D hpd_ilk;
>  =

> -	if (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv))
> +	if ((INTEL_PCH_TYPE(dev_priv) < PCH_DG1) &&
> +	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
>  		return;
>  =

> -	if (HAS_PCH_TGP(dev_priv) || HAS_PCH_JSP(dev_priv))
> +	if (HAS_PCH_DG1(dev_priv))
> +		hpd->pch_hpd =3D hpd_dg1_sde;
> +	else if (HAS_PCH_TGP(dev_priv) || HAS_PCH_JSP(dev_priv))
>  		hpd->pch_hpd =3D hpd_tgp;
>  	else if (HAS_PCH_ICP(dev_priv) || HAS_PCH_MCC(dev_priv))
>  		hpd->pch_hpd =3D hpd_icp;
> @@ -1145,6 +1155,22 @@ static bool tgp_tc_port_hotplug_long_detect(enum h=
pd_pin pin, u32 val)
>  	}
>  }
>  =

> +static bool dg1_ddi_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
> +{
> +	switch (pin) {
> +	case HPD_PORT_A:
> +		return val & SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(PORT_A);
> +	case HPD_PORT_B:
> +		return val & SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(PORT_B);
> +	case HPD_PORT_D:
> +		return val & SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(PORT_C);
> +	case HPD_PORT_E:
> +		return val & SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(PORT_D);
> +	default:
> +		return false;
> +	}
> +}
> +
>  static bool spt_port_hotplug2_long_detect(enum hpd_pin pin, u32 val)
>  {
>  	switch (pin) {
> @@ -1893,13 +1919,20 @@ static void icp_irq_handler(struct drm_i915_priva=
te *dev_priv, u32 pch_iir)
>  	u32 ddi_hotplug_trigger, tc_hotplug_trigger;
>  	u32 pin_mask =3D 0, long_mask =3D 0;
>  	bool (*tc_port_hotplug_long_detect)(enum hpd_pin pin, u32 val);
> +	bool (*ddi_port_hotplug_long_detect)(enum hpd_pin pin, u32 val);
>  =

> -	if (HAS_PCH_TGP(dev_priv)) {
> +	if (HAS_PCH_DG1(dev_priv)) {
> +		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_DG1;
> +		ddi_port_hotplug_long_detect =3D dg1_ddi_port_hotplug_long_detect;
> +		tc_hotplug_trigger =3D 0;
> +	} else if (HAS_PCH_TGP(dev_priv)) {
>  		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_TGP;
> +		ddi_port_hotplug_long_detect =3D icp_ddi_port_hotplug_long_detect;
>  		tc_hotplug_trigger =3D pch_iir & SDE_TC_MASK_TGP;
>  		tc_port_hotplug_long_detect =3D tgp_tc_port_hotplug_long_detect;
>  	} else if (HAS_PCH_JSP(dev_priv)) {
>  		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_TGP;
> +		ddi_port_hotplug_long_detect =3D icp_ddi_port_hotplug_long_detect;
>  		tc_hotplug_trigger =3D 0;
>  	} else if (HAS_PCH_MCC(dev_priv)) {
>  		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_ICP;
> @@ -1911,6 +1944,7 @@ static void icp_irq_handler(struct drm_i915_private=
 *dev_priv, u32 pch_iir)
>  			 INTEL_PCH_TYPE(dev_priv));
>  =

>  		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_ICP;
> +		ddi_port_hotplug_long_detect =3D icp_ddi_port_hotplug_long_detect;
>  		tc_hotplug_trigger =3D pch_iir & SDE_TC_MASK_ICP;
>  		tc_port_hotplug_long_detect =3D icp_tc_port_hotplug_long_detect;
>  	}
> @@ -1924,7 +1958,7 @@ static void icp_irq_handler(struct drm_i915_private=
 *dev_priv, u32 pch_iir)
>  		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>  				   ddi_hotplug_trigger, dig_hotplug_reg,
>  				   dev_priv->hotplug.pch_hpd,
> -				   icp_ddi_port_hotplug_long_detect);
> +				   ddi_port_hotplug_long_detect);
>  	}
>  =

>  	if (tc_hotplug_trigger) {
> @@ -3147,6 +3181,13 @@ static void jsp_hpd_irq_setup(struct drm_i915_priv=
ate *dev_priv)
>  			  TGP_DDI_HPD_ENABLE_MASK, 0);
>  }
>  =

> +static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
> +{
> +	icp_hpd_irq_setup(dev_priv,
> +			  SDE_DDI_MASK_DG1, 0,
> +			  DG1_DDI_HPD_ENABLE_MASK, 0);
> +}
> +
>  static void gen11_hpd_detection_setup(struct drm_i915_private *dev_priv)
>  {
>  	u32 hotplug;
> @@ -3535,7 +3576,9 @@ static void icp_irq_postinstall(struct drm_i915_pri=
vate *dev_priv)
>  	gen3_assert_iir_is_zero(&dev_priv->uncore, SDEIIR);
>  	I915_WRITE(SDEIMR, ~mask);
>  =

> -	if (HAS_PCH_TGP(dev_priv))
> +	if (HAS_PCH_DG1(dev_priv))
> +		icp_hpd_detection_setup(dev_priv, DG1_DDI_HPD_ENABLE_MASK, 0);
> +	else if (HAS_PCH_TGP(dev_priv))
>  		icp_hpd_detection_setup(dev_priv, TGP_DDI_HPD_ENABLE_MASK,
>  					TGP_TC_HPD_ENABLE_MASK);
>  	else if (HAS_PCH_JSP(dev_priv))
> @@ -4051,7 +4094,9 @@ void intel_irq_init(struct drm_i915_private *dev_pr=
iv)
>  		if (I915_HAS_HOTPLUG(dev_priv))
>  			dev_priv->display.hpd_irq_setup =3D i915_hpd_irq_setup;
>  	} else {
> -		if (HAS_PCH_JSP(dev_priv))
> +		if (HAS_PCH_DG1(dev_priv))
> +			dev_priv->display.hpd_irq_setup =3D dg1_hpd_irq_setup;
> +		else if (HAS_PCH_JSP(dev_priv))
>  			dev_priv->display.hpd_irq_setup =3D jsp_hpd_irq_setup;
>  		else if (HAS_PCH_MCC(dev_priv))
>  			dev_priv->display.hpd_irq_setup =3D mcc_hpd_irq_setup;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 6649aeca25d72..13a989f5e8dd3 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8168,6 +8168,10 @@ enum {
>  					 SDE_TC_HOTPLUG_ICP(PORT_TC3) | \
>  					 SDE_TC_HOTPLUG_ICP(PORT_TC2) | \
>  					 SDE_TC_HOTPLUG_ICP(PORT_TC1))
> +#define SDE_DDI_MASK_DG1		(SDE_DDI_HOTPLUG_ICP(PORT_D) | \
> +					 SDE_DDI_HOTPLUG_ICP(PORT_C) | \
> +					 SDE_DDI_HOTPLUG_ICP(PORT_B) | \
> +					 SDE_DDI_HOTPLUG_ICP(PORT_A))
>  =

>  #define SDEISR  _MMIO(0xc4000)
>  #define SDEIMR  _MMIO(0xc4004)
> @@ -8367,6 +8371,10 @@ enum {
>  #define TGP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(PORT_TC6) | \
>  					 ICP_TC_HPD_ENABLE(PORT_TC5) | \
>  					 ICP_TC_HPD_ENABLE_MASK)
> +#define DG1_DDI_HPD_ENABLE_MASK		(SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_D) | \
> +					 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_C) | \
> +					 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_B) | \
> +					 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_A))
>  =

>  #define _PCH_DPLL_A              0xc6014
>  #define _PCH_DPLL_B              0xc6018
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
