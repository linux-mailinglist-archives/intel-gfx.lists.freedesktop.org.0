Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5239F2DC013
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 13:19:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A60A36E1AA;
	Wed, 16 Dec 2020 12:19:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 299A16E1AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 12:19:16 +0000 (UTC)
IronPort-SDR: +wVVyY+2Y6MCIlb3A2pLaT3s77YCLgicE9GKlmxuPRsIymQbQuFXUpT2/rhNmF0XBeet350s3/
 0LnbHnv0GZww==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="154860280"
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="154860280"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 04:19:15 -0800
IronPort-SDR: 5kz3v0+cUzBQf65q0Srl4bH5DEu1xIxPMOHDfszPifDQ3G0M+qOBTGgCsi8YrD6BL43JWSZpDj
 NDO/NHvxaphw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="352528998"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 16 Dec 2020 04:19:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Dec 2020 14:19:12 +0200
Date: Wed, 16 Dec 2020 14:19:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <X9n7QHFBR9tuweNv@intel.com>
References: <cover.1608117676.git.jani.nikula@intel.com>
 <9567207bf750a1ca1cba5627c4ebdcbec3b385ff.1608117676.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9567207bf750a1ca1cba5627c4ebdcbec3b385ff.1608117676.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 08/11] drm/i915: migrate hsw fdi code to
 new file.
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
Cc: Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 16, 2020 at 01:29:15PM +0200, Jani Nikula wrote:
> From: Dave Airlie <airlied@redhat.com>
> =

> Daniel asked for this, but it's a bit messy and I'm not sure
> how best to clean it up yet.
> =

> Signed-off-by: Dave Airlie <airlied@redhat.com>
> [Jani: also moved fdi buf trans to intel_fdi.c.]
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c |   1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c | 197 +----------------------
>  drivers/gpu/drm/i915/display/intel_ddi.h |  14 +-
>  drivers/gpu/drm/i915/display/intel_fdi.c | 174 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_fdi.h |   7 +
>  5 files changed, 202 insertions(+), 191 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index 4934edd51cb0..077ebc7e6396 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -38,6 +38,7 @@
>  #include "intel_crt.h"
>  #include "intel_ddi.h"
>  #include "intel_display_types.h"
> +#include "intel_fdi.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_gmbus.h"
>  #include "intel_hotplug.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 6863236df1d0..deabb1ad6045 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -35,10 +35,11 @@
>  #include "intel_ddi.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> -#include "intel_dp_mst.h"
>  #include "intel_dp_link_training.h"
> +#include "intel_dp_mst.h"
>  #include "intel_dpio_phy.h"
>  #include "intel_dsi.h"
> +#include "intel_fdi.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_gmbus.h"
>  #include "intel_hdcp.h"
> @@ -51,12 +52,6 @@
>  #include "intel_tc.h"
>  #include "intel_vdsc.h"
>  =

> -struct ddi_buf_trans {
> -	u32 trans1;	/* balance leg enable, de-emph level */
> -	u32 trans2;	/* vref sel, vswing */
> -	u8 i_boost;	/* SKL: I_boost; valid: 0x0, 0x1, 0x3, 0x7 */
> -};

I'd suggest not moving any buf_trans stuff into intel_fdi.c. =

Rather we want something like intel_ddi_buf_trans.c to house
all of it.

