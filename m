Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDA229679C
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 01:22:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C679B6E430;
	Thu, 22 Oct 2020 23:22:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37BAC6E430
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 23:22:03 +0000 (UTC)
IronPort-SDR: 6pLOXxOkhbobv5luRyUHutYlwJXYhKFKIBWe1c4h0MEjX7EgNuZeK9dKJIGmlzVeIsRzuRrcPc
 tuj7UxAoZbpg==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="165015354"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="165015354"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 16:22:02 -0700
IronPort-SDR: q6XP4WWbE0WS/JOEapOFkvaa7zrMoEV0UxJajFAZmbANUad60Ne1qgrBUhF0KGfvm2yhGezcfM
 h0kAWSIbRVlw==
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="534169775"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 16:22:02 -0700
Date: Thu, 22 Oct 2020 16:22:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20201022232201.GQ627052@mdroper-desk1.amr.corp.intel.com>
References: <20201021082034.3170478-1-lucas.demarchi@intel.com>
 <20201021082034.3170478-4-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201021082034.3170478-4-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/dg1: map/unmap pll clocks
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

On Wed, Oct 21, 2020 at 01:20:31AM -0700, Lucas De Marchi wrote:
> DG1 uses 2 registers for the ddi clock mapping, with PHY A and B using
> DPCLKA_CFGCR0 and PHY C and D using DPCLKA1_CFGCR0. Hide this behind a
> single macro that chooses the correct register according to the phy
> being accessed, use the correct bitfields for each pll/phy and implement
> separate functions for DG1 since it doesn't share much with ICL/TGL
> anymore.
> =

> The previous values were correct for PHY A and B since they were using
> the same register as before and the bitfields were matching.
> =

> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Cc: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 92 +++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_display.c | 25 +++++-
>  drivers/gpu/drm/i915/i915_reg.h              | 15 ++++
>  3 files changed, 128 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 3a99f209f1e6..feb9512fb204 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2970,6 +2970,38 @@ static u32 icl_dpclka_cfgcr0_clk_off(struct drm_i9=
15_private *dev_priv,
>  	return 0;
>  }
>  =

