Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAC3296760
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 00:36:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBE2D6E420;
	Thu, 22 Oct 2020 22:36:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D09B6E420
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 22:36:45 +0000 (UTC)
IronPort-SDR: U64+X/GNWaNJ2tmBctgsjnOGf4e4OHjS+4pl13BSFyuGHalA7MP4Xg28Y3f0AIxkKnomkVwbS8
 VnLFF6BEvQkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="229237642"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="229237642"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 15:36:44 -0700
IronPort-SDR: mp4bBQMmkenfhowlRdkWUaCQdQcIFKl8bNwqiSm9JZJkPDu5nttkuCWNZrDcuzBP0RSwkZ8WIe
 Zen4MEvDQO3A==
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="302569712"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 15:36:44 -0700
Date: Thu, 22 Oct 2020 15:36:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20201022223643.GP627052@mdroper-desk1.amr.corp.intel.com>
References: <20201021082034.3170478-1-lucas.demarchi@intel.com>
 <20201021082034.3170478-2-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201021082034.3170478-2-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/dg1: add hpd interrupt handling
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

On Wed, Oct 21, 2020 at 01:20:29AM -0700, Lucas De Marchi wrote:
> DG1 has one more combo phy port, no TC and all irq handling goes through
> SDE, like for MCC.
> =

> v2: Also change intel_hpd_pin_default() to include DG1 mapping
> v3, v4: Rebase on hpd refactor
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Looks good to me.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

I sort of wish we'd named hpd->pch_hpd as hpd->sde_hpd (and hpd->hpd as
hpd->nde_hpd) back when we did that refactor, but it doesn't really
matter too much.


Matt

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 13 ++++++++-
>  drivers/gpu/drm/i915/i915_irq.c          | 37 ++++++++++++++++++++----
>  drivers/gpu/drm/i915/i915_reg.h          |  8 +++++
>  3 files changed, 51 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index bb0b9930958f..3a99f209f1e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5066,6 +5066,15 @@ static bool hti_uses_phy(struct drm_i915_private *=
i915, enum phy phy)
>  		 i915->hti_state & HDPORT_PHY_USED_HDMI(phy));
>  }
>  =

> +static enum hpd_pin dg1_hpd_pin(struct drm_i915_private *dev_priv,
> +				enum port port)
> +{
> +	if (port >=3D PORT_D)
> +		return HPD_PORT_C + port - PORT_D;
> +	else
> +		return HPD_PORT_A + port - PORT_A;
> +}
> +
>  static enum hpd_pin tgl_hpd_pin(struct drm_i915_private *dev_priv,
>  				enum port port)
>  {
> @@ -5195,7 +5204,9 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv, enum port port)
>  	encoder->cloneable =3D 0;
>  	encoder->pipe_mask =3D ~0;
>  =

> -	if (IS_ROCKETLAKE(dev_priv))
> +	if (IS_DG1(dev_priv))
> +		encoder->hpd_pin =3D dg1_hpd_pin(dev_priv, port);
> +	else if (IS_ROCKETLAKE(dev_priv))
>  		encoder->hpd_pin =3D rkl_hpd_pin(dev_priv, port);
>  	else if (INTEL_GEN(dev_priv) >=3D 12)
>  		encoder->hpd_pin =3D tgl_hpd_pin(dev_priv, port);
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index b753c77c9a77..b6169fbadb1d 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -152,6 +152,13 @@ static const u32 hpd_icp[HPD_NUM_PINS] =3D {
>  	[HPD_PORT_TC6] =3D SDE_TC_HOTPLUG_ICP(PORT_TC6),
>  };
>  =