> -
>  static const u8 index_to_dp_signal_levels[] =3D {
>  	[0] =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_0 | DP_TRAIN_PRE_EMPH_LEVEL_0,
>  	[1] =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_0 | DP_TRAIN_PRE_EMPH_LEVEL_1,
> @@ -86,18 +81,6 @@ static const struct ddi_buf_trans hsw_ddi_translations=
_dp[] =3D {
>  	{ 0x80D75FFF, 0x000B0000, 0x0 },
>  };
>  =

> -static const struct ddi_buf_trans hsw_ddi_translations_fdi[] =3D {
> -	{ 0x00FFFFFF, 0x0007000E, 0x0 },
> -	{ 0x00D75FFF, 0x000F000A, 0x0 },
> -	{ 0x00C30FFF, 0x00060006, 0x0 },
> -	{ 0x00AAAFFF, 0x001E0000, 0x0 },
> -	{ 0x00FFFFFF, 0x000F000A, 0x0 },
> -	{ 0x00D75FFF, 0x00160004, 0x0 },
> -	{ 0x00C30FFF, 0x001E0000, 0x0 },
> -	{ 0x00FFFFFF, 0x00060006, 0x0 },
> -	{ 0x00D75FFF, 0x001E0000, 0x0 },
> -};
> -
>  static const struct ddi_buf_trans hsw_ddi_translations_hdmi[] =3D {
>  					/* Idx	NT mV d	T mV d	db	*/
>  	{ 0x00FFFFFF, 0x0006000E, 0x0 },/* 0:	400	400	0	*/
> @@ -138,18 +121,6 @@ static const struct ddi_buf_trans bdw_ddi_translatio=
ns_dp[] =3D {
>  	{ 0x80D75FFF, 0x001B0002, 0x0 },
>  };
>  =

> -static const struct ddi_buf_trans bdw_ddi_translations_fdi[] =3D {
> -	{ 0x00FFFFFF, 0x0001000E, 0x0 },
> -	{ 0x00D75FFF, 0x0004000A, 0x0 },
> -	{ 0x00C30FFF, 0x00070006, 0x0 },
> -	{ 0x00AAAFFF, 0x000C0000, 0x0 },
> -	{ 0x00FFFFFF, 0x0004000A, 0x0 },
> -	{ 0x00D75FFF, 0x00090004, 0x0 },
> -	{ 0x00C30FFF, 0x000C0000, 0x0 },
> -	{ 0x00FFFFFF, 0x00070006, 0x0 },
> -	{ 0x00D75FFF, 0x000C0000, 0x0 },
> -};
> -
>  static const struct ddi_buf_trans bdw_ddi_translations_hdmi[] =3D {
>  					/* Idx	NT mV d	T mV df	db	*/
>  	{ 0x00FFFFFF, 0x0007000E, 0x0 },/* 0:	400	400	0	*/
> @@ -929,22 +900,6 @@ intel_ddi_get_buf_trans_edp(struct intel_encoder *en=
coder, int *n_entries)
>  	return NULL;
>  }
>  =

> -static const struct ddi_buf_trans *
> -intel_ddi_get_buf_trans_fdi(struct drm_i915_private *dev_priv,
> -			    int *n_entries)
> -{
> -	if (IS_BROADWELL(dev_priv)) {
> -		*n_entries =3D ARRAY_SIZE(bdw_ddi_translations_fdi);
> -		return bdw_ddi_translations_fdi;
> -	} else if (IS_HASWELL(dev_priv)) {
> -		*n_entries =3D ARRAY_SIZE(hsw_ddi_translations_fdi);
> -		return hsw_ddi_translations_fdi;
> -	}
> -
> -	*n_entries =3D 0;
> -	return NULL;
> -}
> -
>  static const struct ddi_buf_trans *
>  intel_ddi_get_buf_trans_hdmi(struct intel_encoder *encoder,
>  			     int *n_entries)
> @@ -1398,8 +1353,8 @@ static int intel_ddi_hdmi_level(struct intel_encode=
r *encoder,
>   * values in advance. This function programs the correct values for
>   * DP/eDP/FDI use cases.
>   */
> -static void intel_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
> -					 const struct intel_crtc_state *crtc_state)
> +void intel_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
> +				  const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	u32 iboost_bit =3D 0;
> @@ -1408,8 +1363,7 @@ static void intel_prepare_dp_ddi_buffers(struct int=
el_encoder *encoder,
>  	const struct ddi_buf_trans *ddi_translations;
>  =

>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG))
> -		ddi_translations =3D intel_ddi_get_buf_trans_fdi(dev_priv,
> -							       &n_entries);
> +		ddi_translations =3D intel_fdi_get_buf_trans(dev_priv, &n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>  		ddi_translations =3D intel_ddi_get_buf_trans_edp(encoder,
>  							       &n_entries);
> @@ -1461,8 +1415,8 @@ static void intel_prepare_hdmi_ddi_buffers(struct i=
ntel_encoder *encoder,
>  		       ddi_translations[level].trans2);
>  }
>  =

> -static void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
> -				    enum port port)
> +void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
> +			     enum port port)
>  {
>  	if (IS_BROXTON(dev_priv)) {
>  		udelay(16);
> @@ -1490,7 +1444,7 @@ static void intel_wait_ddi_buf_active(struct drm_i9=
15_private *dev_priv,
>  			port_name(port));
>  }
>  =

> -static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
> +u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
>  {
>  	switch (pll->info->id) {
>  	case DPLL_ID_WRPLL1:
> @@ -1550,141 +1504,6 @@ static u32 icl_pll_to_ddi_clk_sel(struct intel_en=
coder *encoder,
>  	}
>  }
>  =

> -/* Starting with Haswell, different DDI ports can work in FDI mode for
> - * connection to the PCH-located connectors. For this, it is necessary t=
o train
> - * both the DDI port and PCH receiver for the desired DDI buffer setting=
s.
> - *
> - * The recommended port to work in FDI mode is DDI E, which we use here.=
 Also,
> - * please note that when FDI mode is active on DDI E, it shares 2 lines =
with
> - * DDI A (which is used for eDP)
> - */
> -
> -void hsw_fdi_link_train(struct intel_encoder *encoder,
> -			const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	u32 temp, i, rx_ctl_val, ddi_pll_sel;
> -
> -	intel_prepare_dp_ddi_buffers(encoder, crtc_state);
> -
> -	/* Set the FDI_RX_MISC pwrdn lanes and the 2 workarounds listed at the
> -	 * mode set "sequence for CRT port" document:
> -	 * - TP1 to TP2 time with the default value
> -	 * - FDI delay to 90h
> -	 *
> -	 * WaFDIAutoLinkSetTimingOverrride:hsw
> -	 */
> -	intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A),
> -		       FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2) | FDI_RX_=
TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);
> -
> -	/* Enable the PCH Receiver FDI PLL */
> -	rx_ctl_val =3D dev_priv->fdi_rx_config | FDI_RX_ENHANCE_FRAME_ENABLE |
> -		     FDI_RX_PLL_ENABLE |
> -		     FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
> -	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
> -	intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
> -	udelay(220);
> -
> -	/* Switch from Rawclk to PCDclk */
> -	rx_ctl_val |=3D FDI_PCDCLK;
> -	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
> -
> -	/* Configure Port Clock Select */
> -	ddi_pll_sel =3D hsw_pll_to_ddi_pll_sel(crtc_state->shared_dpll);
> -	intel_de_write(dev_priv, PORT_CLK_SEL(PORT_E), ddi_pll_sel);
> -	drm_WARN_ON(&dev_priv->drm, ddi_pll_sel !=3D PORT_CLK_SEL_SPLL);
> -
> -	/* Start the training iterating through available voltages and emphasis,
> -	 * testing each value twice. */
> -	for (i =3D 0; i < ARRAY_SIZE(hsw_ddi_translations_fdi) * 2; i++) {
> -		/* Configure DP_TP_CTL with auto-training */
> -		intel_de_write(dev_priv, DP_TP_CTL(PORT_E),
> -			       DP_TP_CTL_FDI_AUTOTRAIN |
> -			       DP_TP_CTL_ENHANCED_FRAME_ENABLE |
> -			       DP_TP_CTL_LINK_TRAIN_PAT1 |
> -			       DP_TP_CTL_ENABLE);
> -
> -		/* Configure and enable DDI_BUF_CTL for DDI E with next voltage.
> -		 * DDI E does not support port reversal, the functionality is
> -		 * achieved on the PCH side in FDI_RX_CTL, so no need to set the
> -		 * port reversal bit */
> -		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E),
> -			       DDI_BUF_CTL_ENABLE | ((crtc_state->fdi_lanes - 1) << 1) | DDI_=
BUF_TRANS_SELECT(i / 2));
> -		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
> -
> -		udelay(600);
> -
> -		/* Program PCH FDI Receiver TU */
> -		intel_de_write(dev_priv, FDI_RX_TUSIZE1(PIPE_A), TU_SIZE(64));
> -
> -		/* Enable PCH FDI Receiver with auto-training */
> -		rx_ctl_val |=3D FDI_RX_ENABLE | FDI_LINK_TRAIN_AUTO;
> -		intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
> -		intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
> -
> -		/* Wait for FDI receiver lane calibration */
> -		udelay(30);
> -
> -		/* Unset FDI_RX_MISC pwrdn lanes */
> -		temp =3D intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
> -		temp &=3D ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
> -		intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A), temp);
> -		intel_de_posting_read(dev_priv, FDI_RX_MISC(PIPE_A));
> -
> -		/* Wait for FDI auto training time */
> -		udelay(5);
> -
> -		temp =3D intel_de_read(dev_priv, DP_TP_STATUS(PORT_E));
> -		if (temp & DP_TP_STATUS_AUTOTRAIN_DONE) {
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "FDI link training done on step %d\n", i);
> -			break;
> -		}
> -
> -		/*
> -		 * Leave things enabled even if we failed to train FDI.
> -		 * Results in less fireworks from the state checker.
> -		 */
> -		if (i =3D=3D ARRAY_SIZE(hsw_ddi_translations_fdi) * 2 - 1) {
> -			drm_err(&dev_priv->drm, "FDI link training failed!\n");
> -			break;
> -		}
> -
> -		rx_ctl_val &=3D ~FDI_RX_ENABLE;
> -		intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
> -		intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
> -
> -		temp =3D intel_de_read(dev_priv, DDI_BUF_CTL(PORT_E));
> -		temp &=3D ~DDI_BUF_CTL_ENABLE;
> -		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E), temp);
> -		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
> -
> -		/* Disable DP_TP_CTL and FDI_RX_CTL and retry */
> -		temp =3D intel_de_read(dev_priv, DP_TP_CTL(PORT_E));
> -		temp &=3D ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
> -		temp |=3D DP_TP_CTL_LINK_TRAIN_PAT1;
> -		intel_de_write(dev_priv, DP_TP_CTL(PORT_E), temp);
> -		intel_de_posting_read(dev_priv, DP_TP_CTL(PORT_E));
> -
> -		intel_wait_ddi_buf_idle(dev_priv, PORT_E);
> -
> -		/* Reset FDI_RX_MISC pwrdn lanes */
> -		temp =3D intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
> -		temp &=3D ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
> -		temp |=3D FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2);
> -		intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A), temp);
> -		intel_de_posting_read(dev_priv, FDI_RX_MISC(PIPE_A));
> -	}
> -
> -	/* Enable normal pixel sending for FDI */
> -	intel_de_write(dev_priv, DP_TP_CTL(PORT_E),
> -		       DP_TP_CTL_FDI_AUTOTRAIN |
> -		       DP_TP_CTL_LINK_TRAIN_NORMAL |
> -		       DP_TP_CTL_ENHANCED_FRAME_ENABLE |
> -		       DP_TP_CTL_ENABLE);
> -}
> -
>  static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
>  				      const struct intel_crtc_state *crtc_state)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i=
915/display/intel_ddi.h
> index dcc711cfe4fe..e42b6bd05e01 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> @@ -9,6 +9,12 @@
>  #include "intel_display.h"
>  #include "i915_reg.h"
>  =