> +static void dg1_map_plls_to_ports(struct intel_encoder *encoder,
> +				  const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> +	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> +	u32 val;
> +
> +	/*
> +	 * If we fail this, something went very wrong: first 2 PLLs should be
> +	 * used by first 2 phys and last 2 PLLs by last phys
> +	 */
> +	if (WARN_ON((pll->info->id < DPLL_ID_DG1_DPLL2 && phy >=3D PHY_C) ||
> +		    (pll->info->id >=3D DPLL_ID_DG1_DPLL2 && phy < PHY_C)))
> +		return;
> +
> +	mutex_lock(&dev_priv->dpll.lock);

Not specifically related to this patch, but since we're adding more uses
of it --- is dpll.lock actually necessary on any modern platform?  My
understanding is that it was added to prevent racing rmw operations if
we had parallel modesets on different CRTCs.  But I think any modeset on
a gen9+ platform needs to update other global state (the DDB) and would
have already grabbed all CRTC locks to prevent racing commits.  Am I
missing something?

> +
> +	val =3D intel_de_read(dev_priv, DG1_DPCLKA_CFGCR0(phy));
> +	WARN_ON((val & DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)) =3D=3D 0);
> +
> +	val &=3D ~DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
> +	val |=3D DG1_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy);
> +	intel_de_write(dev_priv, DG1_DPCLKA_CFGCR0(phy), val);
> +	intel_de_posting_read(dev_priv, DG1_DPCLKA_CFGCR0(phy));
> +
> +	val &=3D ~DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
> +	intel_de_write(dev_priv, DG1_DPCLKA_CFGCR0(phy), val);
> +
> +	mutex_unlock(&dev_priv->dpll.lock);
> +}
> +
>  static void icl_map_plls_to_ports(struct intel_encoder *encoder,
>  				  const struct intel_crtc_state *crtc_state)
>  {
> @@ -3017,6 +3049,19 @@ static void icl_map_plls_to_ports(struct intel_enc=
oder *encoder,
>  	mutex_unlock(&dev_priv->dpll.lock);
>  }
>  =

> +static void dg1_unmap_plls_to_ports(struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> +
> +	mutex_lock(&dev_priv->dpll.lock);
> +
> +	intel_de_rmw(dev_priv, DG1_DPCLKA_CFGCR0(phy), 0,
> +		     DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
> +
> +	mutex_unlock(&dev_priv->dpll.lock);
> +}
> +
>  static void icl_unmap_plls_to_ports(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> @@ -3032,6 +3077,40 @@ static void icl_unmap_plls_to_ports(struct intel_e=
ncoder *encoder)
>  	mutex_unlock(&dev_priv->dpll.lock);
>  }
>  =

> +static void dg1_sanitize_port_clk_off(struct drm_i915_private *dev_priv,
> +				      u32 port_mask, bool ddi_clk_needed)
> +{
> +	enum port port;
> +	u32 val;
> +
> +	for_each_port_masked(port, port_mask) {
> +		enum phy phy =3D intel_port_to_phy(dev_priv, port);
> +		bool ddi_clk_off;
> +
> +		val =3D intel_de_read(dev_priv, DG1_DPCLKA_CFGCR0(phy));
> +		ddi_clk_off =3D val & DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
> +
> +		if (ddi_clk_needed =3D=3D !ddi_clk_off)
> +			continue;
> +
> +		/*
> +		 * Punt on the case now where clock is gated, but it would
> +		 * be needed by the port. Something else is really broken then.
> +		 */
> +		if (ddi_clk_needed) {
> +			WARN(1, "ddi_clk_needed=3D%u ddi_clk_off=3D%u phy=3D%u\n",
> +			     ddi_clk_needed, ddi_clk_off, phy);
> +			continue;
> +		}
> +
> +		DRM_NOTE("PHY %c is disabled/in DSI mode with an ungated DDI clock, ga=
te it\n",
> +			 phy_name(phy));
> +
> +		val |=3D DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
> +		intel_de_write(dev_priv, DG1_DPCLKA_CFGCR0(phy), val);
> +	}
> +}
> +
>  static void icl_sanitize_port_clk_off(struct drm_i915_private *dev_priv,
>  				      u32 port_mask, bool ddi_clk_needed)
>  {
> @@ -3114,7 +3193,10 @@ void icl_sanitize_encoder_pll_mapping(struct intel=
_encoder *encoder)
>  		ddi_clk_needed =3D false;
>  	}
>  =

> -	icl_sanitize_port_clk_off(dev_priv, port_mask, ddi_clk_needed);
> +	if (IS_DG1(dev_priv))
> +		dg1_sanitize_port_clk_off(dev_priv, port_mask, ddi_clk_needed);
> +	else
> +		icl_sanitize_port_clk_off(dev_priv, port_mask, ddi_clk_needed);
>  }
>  =

>  static void intel_ddi_clk_select(struct intel_encoder *encoder,
> @@ -3666,7 +3748,9 @@ static void intel_ddi_pre_enable(struct intel_atomi=
c_state *state,
>  =

>  	drm_WARN_ON(&dev_priv->drm, crtc_state->has_pch_encoder);
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 11)
> +	if (IS_DG1(dev_priv))
> +		dg1_map_plls_to_ports(encoder, crtc_state);
> +	else if (INTEL_GEN(dev_priv) >=3D 11)
>  		icl_map_plls_to_ports(encoder, crtc_state);
>  =

>  	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
> @@ -3848,7 +3932,9 @@ static void intel_ddi_post_disable(struct intel_ato=
mic_state *state,
>  		intel_ddi_post_disable_dp(state, encoder, old_crtc_state,
>  					  old_conn_state);
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 11)
> +	if (IS_DG1(dev_priv))
> +		dg1_unmap_plls_to_ports(encoder);
> +	else if (INTEL_GEN(dev_priv) >=3D 11)
>  		icl_unmap_plls_to_ports(encoder);
>  =

>  	if (intel_crtc_has_dp_encoder(old_crtc_state) || is_tc_port)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 24d85b2689d5..137e4a604f74 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -10897,6 +10897,27 @@ static int hsw_crtc_compute_clock(struct intel_c=
rtc *crtc,
>  	return 0;
>  }
>  =

> +static void dg1_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
> +			    struct intel_crtc_state *pipe_config)
> +{
> +	enum icl_port_dpll_id port_dpll_id =3D ICL_PORT_DPLL_DEFAULT;
> +	enum phy phy =3D intel_port_to_phy(dev_priv, port);
> +	enum intel_dpll_id id;
> +	u32 val;
> +
> +	val =3D intel_de_read(dev_priv, DG1_DPCLKA_CFGCR0(phy))
> +		& DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
> +	id =3D DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_VAL_TO_ID(val, phy);
> +
> +	if (WARN_ON(id > DPLL_ID_DG1_DPLL3))
> +		return;
> +
> +	pipe_config->icl_port_dplls[port_dpll_id].pll =3D
> +		intel_get_shared_dpll_by_id(dev_priv, id);
> +
> +	icl_set_active_port_dpll(pipe_config, port_dpll_id);
> +}
> +
>  static void cnl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
>  			    struct intel_crtc_state *pipe_config)
>  {
> @@ -11205,7 +11226,9 @@ static void hsw_get_ddi_port_state(struct intel_c=
rtc *crtc,
>  			port =3D TRANS_DDI_FUNC_CTL_VAL_TO_PORT(tmp);
>  	}
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 11)
> +	if (IS_DG1(dev_priv))
> +		dg1_get_ddi_pll(dev_priv, port, pipe_config);
> +	else if (INTEL_GEN(dev_priv) >=3D 11)
>  		icl_get_ddi_pll(dev_priv, port, pipe_config);
>  	else if (IS_CANNONLAKE(dev_priv))
>  		cnl_get_ddi_pll(dev_priv, port, pipe_config);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index c7ce3d03b588..80e754a65117 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -230,12 +230,14 @@ static inline bool i915_mmio_reg_valid(i915_reg_t r=
eg)
>  #define _TRANS(tran, a, b)		_PICK_EVEN(tran, a, b)
>  #define _PORT(port, a, b)		_PICK_EVEN(port, a, b)
>  #define _PLL(pll, a, b)			_PICK_EVEN(pll, a, b)
> +#define _PHY(phy, a, b)			_PICK_EVEN(phy, a, b)
>  =