> +static const u32 hpd_sde_dg1[HPD_NUM_PINS] =3D {
> +	[HPD_PORT_A] =3D SDE_DDI_HOTPLUG_ICP(PORT_A),
> +	[HPD_PORT_B] =3D SDE_DDI_HOTPLUG_ICP(PORT_B),
> +	[HPD_PORT_C] =3D SDE_DDI_HOTPLUG_ICP(PORT_C),
> +	[HPD_PORT_D] =3D SDE_DDI_HOTPLUG_ICP(PORT_D),
> +};
> +
>  static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
>  {
>  	struct i915_hotplug *hpd =3D &dev_priv->hotplug;
> @@ -176,11 +183,14 @@ static void intel_hpd_init_pins(struct drm_i915_pri=
vate *dev_priv)
>  	else
>  		hpd->hpd =3D hpd_ilk;
>  =

> -	if (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv))
> +	if ((INTEL_PCH_TYPE(dev_priv) < PCH_DG1) &&
> +	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
>  		return;
>  =

> -	if (HAS_PCH_TGP(dev_priv) || HAS_PCH_JSP(dev_priv) ||
> -	    HAS_PCH_ICP(dev_priv) || HAS_PCH_MCC(dev_priv))
> +	if (HAS_PCH_DG1(dev_priv))
> +		hpd->pch_hpd =3D hpd_sde_dg1;
> +	else if (HAS_PCH_TGP(dev_priv) || HAS_PCH_JSP(dev_priv) ||
> +		 HAS_PCH_ICP(dev_priv) || HAS_PCH_MCC(dev_priv))
>  		hpd->pch_hpd =3D hpd_icp;
>  	else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
>  		hpd->pch_hpd =3D hpd_spt;
> @@ -1074,6 +1084,8 @@ static bool icp_ddi_port_hotplug_long_detect(enum h=
pd_pin pin, u32 val)
>  		return val & SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(PORT_B);
>  	case HPD_PORT_C:
>  		return val & SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(PORT_C);
> +	case HPD_PORT_D:
> +		return val & SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(PORT_D);
>  	default:
>  		return false;
>  	}
> @@ -1864,7 +1876,10 @@ static void icp_irq_handler(struct drm_i915_privat=
e *dev_priv, u32 pch_iir)
>  	u32 ddi_hotplug_trigger, tc_hotplug_trigger;
>  	u32 pin_mask =3D 0, long_mask =3D 0;
>  =

> -	if (HAS_PCH_TGP(dev_priv)) {
> +	if (HAS_PCH_DG1(dev_priv)) {
> +		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_DG1;
> +		tc_hotplug_trigger =3D 0;
> +	} else if (HAS_PCH_TGP(dev_priv)) {
>  		ddi_hotplug_trigger =3D pch_iir & SDE_DDI_MASK_TGP;
>  		tc_hotplug_trigger =3D pch_iir & SDE_TC_MASK_TGP;
>  	} else if (HAS_PCH_JSP(dev_priv)) {
> @@ -3252,6 +3267,12 @@ static void jsp_hpd_irq_setup(struct drm_i915_priv=
ate *dev_priv)
>  			  TGP_DDI_HPD_ENABLE_MASK, 0);
>  }
>  =

> +static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
> +{
> +	icp_hpd_irq_setup(dev_priv,
> +			  DG1_DDI_HPD_ENABLE_MASK, 0);
> +}
> +
>  static void gen11_hpd_detection_setup(struct drm_i915_private *dev_priv)
>  {
>  	u32 hotplug;
> @@ -3645,7 +3666,9 @@ static void icp_irq_postinstall(struct drm_i915_pri=
vate *dev_priv)
>  	gen3_assert_iir_is_zero(&dev_priv->uncore, SDEIIR);
>  	I915_WRITE(SDEIMR, ~mask);
>  =

> -	if (HAS_PCH_TGP(dev_priv)) {
> +	if (HAS_PCH_DG1(dev_priv))
> +		icp_ddi_hpd_detection_setup(dev_priv, DG1_DDI_HPD_ENABLE_MASK);
> +	else if (HAS_PCH_TGP(dev_priv)) {
>  		icp_ddi_hpd_detection_setup(dev_priv, TGP_DDI_HPD_ENABLE_MASK);
>  		icp_tc_hpd_detection_setup(dev_priv, TGP_TC_HPD_ENABLE_MASK);
>  	} else if (HAS_PCH_JSP(dev_priv)) {
> @@ -4162,7 +4185,9 @@ void intel_irq_init(struct drm_i915_private *dev_pr=
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
> index 6d97e6286c2d..236199891611 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8235,6 +8235,10 @@ enum {
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
> @@ -8434,6 +8438,10 @@ enum {
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

> 2.28.0
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