> +struct ddi_buf_trans {
> +	u32 trans1;	/* balance leg enable, de-emph level */
> +	u32 trans2;	/* vref sel, vswing */
> +	u8 i_boost;	/* SKL: I_boost; valid: 0x0, 0x1, 0x3, 0x7 */
> +};
> +
>  struct drm_connector_state;
>  struct drm_i915_private;
>  struct intel_connector;
> @@ -17,6 +23,7 @@ struct intel_crtc_state;
>  struct intel_dp;
>  struct intel_dpll_hw_state;
>  struct intel_encoder;
> +struct intel_shared_dpll;
>  enum transcoder;
>  =

>  i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
> @@ -27,8 +34,11 @@ void intel_ddi_fdi_post_disable(struct intel_atomic_st=
ate *state,
>  				struct intel_encoder *intel_encoder,
>  				const struct intel_crtc_state *old_crtc_state,
>  				const struct drm_connector_state *old_conn_state);
> -void hsw_fdi_link_train(struct intel_encoder *encoder,
> -			const struct intel_crtc_state *crtc_state);
> +u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll);
> +void intel_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
> +				  const struct intel_crtc_state *crtc_state);
> +void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
> +			     enum port port);
>  void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port);
>  bool intel_ddi_get_hw_state(struct intel_encoder *encoder, enum pipe *pi=
pe);
>  void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i=
915/display/intel_fdi.c
> index b2eb96ae10a2..19bbc1f8dd5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -3,9 +3,49 @@
>   * Copyright =A9 2020 Intel Corporation
>   */
>  #include "intel_atomic.h"
> +#include "intel_ddi.h"
>  #include "intel_display_types.h"
>  #include "intel_fdi.h"
>  =

