Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87189217C44
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 02:39:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0E526E0E2;
	Wed,  8 Jul 2020 00:39:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83C7F6E0E2
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 00:39:16 +0000 (UTC)
IronPort-SDR: MZlPfvgEOEiWtQrtCSUtILoV0TxzTWuj858VjrMSW/yFNyhcUBvztvLPCoMlh1rvrJkq5ixKZW
 ZGVMM6SB59WQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="127314650"
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="127314650"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 17:39:17 -0700
IronPort-SDR: lziPx2AmoZ3uUKe/oIn6XbQ9po3ocuKf1YOFOQWBK8v6k8AMjH7VzDfPuJLd/R9Jv/gRPPOfeV
 EomxKeXbZ9zA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="388667065"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga001.fm.intel.com with ESMTP; 07 Jul 2020 17:39:15 -0700
Received: from fmsmsx158.amr.corp.intel.com (10.18.116.75) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 7 Jul 2020 17:39:15 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 fmsmsx158.amr.corp.intel.com ([169.254.15.146]) with mapi id 14.03.0439.000;
 Tue, 7 Jul 2020 17:39:15 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v7 3/5] drm/i915/rkl: Handle HTI
Thread-Index: AQHWRFfDjeXgqyuqiU67C4NMX34EWKj9bY8A
Date: Wed, 8 Jul 2020 00:39:14 +0000
Message-ID: <5d0c15152c89b43db772b3a0544d103c58bc78b5.camel@intel.com>
References: <20200617033100.4044428-1-matthew.d.roper@intel.com>
 <20200617033100.4044428-4-matthew.d.roper@intel.com>