>  #define _MMIO_PIPE(pipe, a, b)		_MMIO(_PIPE(pipe, a, b))
>  #define _MMIO_PLANE(plane, a, b)	_MMIO(_PLANE(plane, a, b))
>  #define _MMIO_TRANS(tran, a, b)		_MMIO(_TRANS(tran, a, b))
>  #define _MMIO_PORT(port, a, b)		_MMIO(_PORT(port, a, b))
>  #define _MMIO_PLL(pll, a, b)		_MMIO(_PLL(pll, a, b))
> +#define _MMIO_PHY(phy, a, b)		_MMIO(_PHY(phy, a, b))
>  =

>  #define _PHY3(phy, ...)			_PICK(phy, __VA_ARGS__)
>  =

> @@ -10299,6 +10301,7 @@ enum skl_power_gate {
>  #define  DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(port)	(3 << DPCLKA_CFGCR0_DDI_CL=
K_SEL_SHIFT(port))
>  #define  DPCLKA_CFGCR0_DDI_CLK_SEL(pll, port)	((pll) << DPCLKA_CFGCR0_DD=
I_CLK_SEL_SHIFT(port))
>  =

> +/* ICL Clocks */
>  #define ICL_DPCLKA_CFGCR0			_MMIO(0x164280)
>  #define  ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)	(1 << _PICK(phy, 10, 11, 24))
>  #define  RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)	REG_BIT((phy) + 10)
> @@ -10314,6 +10317,18 @@ enum skl_power_gate {
>  #define  RKL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy) \
>  	((pll) << RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
>  =

> +/* DG1 Clocks */
> +#define _DG1_DPCLKA_CFGCR0			0x164280
> +#define _DG1_DPCLKA1_CFGCR0			0x16C280
> +#define DG1_DPCLKA_CFGCR0(phy)			_MMIO_PHY((phy) / 2, \
> +							  _DG1_DPCLKA_CFGCR0, \
> +							  _DG1_DPCLKA1_CFGCR0)
> +#define   DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)             (1 << (10 + ((p=
hy) % 2)))
> +#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)        (0x3 << (((phy)=
 % 2) * 2))
> +#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)        (((pll) % 2) <<=
 (((phy) % 2)) * 2)
> +#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_VAL_TO_ID(val, phy) \
> +	  ((((val) & DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)) >> ((phy % 2) * 2=
)) + (2 * (phy / 2)))

This sure is ugly.  But it looks correct.

Although the code might wind up being slightly longer, I wonder if it
would help clarify if we wrote a few at least the last part of this
expression with ternary operators and symbolic names.  E.g.,

        "... + (phy >=3D PHY_C ? DPLL_ID_DG1_DPLL2 : DPLL_ID_DG1_DPLL0)"

Up to you; the patch looks fine either way.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> +
>  /* CNL PLL */
>  #define DPLL0_ENABLE		0x46010
>  #define DPLL1_ENABLE		0x46014
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