> +static const struct ddi_buf_trans bdw_ddi_translations_fdi[] =3D {
> +	{ 0x00FFFFFF, 0x0001000E, 0x0 },
> +	{ 0x00D75FFF, 0x0004000A, 0x0 },
> +	{ 0x00C30FFF, 0x00070006, 0x0 },
> +	{ 0x00AAAFFF, 0x000C0000, 0x0 },
> +	{ 0x00FFFFFF, 0x0004000A, 0x0 },
> +	{ 0x00D75FFF, 0x00090004, 0x0 },
> +	{ 0x00C30FFF, 0x000C0000, 0x0 },
> +	{ 0x00FFFFFF, 0x00070006, 0x0 },
> +	{ 0x00D75FFF, 0x000C0000, 0x0 },
> +};
> +
> +static const struct ddi_buf_trans hsw_ddi_translations_fdi[] =3D {
> +	{ 0x00FFFFFF, 0x0007000E, 0x0 },
> +	{ 0x00D75FFF, 0x000F000A, 0x0 },
> +	{ 0x00C30FFF, 0x00060006, 0x0 },
> +	{ 0x00AAAFFF, 0x001E0000, 0x0 },
> +	{ 0x00FFFFFF, 0x000F000A, 0x0 },
> +	{ 0x00D75FFF, 0x00160004, 0x0 },
> +	{ 0x00C30FFF, 0x001E0000, 0x0 },
> +	{ 0x00FFFFFF, 0x00060006, 0x0 },
> +	{ 0x00D75FFF, 0x001E0000, 0x0 },
> +};
> +
> +const struct ddi_buf_trans *
> +intel_fdi_get_buf_trans(struct drm_i915_private *dev_priv, int *n_entrie=
s)
> +{
> +	if (IS_BROADWELL(dev_priv)) {
> +		*n_entries =3D ARRAY_SIZE(bdw_ddi_translations_fdi);
> +		return bdw_ddi_translations_fdi;
> +	} else if (IS_HASWELL(dev_priv)) {
> +		*n_entries =3D ARRAY_SIZE(hsw_ddi_translations_fdi);
> +		return hsw_ddi_translations_fdi;
> +	}
> +
> +	*n_entries =3D 0;
> +	return NULL;
> +}
> +
>  /* units of 100MHz */
>  static int pipe_required_fdi_lanes(struct intel_crtc_state *crtc_state)
>  {
> @@ -550,6 +590,140 @@ static void ivb_manual_fdi_link_train(struct intel_=
crtc *crtc,
>  	drm_dbg_kms(&dev_priv->drm, "FDI train done.\n");
>  }
>  =

> +/* Starting with Haswell, different DDI ports can work in FDI mode for
> + * connection to the PCH-located connectors. For this, it is necessary t=
o train
> + * both the DDI port and PCH receiver for the desired DDI buffer setting=
s.
> + *
> + * The recommended port to work in FDI mode is DDI E, which we use here.=
 Also,
> + * please note that when FDI mode is active on DDI E, it shares 2 lines =
with
> + * DDI A (which is used for eDP)
> + */
> +void hsw_fdi_link_train(struct intel_encoder *encoder,
> +			const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	u32 temp, i, rx_ctl_val, ddi_pll_sel;
> +
> +	intel_prepare_dp_ddi_buffers(encoder, crtc_state);
> +
> +	/* Set the FDI_RX_MISC pwrdn lanes and the 2 workarounds listed at the
> +	 * mode set "sequence for CRT port" document:
> +	 * - TP1 to TP2 time with the default value
> +	 * - FDI delay to 90h
> +	 *
> +	 * WaFDIAutoLinkSetTimingOverrride:hsw
> +	 */
> +	intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A),
> +		       FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2) | FDI_RX_=
TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);
> +
> +	/* Enable the PCH Receiver FDI PLL */
> +	rx_ctl_val =3D dev_priv->fdi_rx_config | FDI_RX_ENHANCE_FRAME_ENABLE |
> +		     FDI_RX_PLL_ENABLE |
> +		     FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
> +	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
> +	intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
> +	udelay(220);
> +
> +	/* Switch from Rawclk to PCDclk */
> +	rx_ctl_val |=3D FDI_PCDCLK;
> +	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
> +
> +	/* Configure Port Clock Select */
> +	ddi_pll_sel =3D hsw_pll_to_ddi_pll_sel(crtc_state->shared_dpll);
> +	intel_de_write(dev_priv, PORT_CLK_SEL(PORT_E), ddi_pll_sel);
> +	drm_WARN_ON(&dev_priv->drm, ddi_pll_sel !=3D PORT_CLK_SEL_SPLL);
> +
> +	/* Start the training iterating through available voltages and emphasis,
> +	 * testing each value twice. */
> +	for (i =3D 0; i < ARRAY_SIZE(hsw_ddi_translations_fdi) * 2; i++) {
> +		/* Configure DP_TP_CTL with auto-training */
> +		intel_de_write(dev_priv, DP_TP_CTL(PORT_E),
> +			       DP_TP_CTL_FDI_AUTOTRAIN |
> +			       DP_TP_CTL_ENHANCED_FRAME_ENABLE |
> +			       DP_TP_CTL_LINK_TRAIN_PAT1 |
> +			       DP_TP_CTL_ENABLE);
> +
> +		/* Configure and enable DDI_BUF_CTL for DDI E with next voltage.
> +		 * DDI E does not support port reversal, the functionality is
> +		 * achieved on the PCH side in FDI_RX_CTL, so no need to set the
> +		 * port reversal bit */
> +		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E),
> +			       DDI_BUF_CTL_ENABLE | ((crtc_state->fdi_lanes - 1) << 1) | DDI_=
BUF_TRANS_SELECT(i / 2));
> +		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
> +
> +		udelay(600);
> +
> +		/* Program PCH FDI Receiver TU */
> +		intel_de_write(dev_priv, FDI_RX_TUSIZE1(PIPE_A), TU_SIZE(64));
> +
> +		/* Enable PCH FDI Receiver with auto-training */
> +		rx_ctl_val |=3D FDI_RX_ENABLE | FDI_LINK_TRAIN_AUTO;
> +		intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
> +		intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
> +
> +		/* Wait for FDI receiver lane calibration */
> +		udelay(30);
> +
> +		/* Unset FDI_RX_MISC pwrdn lanes */
> +		temp =3D intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
> +		temp &=3D ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
> +		intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A), temp);
> +		intel_de_posting_read(dev_priv, FDI_RX_MISC(PIPE_A));
> +
> +		/* Wait for FDI auto training time */
> +		udelay(5);
> +
> +		temp =3D intel_de_read(dev_priv, DP_TP_STATUS(PORT_E));
> +		if (temp & DP_TP_STATUS_AUTOTRAIN_DONE) {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "FDI link training done on step %d\n", i);
> +			break;
> +		}
> +
> +		/*
> +		 * Leave things enabled even if we failed to train FDI.
> +		 * Results in less fireworks from the state checker.
> +		 */
> +		if (i =3D=3D ARRAY_SIZE(hsw_ddi_translations_fdi) * 2 - 1) {
> +			drm_err(&dev_priv->drm, "FDI link training failed!\n");
> +			break;
> +		}
> +
> +		rx_ctl_val &=3D ~FDI_RX_ENABLE;
> +		intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
> +		intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
> +
> +		temp =3D intel_de_read(dev_priv, DDI_BUF_CTL(PORT_E));
> +		temp &=3D ~DDI_BUF_CTL_ENABLE;
> +		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E), temp);
> +		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
> +
> +		/* Disable DP_TP_CTL and FDI_RX_CTL and retry */
> +		temp =3D intel_de_read(dev_priv, DP_TP_CTL(PORT_E));
> +		temp &=3D ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
> +		temp |=3D DP_TP_CTL_LINK_TRAIN_PAT1;
> +		intel_de_write(dev_priv, DP_TP_CTL(PORT_E), temp);
> +		intel_de_posting_read(dev_priv, DP_TP_CTL(PORT_E));
> +
> +		intel_wait_ddi_buf_idle(dev_priv, PORT_E);
> +
> +		/* Reset FDI_RX_MISC pwrdn lanes */
> +		temp =3D intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
> +		temp &=3D ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
> +		temp |=3D FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2);
> +		intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A), temp);
> +		intel_de_posting_read(dev_priv, FDI_RX_MISC(PIPE_A));
> +	}
> +
> +	/* Enable normal pixel sending for FDI */
> +	intel_de_write(dev_priv, DP_TP_CTL(PORT_E),
> +		       DP_TP_CTL_FDI_AUTOTRAIN |
> +		       DP_TP_CTL_LINK_TRAIN_NORMAL |
> +		       DP_TP_CTL_ENHANCED_FRAME_ENABLE |
> +		       DP_TP_CTL_ENABLE);
> +}
> +
>  void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i=
915/display/intel_fdi.h
> index a9cd21663eb8..5fd65f67eda8 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.h
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.h
> @@ -9,6 +9,11 @@
>  struct drm_i915_private;
>  struct intel_crtc;
>  struct intel_crtc_state;
> +struct intel_encoder;
> +struct ddi_buf_trans;
> +
> +const struct ddi_buf_trans *
> +intel_fdi_get_buf_trans(struct drm_i915_private *dev_priv, int *n_entrie=
s);
>  =

>  #define I915_DISPLAY_CONFIG_RETRY 1
>  int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
> @@ -18,5 +23,7 @@ void ilk_fdi_disable(struct intel_crtc *crtc);
>  void ilk_fdi_pll_disable(struct intel_crtc *intel_crtc);
>  void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state);
>  void intel_fdi_init_hook(struct drm_i915_private *dev_priv);
> +void hsw_fdi_link_train(struct intel_encoder *encoder,
> +			const struct intel_crtc_state *crtc_state);
>  =

>  #endif
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
