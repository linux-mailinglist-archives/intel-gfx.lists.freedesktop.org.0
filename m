Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2449C2F64FA
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 16:46:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 828F66E42D;
	Thu, 14 Jan 2021 15:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E56BA6E42D
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 15:46:02 +0000 (UTC)
IronPort-SDR: fizLDkl7h6RcKGoeFqHP6qbDBjx7o9Iybwf/j7cYopmC0+9/80Ai/DWucEsLkoMFwyF+cFTdcB
 CY0XJnT3GNIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="239933067"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="239933067"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 07:46:01 -0800
IronPort-SDR: Gsg0n/KL8nr6ji5ie5SEeGIWZEAQM8XWgNRDbeIxdnXqpSuaR5bQtjlI420Ps/SFPJtQKBbiJx
 KHEeoZmv5lGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="353944608"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 14 Jan 2021 07:45:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Jan 2021 17:45:58 +0200
Date: Thu, 14 Jan 2021 17:45:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YABnNgKI098wmPa6@intel.com>
References: <cover.1610622609.git.jani.nikula@intel.com>
 <ecaa0ad261fff8ab8a20f72249f3a3f37c2dfa2b.1610622609.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ecaa0ad261fff8ab8a20f72249f3a3f37c2dfa2b.1610622609.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 05/11] drm/i915: migrate hsw fdi code to new
 file.
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

On Thu, Jan 14, 2021 at 01:13:49PM +0200, Jani Nikula wrote:
> From: Dave Airlie <airlied@redhat.com>
> =

> Daniel asked for this, but it's a bit messy and I'm not sure
> how best to clean it up yet.
> =

> Signed-off-by: Dave Airlie <airlied@redhat.com>
> [Jani: also moved fdi buf trans to intel_fdi.c.]
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

I guess this is ok. Although the code is pretty ddi'ish.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_crt.c |   1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c | 151 ++---------------------
>  drivers/gpu/drm/i915/display/intel_ddi.h |   8 +-
>  drivers/gpu/drm/i915/display/intel_fdi.c | 139 +++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_fdi.h |   3 +
>  5 files changed, 156 insertions(+), 146 deletions(-)
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
> index 1caf643e6400..61ac1e1b7b55 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -36,10 +36,11 @@
>  #include "intel_ddi_buf_trans.h"
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
> @@ -90,8 +91,8 @@ static int intel_ddi_hdmi_level(struct intel_encoder *e=
ncoder,
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
> @@ -153,8 +154,8 @@ static void intel_prepare_hdmi_ddi_buffers(struct int=
el_encoder *encoder,
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
> @@ -182,7 +183,7 @@ static void intel_wait_ddi_buf_active(struct drm_i915=
_private *dev_priv,
>  			port_name(port));
>  }
>  =

> -static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
> +u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
>  {
>  	switch (pll->info->id) {
>  	case DPLL_ID_WRPLL1:
> @@ -242,144 +243,6 @@ static u32 icl_pll_to_ddi_clk_sel(struct intel_enco=
der *encoder,
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
> -	int n_entries;
> -
> -	intel_ddi_get_buf_trans_fdi(dev_priv, &n_entries);
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
> -	for (i =3D 0; i < n_entries * 2; i++) {
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
> -		if (i =3D=3D n_entries * 2 - 1) {
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
> index a4dd815c0000..f9a916cad7e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> @@ -17,6 +17,7 @@ struct intel_crtc_state;
>  struct intel_dp;
>  struct intel_dpll_hw_state;
>  struct intel_encoder;
> +struct intel_shared_dpll;
>  enum transcoder;
>  =

>  i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
> @@ -27,8 +28,11 @@ void intel_ddi_fdi_post_disable(struct intel_atomic_st=
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
> index b2eb96ae10a2..77df675e607e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -3,6 +3,8 @@
>   * Copyright =A9 2020 Intel Corporation
>   */
>  #include "intel_atomic.h"
> +#include "intel_ddi.h"
> +#include "intel_ddi_buf_trans.h"
>  #include "intel_display_types.h"
>  #include "intel_fdi.h"
>  =

> @@ -550,6 +552,143 @@ static void ivb_manual_fdi_link_train(struct intel_=
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
> +	int n_entries;
> +
> +	intel_ddi_get_buf_trans_fdi(dev_priv, &n_entries);
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
> +	for (i =3D 0; i < n_entries * 2; i++) {
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
> +		if (i =3D=3D n_entries * 2 - 1) {
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
> index a9cd21663eb8..af01d2c173a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.h
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.h
> @@ -9,6 +9,7 @@
>  struct drm_i915_private;
>  struct intel_crtc;
>  struct intel_crtc_state;
> +struct intel_encoder;
>  =

>  #define I915_DISPLAY_CONFIG_RETRY 1
>  int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
> @@ -18,5 +19,7 @@ void ilk_fdi_disable(struct intel_crtc *crtc);
>  void ilk_fdi_pll_disable(struct intel_crtc *intel_crtc);
>  void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state);
>  void intel_fdi_init_hook(struct drm_i915_private *dev_priv);
> +void hsw_fdi_link_train(struct intel_encoder *encoder,
> +			const struct intel_crtc_state *crtc_state);
>  =

>  #endif
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