In-Reply-To: <20200617033100.4044428-4-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.51]
Content-ID: <DD0F170BB9B65448A8B04C4352280F3B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v7 3/5] drm/i915/rkl: Handle HTI
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2020-06-16 at 20:30 -0700, Matt Roper wrote:
> If HTI (also sometimes called HDPORT) is enabled at startup, it may be
> using some of the PHYs and DPLLs making them unavailable for general
> usage.  Let's read out the HDPORT_STATE register and avoid making use of
> resources that HTI is already using.
> 
> v2:
>  - Fix minor checkpatch warnings
> 
> Bspec: 49189
> Bspec: 53707
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 30 ++++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 21 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
>  drivers/gpu/drm/i915/i915_drv.h               |  3 ++
>  drivers/gpu/drm/i915/i915_reg.h               |  6 ++++
>  5 files changed, 57 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 6c2bb3354b86..f16512eddc58 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -46,6 +46,7 @@
>  #include "display/intel_ddi.h"
>  #include "display/intel_dp.h"
>  #include "display/intel_dp_mst.h"
> +#include "display/intel_dpll_mgr.h"
>  #include "display/intel_dsi.h"
>  #include "display/intel_dvo.h"
>  #include "display/intel_gmbus.h"
> @@ -16814,6 +16815,13 @@ static void intel_pps_init(struct drm_i915_private *dev_priv)
>  	intel_pps_unlock_regs_wa(dev_priv);
>  }
>  
> +static bool hti_uses_phy(u32 hdport_state, enum phy phy)
> +{
> +	return hdport_state & HDPORT_ENABLED &&
> +		(hdport_state & HDPORT_PHY_USED_DP(phy) ||
> +		 hdport_state & HDPORT_PHY_USED_HDMI(phy));
> +}
> +
>  static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_encoder *encoder;
> @@ -16825,10 +16833,22 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  		return;
>  
>  	if (IS_ROCKETLAKE(dev_priv)) {
> -		intel_ddi_init(dev_priv, PORT_A);
> -		intel_ddi_init(dev_priv, PORT_B);
> -		intel_ddi_init(dev_priv, PORT_D);	/* DDI TC1 */
> -		intel_ddi_init(dev_priv, PORT_E);	/* DDI TC2 */
> +		/*
> +		 * If HTI (aka HDPORT) is enabled at boot, it may have taken
> +		 * over some of the PHYs and made them unavailable to the
> +		 * driver.  In that case we should skip initializing the
> +		 * corresponding outputs.
> +		 */
> +		u32 hdport_state = intel_de_read(dev_priv, HDPORT_STATE);
> +
> +		if (!hti_uses_phy(hdport_state, PHY_A))
> +			intel_ddi_init(dev_priv, PORT_A);
> +		if (!hti_uses_phy(hdport_state, PHY_B))
> +			intel_ddi_init(dev_priv, PORT_B);
> +		if (!hti_uses_phy(hdport_state, PHY_C))
> +			intel_ddi_init(dev_priv, PORT_D);	/* DDI TC1 */
> +		if (!hti_uses_phy(hdport_state, PHY_D))
> +			intel_ddi_init(dev_priv, PORT_E);	/* DDI TC2 */
>  	} else if (INTEL_GEN(dev_priv) >= 12) {
>  		intel_ddi_init(dev_priv, PORT_A);
>  		intel_ddi_init(dev_priv, PORT_B);
> @@ -18376,6 +18396,8 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
>  
>  	intel_dpll_readout_hw_state(dev_priv);
>  
> +	dev_priv->hti_pll_mask = intel_get_hti_plls(dev_priv);

Why not do this in intel_shared_dpll_init()?

> +
>  	for_each_intel_encoder(dev, encoder) {
>  		pipe = 0;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index b5f4d4cef682..6f59f9ec453b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -265,6 +265,24 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
>  	mutex_unlock(&dev_priv->dpll.lock);
>  }
>  
> +/*
> + * HTI (aka HDPORT) may be using some of the platform's PLL's, making them
> + * unavailable for use.
> + */
> +u32 intel_get_hti_plls(struct drm_i915_private *dev_priv)

No need to export this function, check above.

> +{
> +	u32 hdport_state;
> +
> +	if (!IS_ROCKETLAKE(dev_priv))
> +		return 0;
> +
> +	hdport_state = intel_de_read(dev_priv, HDPORT_STATE);
> +	if (!(hdport_state & HDPORT_ENABLED))
> +		return 0;
> +
> +	return REG_FIELD_GET(HDPORT_DPLL_USED_MASK, hdport_state);
> +}
> +
>  static struct intel_shared_dpll *
>  intel_find_shared_dpll(struct intel_atomic_state *state,
>  		       const struct intel_crtc *crtc,
> @@ -280,6 +298,9 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
>  
>  	drm_WARN_ON(&dev_priv->drm, dpll_mask & ~(BIT(I915_NUM_PLLS) - 1));
>  
> +	/* Eliminate DPLLs from consideration if reserved by HTI */
> +	dpll_mask &= ~dev_priv->hti_pll_mask;

This should be done in icl_get_combo_phy_dpll() for RKL only.

> +
>  	for_each_set_bit(i, &dpll_mask, I915_NUM_PLLS) {
>  		pll = &dev_priv->dpll.shared_dplls[i];
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index 49367847bfb5..edcc43f4670f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -390,6 +390,7 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state);
>  void intel_shared_dpll_init(struct drm_device *dev);
>  void intel_dpll_readout_hw_state(struct drm_i915_private *dev_priv);
>  void intel_dpll_sanitize_state(struct drm_i915_private *dev_priv);
> +u32 intel_get_hti_plls(struct drm_i915_private *dev_priv);
>  
>  void intel_dpll_dump_hw_state(struct drm_i915_private *dev_priv,
>  			      const struct intel_dpll_hw_state *hw_state);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 5649f8e502fe..b836032fa0de 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1037,6 +1037,9 @@ struct drm_i915_private {
>  
>  	struct intel_l3_parity l3_parity;
>  
> +	/* Mask of PLLs reserved for use by HTI and unavailable to driver. */
> +	u32 hti_pll_mask;
> +
>  	/*
>  	 * edram size in MB.
>  	 * Cannot be determined by PCIID. You must always read a register.
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 34f8698ac3aa..34b2ec04ccd8 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2908,6 +2908,12 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define MBUS_BBOX_CTL_S1		_MMIO(0x45040)
>  #define MBUS_BBOX_CTL_S2		_MMIO(0x45044)
>  
> +#define HDPORT_STATE			_MMIO(0x45050)
> +#define   HDPORT_DPLL_USED_MASK		REG_GENMASK(14, 12)
> +#define   HDPORT_PHY_USED_DP(phy)	REG_BIT(2 * (phy) + 2)
> +#define   HDPORT_PHY_USED_HDMI(phy)	REG_BIT(2 * (phy) + 1)
> +#define   HDPORT_ENABLED		REG_BIT(0)
> +
>  /* Make render/texture TLB fetches lower priorty than associated data
>   *   fetches. This is not turned on by default
>   */
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
